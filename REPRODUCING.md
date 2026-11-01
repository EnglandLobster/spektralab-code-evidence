# 复核方法

## 阅读已有证据

无需连接手机。各证据页链接到公开源码、iOS 指令或 AIR、复现脚本和 JSON 结果。原始源码保留固定提交；iOS 地址基于所记录样本，不含 ASLR 滑移。

## 重新执行

仓库不包含完整 App。CPU 脚本导入 `macho_inspect.py` 时读取 `decrypted-binaries/SpektraLab`；需自行提供同一合法取得的样本，并核对 README 中 SHA-256。缺少样本时脚本不会运行。

历史环境记录：Python 3.14.6、NumPy 2.5.4、Capstone 5.0.9、Unicorn 2.1.4、SciPy，以及 Apple clang 16 / macOS Command Line Tools；未完整锁定所有依赖版本。GPU AIR 测试是在 Mac CPU 上编译执行，不是手机 GPU 实测。

在仓库工作副本中安装依赖并提供样本后，可使用：

```sh
python3 core-comparison/arm64_core_probe.py
python3 core-comparison/direct_upstream_round2.py
python3 core-comparison/probe_engineering_evidence.py
```

脚本会写入结果文件；请在工作副本运行，并对照记录结果，不覆盖唯一档案。脚本中编译器、动态库路径等仍沿用原 macOS 分析环境，外部复现需检查脚本依赖。本次仓库整理仅验证文件、引用和完整性，没有重新执行模型比较。
