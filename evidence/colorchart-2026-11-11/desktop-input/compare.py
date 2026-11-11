from pathlib import Path
import sys,json
import numpy as np
from PIL import Image
from spektrafilm import init_params,simulate
d=Path(__file__).resolve().parent
def im(path):return np.array(Image.open(path).convert('RGB')).astype(float)
def patches(a):return np.array([a[2*y-12:2*y+12,2*x-12:2*x+12].mean((0,1)) for y in (135,170,205,240) for x in (140,177,213,249,284,319)])
def delta(a,b):
 e=patches(a)-patches(b)
 return dict(patch_mae=abs(e).mean(),bias=e.mean(0).tolist(),frame_mae=abs(a-b).mean())
ios=im(d.parent/'shared-input/IMG_5421.JPG')
old=im(d.parent/'reference/fujifilm_pro_400h.png')
src=np.fromfile(sys.argv[1],np.float32).reshape(720,960,4)[:,:,:3].astype(float)
assert np.corrcoef(src[:,:,1].ravel(),im(d.parent/'reference/input.png')[:,:,1].ravel())[0,1]>.85
p=init_params('fujifilm_pro_400h','fujifilm_crystal_archive_typeii');p.camera.auto_exposure=False
p.io.input_color_space='ProPhoto RGB';p.io.input_cctf_decoding=False;p.io.output_color_space='sRGB';p.io.output_cctf_encoding=True;p.debug.deactivate_stochastic_effects=True
new=np.rint(np.clip(simulate(src,p),0,1)*255);Image.fromarray(new.astype('uint8')).save(d/'pro400h-desktop-input.png')
r=dict(ios_minus_old=delta(ios,old),ios_minus_desktop_input=delta(ios,new),desktop_input_minus_old=delta(new,old))
print(json.dumps(r,indent=2));(d/'results.json').write_text(json.dumps(r,indent=2))
