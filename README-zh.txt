阅读与复核说明

1. 双击 index.html 阅读总档案。00-summary-zh.txt 是同内容纯文本；evidence-index.json 是结构化索引。
2. reference-sources/ 为固定提交的公开源码及许可；core-comparison/ 为从 iOS 编译产物得到的汇编/AIR、测试脚本和已有结果。
3. history/ 保留分轮原报告。早期报告的来源推断与计数，以本总档案吸收 10 月 29 日开发者说明后的解读为准：内核统计从 23 扩展为 34，不累加；14 条长文本与 7 条自检文本有重叠，不累加；完整曲线和层索引测试属于同一模块。
4. 本次只整理与核验材料链接，没有重新运行模型比较。结果均注明既有测试的范围与数值；未合计“侵权概率”。
5. IPA 与完整 App 可执行文件仍在原证据目录，本阅读包不包含它们。CPU 复现脚本导入 macho_inspect.py 时会读取 decrypted-binaries/SpektraLab；脚本原有目录布局已保留，但外部复核需另行具备相同样本及依赖。本阅读包不是下载后无输入即可执行的测试发行包。
6. 已有本地环境：Python 3.14.6，NumPy 2.5.4，Capstone 5.0.9，Unicorn 2.1.4，SciPy；Apple clang 16 / Command Line Tools。C++ 编译使用 -std=c++17。只验证既有结果时无需连接手机。

已有完整本地证据目录的复现命令：
cd '.'
python3 core-comparison/arm64_core_probe.py
python3 core-comparison/direct_upstream_round2.py
python3 core-comparison/probe_engineering_evidence.py

上述命令会在原目录重新生成测试输出；如需保留当前记录，可先在完整证据的工作副本中复核。

原始加密 IPA：./SpektraLab-AppStore-original.ipa
解密主程序：./decrypted-binaries/SpektraLab
解密 IPA：./SpektraLab-1.0.1-decrypted.ipa
主程序 SHA-256：62c0343b402acbc35eaefc17108baf1c94336d62ee92ada656c7550603d7acff

许可与引用：原始公开代码保留原作者、注释和许可。iOS 代码片段为既有样本的技术分析材料。公司调查、账号登录、电话、设备密码和其它无关个人信息均不在该包范围。
