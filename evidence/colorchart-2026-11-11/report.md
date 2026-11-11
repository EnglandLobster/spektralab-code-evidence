# iPhone 16 Pro 灯箱色卡对照

受测版本 SpektraLab 1.0.1（202610271810），参考 spektrafilm 提交 3bb2c2d。原片 IMG_5398.HEIC。用户按从左到右顺序切换胶片并导出；下表按此顺序关联文件，相纸按事后实机逐项复查看到的实际选择填写。

iOS 原始输出是 JPEG。参考路径把 Display P3 原片用 ColorSync 转为 960×720 sRGB，关闭自动曝光和随机效果，其余使用上游默认值。App 输出缩至同尺寸。此为降采样和色卡比较；两条路径的 HEIC 解码、空间效果以及全部内部默认值未逐项对齐。

| JPG | 胶片 | 实机相纸 | 全图平均 RGB 绝对差 /255 | 24 色块平均 RGB 绝对差 /255 | 11 个候选中最接近的配方 | 实机截图 |
|---|---|---|---:|---:|---|---|
| 5409 | Porta 400 | Porta Enduro | 2.77 | 1.81 | Porta 400 | [截图](ui/states/s020/screen.png) |
| 5410 | Gold 200 | Supera Enduro | 2.69 | 1.95 | Gold 200 | [截图](ui/states/s019/screen.png) |
| 5411 | Ectar 100 | Supera Enduro | 2.81 | 1.97 | Ectar 100 | [截图](ui/states/s018/screen.png) |
| 5412 | Pro 400H | Crystal Archiva II | 2.70 | 1.89 | Pro 400H | [截图](ui/states/s016/screen.png) |
| 5413 | Porta 160 | Porta Enduro | 2.68 | 1.71 | Porta 160 | [截图](ui/states/s015/screen.png) |
| 5414 | Porta 800 | Porta Enduro | 2.75 | 1.76 | Porta 800 | [截图](ui/states/s014/screen.png) |
| 5415 | Porta 800 +1 | Porta Enduro | 2.96 | 1.92 | Porta 800 +1 | [截图](ui/states/s013/screen.png) |
| 5416 | Porta 800 +2 | Porta Enduro | 3.17 | 2.04 | Porta 800 +2 | [截图](ui/states/s011/screen.png) |
| 5417 | Ultima 400 | Ultra Enduro | 2.74 | 1.84 | Ultima 400 | [截图](ui/states/s010/screen.png) |
| 5418 | C200 | Crystal Archiva II | 3.08 | 1.99 | C200 | [截图](ui/states/s009/screen.png) |
| 5419 | Extra 400 | Crystal Archiva II | 3.26 | 2.11 | Extra 400 | [截图](ui/states/s007/screen.png) |

色块比较在 24 个色块各取中心 24×24 像素，先平均各块的 RGB，再对 72 个通道值的绝对差取平均。候选排名限定于本批 11 个参考配方。
