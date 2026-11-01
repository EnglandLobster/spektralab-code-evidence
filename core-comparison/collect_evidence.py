from pathlib import Path
import json,re,struct,datetime
import macho_inspect as mi
root=Path(__file__).resolve().parent.parent
out=root/'core-comparison'
functions=json.loads((out/'air-functions.json').read_text())
refs=json.loads((root/'05-reference-source-manifest.json').read_text())['sources']
records=[]
for ref in refs:
 if not ref.get('metal_kernel_names'):continue
 text=(root/ref['local_path']).read_text()
 for name in ref['metal_kernel_names']:
  hit=next((f for f in functions if name in f['functions']),None)
  if not hit:continue
  body=re.search(r'kernel void '+name+r'\((.*?)\)\s*\{',text,re.S).group(1)
  args=re.findall(r'\b(\w+)\s*\[\[(?:buffer\(\d+\)|thread_position_in_grid)\]\]',body)
  ir=(out/hit['ir']).read_text()
  actual=re.findall(r'!"air.arg_name", !"([^"]+)"',ir)
  records.append({'kernel':name,'reference':ref['path'],'reference_commit':ref['commit'],'reference_arguments':args,'compiled_arguments':actual,'argument_names_and_order_match':args==actual,'ir':hit['ir']})
_,va,size,off=mi.TEXT
calls=[]
for i,(word,) in enumerate(struct.iter_unpack('<I',mi.DATA[off:off+size])):
 if word&0xfc000000!=0x94000000:continue
 imm=word&0x3ffffff
 if imm&0x2000000:imm-=1<<26
 addr=va+4*i
 if addr+4*imm==0x1008edf64:calls.append({'call_address':hex(addr),'caller_start':hex(mi.function(addr)[0])})
report={'date':'2026-10-29','sample':'SpektraLab iOS 1.0.1 build 202610271810','technical_assessment':'Strong implementation-level evidence of a shared implementation lineage with the GPL desktop engine and the upstream developer-exhaustion helper. Independent creation, permission and final legal classification require provenance/authorization evidence.','cpu_case':{'identified_function':'spk::print_curves_morph (identified by diagnostic literals, interface and control flow)','address_start':'0x1008edf64','address_end_exclusive':'0x1008eec84','callers':calls,'upstream_file':'src/spektrafilm/utils/morph_curves.py','upstream_commit':'3bb2c2d2801ff68b92019cf1dbcbb133d60832bc','upstream_lines':[152,203],'desktop_file':'engine/src/core/curves.cpp','desktop_commit':'fd891c6bc5eb350387602deb5c1ef9b6dcdab948','desktop_lines':[167,258],'implementation_matches':[{'choice':'abs(residual(0)) threshold 1e-12','binary_instructions':['0x1008ee664','0x1008ee67c'],'constant_address':'0x100991c58','constant_value':struct.unpack_from('<d',mi.DATA,0x991c58)[0]},{'choice':'lo=-0.25, hi=0.25, 12 attempts','binary_instructions':['0x1008ee684','0x1008ee688','0x1008ee68c']},{'choice':'same endpoint-zero checks, sign-change branch, then double both endpoints','binary_instructions':['0x1008ee6ac','0x1008ee6b8','0x1008ee6c0','0x1008ee6cc','0x1008ee6d0','0x1008ee6d4']},{'choice':'Brent root solver inlined with half-xtol=5e-11 and 200-iteration budget','binary_instructions':['0x1008ee974','0x1008ee9a8','0x1008eea00'],'half_tolerance_address':'0x1009c1410','half_tolerance_value':struct.unpack_from('<d',mi.DATA,0x9c1410)[0]}]},'shader_argument_comparison':records,'counts':{'recovered_metal_modules':len(functions),'selected_reference_kernels_present':len(records),'identical_argument_names_and_order':sum(r['argument_names_and_order_match'] for r in records)},'differences_observed':['iOS contains additional mobile-specific grain, halation and data-transfer kernels.','spk_highlight_headroom from the selected desktop nodes.metal is absent from the recovered iOS library.'],'scope':'No calculation of a whole-app code reuse percentage. No assumption that CC BY-SA profiles impose GPL obligations. No external complaint or comment submitted in this step.'}
(out/'implementation-evidence.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(report['counts']));print('Morph callers:',calls)
print('Argument mismatches:',[(r['kernel'],r['reference_arguments'],r['compiled_arguments']) for r in records if not r['argument_names_and_order_match']])
