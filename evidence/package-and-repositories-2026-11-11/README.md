# 安装包说明文件与公开仓库状态 · 2026-11-11

[P01](../P01.md) 和 [P03](../P03.md) 的记录与脚本。

- `check.py`：读取 App Store 安装包和三个仓库的完整克隆，生成下列文件。只用 Python 标准库和 git。
- `record.json`：安装包及包内四个文件的哈希、说明文件的引文核对、profile 逐字节比对、提交查找结果、各分支和标签指向的提交、根提交。
- `PRODUCT_PROFILES_NOTICE-excerpt.md`、`desktop-NOTICE-fd891c6-excerpt.md`：iOS 说明文件与桌面文件中相互替换的段落。
- `clone-bundles.sha256`：2026-11-11 17:19 UTC 三个仓库完整克隆包（`git bundle --all`）的哈希。克隆包未上传。

复核：

```sh
git clone https://github.com/JamesQiu2005/SpektraLab
git clone https://github.com/JamesQiu2005/spektralab-engine
git clone https://github.com/andreavolpato/spektrafilm
python3 check.py <SpektraLab 1.0.1 .ipa> SpektraLab spektralab-engine spektrafilm
```

安装包不在本仓库中。仓库的分支和标签可能在克隆之后发生变化，`record.json` 中的 `refs` 是克隆时的状态。
