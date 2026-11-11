import json
from pathlib import Path
import numpy as np
from PIL import Image
d=Path(__file__).resolve().parents[1]
rows=json.loads((d/'records/comparison.json').read_text())
def patches(f):
 a=np.asarray(Image.open(f).convert('RGB').resize((960,720),Image.Resampling.LANCZOS))
 return np.array([a[y*2-12:y*2+12,x*2-12:x*2+12].mean((0,1)) for y in [135,170,205,240] for x in [140,177,213,249,284,319]])
A=np.stack([patches(d/'ios'/('IMG_%s.JPG'%r['jpg'])) for r in rows])
B=np.stack([patches(d/'reference'/(r['film_id']+'.png')) for r in rows])
m=np.abs(A[:,None]-B[None,:]).mean((2,3))
out=['# iPhone 16 Pro 灯箱色卡对照','', '受测版本 SpektraLab 1.0.1（202610271810），参考 spektrafilm 提交 3bb2c2d。原片 IMG_5398.HEIC。用户按从左到右顺序切换胶片并导出；下表按此顺序关联文件，相纸按事后实机逐项复查看到的实际选择填写。','', 'iOS 原始输出是 JPEG。参考路径把 Display P3 原片用 ColorSync 转为 960×720 sRGB，关闭自动曝光和随机效果，其余使用上游默认值。App 输出缩至同尺寸。此为降采样和色卡比较；两条路径的 HEIC 解码、空间效果以及全部内部默认值未逐项对齐。','', '| JPG | 胶片 | 实机相纸 | 全图平均 RGB 绝对差 /255 | 24 色块平均 RGB 绝对差 /255 | 11 个候选中最接近的配方 | 实机截图 |','|---|---|---|---:|---:|---|---|']
for i,r in enumerate(rows):
 out.append(f"| {r['jpg']} | {r['film']} | {r['paper']} | {r['mean_abs_rgb_8bit']:.2f} | {m[i,i]:.2f} | {rows[m[i].argmin()]['film']} | [截图](ui/states/{r['state']}/screen.png) |")
out+=['','色块比较在 24 个色块各取中心 24×24 像素，先平均各块的 RGB，再对 72 个通道值的绝对差取平均。候选排名限定于本批 11 个参考配方。']
(d/'report.md').write_text('\n'.join(out)+'\n')
np.savetxt(d/'records/patch-mae-matrix.csv',m,delimiter=',',header=','.join(r['film'] for r in rows),comments='')
print('\n'.join(out[7:]))
print('top1',sum(m.argmin(1)==np.arange(11)),'exactrange',min(r['pixel_exact_pct'] for r in rows),max(r['pixel_exact_pct'] for r in rows))
