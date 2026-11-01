from pathlib import Path
import struct,bisect,sys
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
ROOT=Path(__file__).resolve().parent.parent
DATA=(ROOT/'decrypted-binaries/SpektraLab').read_bytes()
BASE=0x100000000
sections=[];segments=[];functions=[]
pos=32
for _ in range(struct.unpack_from('<I',DATA,16)[0]):
 cmd,sz=struct.unpack_from('<II',DATA,pos)
 if cmd==0x19:
  seg=DATA[pos+8:pos+24].split(b'\0')[0].decode();va,vs,off,fs=struct.unpack_from('<4Q',DATA,pos+24)
  segments.append((seg,va,vs,off,fs))
  n=struct.unpack_from('<I',DATA,pos+64)[0]
  for j in range(n):
   p=pos+72+j*80;name=DATA[p:p+16].split(b'\0')[0].decode();a,s,o=struct.unpack_from('<QQI',DATA,p+32)
   sections.append((name,a,s,o))
 if cmd==0x26:
  off,size=struct.unpack_from('<II',DATA,pos+8);addr=BASE;num=0;shift=0
  for b in DATA[off:off+size]:
   num|=(b&127)<<shift
   if b&128:shift+=7;continue
   if num==0:break
   addr+=num;functions.append(addr);num=0;shift=0
 pos+=sz
TEXT=next(x for x in sections if x[0]=='__text')
def offset(va):
 for _,a,_,o,s in segments:
  if a<=va<a+s:return o+va-a
 raise ValueError(hex(va))
def function(va):
 i=bisect.bisect_right(functions,va)-1
 return functions[i],functions[i+1] if i+1<len(functions) else TEXT[1]+TEXT[2]
def disasm(a,b):
 md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
 for ins in md.disasm(DATA[offset(a):offset(b-1)+1],a):print(f'{ins.address:#x}: {ins.mnemonic:8s} {ins.op_str}')
def xrefs(needle):
 targets=[];start=0
 while True:
  off=DATA.find(needle,start)
  if off<0:break
  targets.append(BASE+off);start=off+1
 pages={x&~4095 for x in targets}
 result=[]
 _,va,size,off=TEXT
 words=struct.unpack_from('<'+'I'*(size//4),DATA,off)
 for i,w in enumerate(words):
  if w&0x9f000000!=0x90000000:continue
  reg=w&31;imm=((w>>29)&3)|(((w>>5)&0x7ffff)<<2)
  if imm&(1<<20):imm-=1<<21
  page=((va+i*4)&~4095)+(imm<<12)
  if page not in pages:continue
  for j in range(i+1,min(i+13,len(words))):
   q=words[j]
   if q&0x7f000000==0x11000000 and (q>>5)&31==reg:
    value=page+(((q>>10)&4095)<<(12 if q&(1<<22) else 0))
    if value in targets:result.append((va+i*4,va+j*4,value,*function(va+j*4)))
 return result
if __name__=='__main__':
 if sys.argv[1]=='xref':
  for row in xrefs(sys.argv[2].encode()+b'\0'):print(' '.join(hex(x) for x in row))
 elif sys.argv[1]=='function':
  a,b=function(int(sys.argv[2],0));print('FUNCTION',hex(a),hex(b));disasm(a,b)
 elif sys.argv[1]=='disasm':disasm(int(sys.argv[2],0),int(sys.argv[3],0))
