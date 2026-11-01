from pathlib import Path
import hashlib,json
from unicorn import Uc,UC_ARCH_ARM64,UC_MODE_ARM
from unicorn.arm64_const import UC_ARM64_REG_SP,UC_ARM64_REG_X22,UC_ARM64_REG_X23
ROOT=Path(__file__).resolve().parent.parent
binary=(ROOT/'decrypted-binaries/SpektraLab').read_bytes()
encoded=(ROOT/'ipa-inspection/EngineResources/kernels.bin').read_bytes()
mask=(1<<64)-1
key=bytes(a^b for a,b in zip(binary[0x9c1ee8:0x9c1f08],binary[0x9c1f08:0x9c1f28]))
state=0xcbf29ce484222325
for b in key:state=((state^b)*0x100000001b3)&mask
plain=bytearray(encoded)
for start in range(0,len(plain),8):
 state=(state+0x9e3779b97f4a7c15)&mask
 z=state;z=((z^(z>>30))*0xbf58476d1ce4e5b9)&mask
 z=((z^(z>>27))*0x94d049bb133111eb)&mask;z^=z>>31
 for j in range(min(8,len(plain)-start)):plain[start+j]^=(z>>(8*j))&255
# Independent check: execute the actual extracted ARM64 decoder, including seed derivation.
uc=Uc(UC_ARCH_ARM64,UC_MODE_ARM)
uc.mem_map(0x100000000,(len(binary)+4095)&~4095);uc.mem_write(0x100000000,binary)
uc.mem_map(0x200000000,0x10000);uc.reg_write(UC_ARM64_REG_SP,0x200008000)
uc.mem_map(0x300000000,(len(encoded)+4095)&~4095);uc.mem_write(0x300000000,encoded)
uc.reg_write(UC_ARM64_REG_X22,0x300000000);uc.reg_write(UC_ARM64_REG_X23,len(encoded))
uc.emu_start(0x100910978,0x100910cf4,count=10000000)
actual=bytes(uc.mem_read(0x300000000,len(encoded)))
assert actual==plain,'Independent ARM64 execution differs'
text=bytes(plain).decode('utf-8',errors='replace')
out=ROOT/'core-comparison/recovered-kernels.bin';out.write_bytes(plain)
report={'input_sha256':hashlib.sha256(encoded).hexdigest(),'executable_sha256':hashlib.sha256(binary).hexdigest(),'output_sha256':hashlib.sha256(plain).hexdigest(),'bytes':len(plain),'lines':len(text.splitlines()),'algorithm':'XOR of two 32-byte executable constants; FNV-1a-64 seed; SplitMix64 XOR stream, little-endian bytes','decoder_address_start':'0x100910978','decoder_address_end_exclusive':'0x100910cf4','key_constant_addresses':['0x1009c1ee8','0x1009c1f08'],'independent_actual_arm64_emulation_matches':True}
(ROOT/'core-comparison/kernel-recovery.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2));print(bytes(plain)[:64].hex())
