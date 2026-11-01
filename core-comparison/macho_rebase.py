"""Apply the sample's DYLD_CHAINED_PTR_64_OFFSET rebases in emulator memory.

Layout follows Apple's mach-o/fixup-chains.h. Imported functions remain handled
by explicit stubs. The disk sample and executable instructions are unchanged.
"""
import struct
import macho_inspect as mi

def apply_rebases(machine):
    pos=32;fixoff=None
    for _ in range(struct.unpack_from('<I',mi.DATA,16)[0]):
        cmd,size=struct.unpack_from('<II',mi.DATA,pos)
        if cmd==0x80000034:fixoff=struct.unpack_from('<I',mi.DATA,pos+8)[0]
        pos+=size
    assert fixoff is not None
    version,starts_off,*_=struct.unpack_from('<7I',mi.DATA,fixoff)
    assert version==0
    starts=fixoff+starts_off;count=struct.unpack_from('<I',mi.DATA,starts)[0]
    records=[];bind_count=0
    for segidx in range(count):
        rel=struct.unpack_from('<I',mi.DATA,starts+4+4*segidx)[0]
        if not rel:continue
        header=starts+rel
        size,page_size,fmt,seg_offset,max_valid,page_count=struct.unpack_from('<IHHQIH',mi.DATA,header)
        assert fmt==6,('unsupported pointer format',fmt)
        for page in range(page_count):
            begin=struct.unpack_from('<H',mi.DATA,header+22+2*page)[0]
            if begin==0xffff:continue
            assert not begin&0x8000,'multi-start page requires explicit implementation'
            address=mi.BASE+seg_offset+page*page_size+begin
            while True:
                value=struct.unpack_from('<Q',mi.DATA,mi.offset(address))[0]
                next_offset=(value>>51)&0xfff
                if value>>63:
                    bind_count+=1
                else:
                    target=value&((1<<36)-1);high8=(value>>36)&255
                    rebased=mi.BASE+target+(high8<<56)
                    machine.uc.mem_write(address,struct.pack('<Q',rebased))
                    records.append({'address':hex(address),'encoded':hex(value),'rebased':hex(rebased)})
                if next_offset==0:break
                address+=4*next_offset
    return {'pointer_format':6,'rebases_applied':len(records),'unresolved_bind_slots':bind_count,'records':records}
