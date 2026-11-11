from pathlib import Path
import json
from functools import lru_cache
import numpy as np
from PIL import Image, ImageDraw, ImageFont, ImageCms
here=Path(__file__).resolve().parent
root=here.parent
paper='#F6F3EB'; ink='#152E2B'; green='#236754'; muted='#465C56'
rows=json.loads((root/'records/comparison.json').read_text())
centers=[(x*2,y*2) for y in (135,170,205,240) for x in (140,177,213,249,284,319)]
def read(path):
    return Image.open(path).convert('RGB').resize((960,720),Image.Resampling.LANCZOS)
def samples(path):
    a=np.asarray(read(path))
    return np.array([a[y-12:y+12,x-12:x+12].mean((0,1)) for x,y in centers])
a=np.stack([samples(root/'ios'/f"IMG_{r['jpg']}.JPG") for r in rows])
b=np.stack([samples(root/'reference'/f"{r['film_id']}.png") for r in rows])
m=abs(a[:,None]-b[None,:]).mean((2,3))
assert np.allclose(m,np.loadtxt(root/'records/patch-mae-matrix.csv',delimiter=',',skiprows=1))
assert np.array_equal(m.argmin(1),np.arange(11))
@lru_cache(None)
def font(size,bold):
    return ImageFont.truetype('/System/Library/Fonts/STHeiti '+('Medium' if bold else 'Light')+'.ttc',size)
def label(x,y,s,size=32,color=ink,bold=False,anchor='lt'):
    draw.text((x,y),s,font=font(size,bold),fill=color,anchor=anchor)
def page(n,title,sub):
    global im,draw
    im=Image.new('RGB',(1080,1440),paper);draw=ImageDraw.Draw(im)
    label(56,50,'spektrafilm   /   SpektraLab iOS',27,green,True)
    label(1024,50,f'{n} / 3',27,green,True,'rt')
    label(56,123,title,57,ink,True); label(56,217,sub,30,muted)
    draw.line((56,1346,1024,1346),fill='#B9C6BB',width=2)
    label(56,1371,'iPhone 16 Pro   ·   SpektraLab 1.0.1   /   spektrafilm 3bb2c2d',24,muted)
profile=ImageCms.ImageCmsProfile(ImageCms.createProfile('sRGB')).tobytes()
def save(name): im.save(here/name,icc_profile=profile)
page(1,'同一张色卡，取哪 24 个点？','同一张灯箱实拍原片，分别用 11 款胶片配方冲洗。')
photo=read(root/'reference/input.png');pd=ImageDraw.Draw(photo)
for x,y in centers:
    pd.rectangle((x-13,y-13,x+12,y+12),outline='black',width=3)
    pd.rectangle((x-12,y-12,x+11,y+11),outline='white',width=2)
im.paste(photo,(60,307))
label(60,1052,'白框 = 每个色块中心的 24 × 24 像素',38,ink,True)
label(60,1126,'两边的输出统一到 960 × 720，在相同坐标取样。',30)
label(60,1185,'每个白框先算红、绿、蓝均值，再比较两边相差多少。',30)
label(60,1264,'图中为 HEIC 原片转换的 sRGB 参考图。',25,muted)
save('01-sampling.png')
page(2,'两套软件冲洗后，逐块看颜色','Pro 400H 配方  /  以下每个方格都是一对实测均色。')
label(56,306,'每格左半  spektrafilm 原版',33,green,True)
label(570,306,'右半  SpektraLab iOS',33,green,True)
for i,(u,v) in enumerate(zip(b[3],a[3])):
    y=408+(i//6)*145;x=56+(i%6)*164
    for off,val in [(0,u),(77,v)]:
        draw.rectangle((x+off,y,x+off+76,y+105),fill=tuple(np.rint(val).astype(int)))
    label(x+77,y+111,f'{i+1:02}',21,muted,False,'mt')
diff=abs(a[3]-b[3]).mean()
label(56,1022,f'这一款平均相差 {diff:.2f} 个色阶',46,ink,True)
label(56,1110,'按照片顺序从左到右、从上到下排列；两半之间不加边线。',28)
label(56,1170,'24 个色块各比较 3 个通道，对 72 个绝对差取平均。',30)
label(56,1254,'两侧沿用各自导出图的 RGB 取样值，显示时四舍五入至整数。',25,muted)
save('02-paired-colours.png')
page(3,'11 款配方，哪一款最接近？','每张 iOS 输出都和全部 11 款原版结果比较，共 121 次。')
label(56,298,'行 = iOS 配方     列 = 原版配方编号（与左侧顺序相同）',28,green,True)
left=306;top=414;cw=65;ch=55
for j in range(11):label(left+j*cw+cw//2,top-29,f'{j+1:02}',25,muted,False,'mm')
for i,row in enumerate(rows):
    label(58,top+i*ch+ch//2,f"{i+1:02}   {row['film']}",26,ink,False,'lm')
    for j,val in enumerate(m[i]):
        x=left+j*cw;y=top+i*ch; best=j==m[i].argmin()
        draw.rectangle((x,y,x+cw-3,y+ch-3),fill=green if best else '#E6E9DF')
        label(x+cw//2-1,y+ch//2-1,f'{val:.1f}',23,'white' if best else muted,best,'mm')
label(56,1055,'绿色标出每行误差最小值，11 行全部落在对应配方。',31,ink,True)
label(56,1140,'264 组对应色块，RGB 平均绝对差为 1.91 / 255。',32)
label(56,1202,'换算成 8 位 RGB 量程的百分比，为 0.75%。',32,green,True)
label(56,1281,'表内单位为色阶，保留一位小数；排名和总体均值使用未舍入数据。',24,muted)
save('03-cross-comparison.png')

page(3,'11 款胶片，各自相差多少？','每款比较 24 个对应色块，按 8 位 RGB 量程换算。')
percentages=m.diagonal()/255*100
label(56,304,f'{percentages.mean():.2f}%',91,green,True)
label(451,348,'全部 264 组色块的平均差距',36,ink,True)
axis_left=340
axis_width=532
for tick in (0,0.5,1):
    x=axis_left+round(tick*axis_width)
    draw.line((x,514,x,1110),fill='#C5CEC4',width=2)
    label(x,478,f'{tick:g}%',24,muted,False,'mt')
for index,(row,percent) in enumerate(zip(rows,percentages)):
    y=540+index*54
    label(56,y,row['film'],30,ink,False,'lm')
    end=axis_left+round(axis_width*percent)
    draw.rectangle((axis_left,y-8,end,y+8),fill=green)
    label(1022,y,f'{percent:.2f}%',29,ink,True,'rm')
label(56,1165,'11 款配方的平均差距都在 0.67% 到 0.83% 之间。',33,ink,True)
label(56,1255,'每款取 72 个 RGB 通道均值的绝对差，求平均后除以 255。',26,muted)
save('03-per-film.png')
