from pathlib import Path
import numpy as np
from PIL import Image
import json,hashlib
p=Path(__file__).resolve().parent
def rgb(f,resize=False):
 im=Image.open(f).convert('RGB')
 if resize: im=im.resize((960,720), Image.Resampling.LANCZOS)
 assert im.size==(960,720)
 return np.asarray(im).astype(float)
def patches(a):
 return np.array([a[2*y-12:2*y+12,2*x-12:2*x+12].mean((0,1)) for y in (135,170,205,240) for x in (140,177,213,249,284,319)])
def stats(a,b):
 e=a-b; c=patches(a)-patches(b)
 return {'rgb_mae':abs(e).mean(),'patch_mae':abs(c).mean(),'patch_bias_rgb':c.mean(0).tolist(),'exact_pct':100*(e==0).all(2).mean()}
ref=rgb(p.parent/'reference/fujifilm_pro_400h.png'); prev=rgb(p.parent/'ios/IMG_5412.JPG',True); a,b=[rgb(p/f'IMG_{n}.JPG') for n in (5421,5422)]
assert (p/'device-input.png').read_bytes()==(p.parent/'reference/input.png').read_bytes()
results=dict(input_sha256=hashlib.sha256((p/'device-input.png').read_bytes()).hexdigest(),original_HEIC_vs_reference=stats(prev,ref),shared_PNG_first_vs_reference=stats(a,ref),shared_PNG_second_vs_reference=stats(b,ref),repeat_iOS=stats(a,b))
print(json.dumps(results,indent=2));(p/'results.json').write_text(json.dumps(results,indent=2))
