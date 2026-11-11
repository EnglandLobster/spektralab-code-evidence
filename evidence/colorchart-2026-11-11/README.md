# 灯箱色卡对照 · 2026-11-11

同一张灯箱色卡原片，11 款胶片各使用实机默认绑定的相纸。对 264 组对应色块、792 对 RGB 通道均值取平均绝对差，结果为 **1.91 个色阶，占 8 位 RGB 量程的 0.75%**。单款范围为 0.67%–0.83%。这项指标描述色块输出。代码实现的对照见[仓库首页](../../README.md)。

[取样位置](chart-figures/01-sampling.png) · [Pro 400H 左右对色](chart-figures/02-paired-colours.png) · [11 款结果](chart-figures/03-per-film.png)

## 样本与测量

SpektraLab 1.0.1（202610271810），iPhone 16 Pro。原版使用 [spektrafilm 固定提交 3bb2c2d](https://github.com/andreavolpato/spektrafilm/tree/3bb2c2d2801ff68b92019cf1dbcbb133d60832bc)。[配方、输出文件与实机设置截图](report.md)按导出顺序关联。截图为缩小的阅读副本。

iOS 使用[灯箱 HEIC](original/IMG_5398.HEIC)。参考路径通过 ColorSync 将同一原片转换为 [960×720 sRGB PNG](reference/input.png)，关闭自动曝光和随机效果。将 11 张 iOS JPEG 缩至同样尺寸后，对每个色块中央 24×24 像素分别求 RGB 均值。每款统计 72 个通道均值的绝对差。[121 项交叉比较](records/patch-mae-matrix.csv)中，每行最小值均落在对应配方。原片与导出图的公开副本已剥离拍摄定位等元数据；校验清单对应公开文件。

## 复算

在本目录中使用安装了 NumPy、Pillow 的 Python 执行下列命令。第一条从 11 张 iOS 导出与 11 张参考 PNG 重建误差表，第二条复核 Pro 400H 同一 PNG 输入及两次 iOS 导出。

```sh
python3 reference/patches.py
python3 shared-input/measure.py
```

重新生成参考渲染时，先安装上述固定版本的 spektrafilm 及其依赖，再运行 `python3 reference/rerender.py`。可视化脚本在 [chart-figures](chart-figures/render.py)，使用 macOS 系统字体。

## Pro 400H 单独对照

[相同 PNG 输入复测](shared-input/results.json)中，两次 iOS 导出解码后逐像素一致。[桌面输入路径试验](desktop-input/results.json)使用线性 ProPhoto RGB。[桌面 Metal 引擎对照](desktop-input/metal-control.json)使用本地引擎构建，比对同一份线性 RGB 输入，与原版的色块均值平均绝对差为 0.000048 个色阶。这两项补充测试均限 Pro 400H。
