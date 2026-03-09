# Mock Written Test B — NVIDIA-Style OA / Written Test

## Structure
- 单选题 20 题
- 简答题 8 题
- 时序分析题 4 题
- 脚本/日志题 4 题
- 建议时长：100 分钟

## Topics
- RTL / Verilog
- STA / CTS
- Floorplan / Congestion
- IR / EM / Signoff
- Tcl / Python / Linux

## Questions
1. 解释阻塞赋值和非阻塞赋值的差异。
2. 什么是亚稳态，为什么不能被完全消除？
3. 为什么 multicycle path 不能随便使用？
4. 为什么高性能芯片更关注 top-level integration？
5. macro halo 的作用是什么？
6. CTS 后为什么可能出现大量 hold fail？
7. OCV 和 MCMM 分别解决什么问题？
8. 解释 dynamic power 与 leakage power 的区别。
9. 什么是 EM，为什么先进工艺更敏感？
10. metal fill 会对哪些签核维度产生影响？
11. 为什么说 buffer 不是万能修复手段？
12. 路径 setup fail 时，哪几类修复动作最常见？
13. 路径 hold fail 时，哪几类修复动作最常见？
14. 为什么 pin assignment 会决定后续布局质量？
15. 约束错误比 violation 本身更危险，为什么？
16. Tcl 在 EDA flow 中最典型的价值是什么？
17. Python 在报表分析中的典型价值是什么？
18. Linux 文本工具为什么是 PD 工程师常用能力？
19. 临近 tapeout 时，什么样的问题必须优先级最高？
20. 你如何定义一个 block 基本 ready for signoff？
21. 画出你认为合理的 congestion debug 路径。
22. 写出你理解的 setup/hold 修复冲突。
23. 说明 IR drop 的根因与缓解方向。
24. 说明 LVS 与 DRC 的区别。
25. 描述一个你会写进笔试卷的 CDC 场景题。
26. 描述一个 advanced node 下的 ECO 风险题。
27. 给出一个 Tcl 报告聚合脚本的核心思路。
28. 给出一个 Python 日志比对脚本的核心思路。
29. 已知数据路径 120ps、时钟偏斜 +20ps、uncertainty 30ps，说明 setup 余量思考方向。
30. 已知某 hold 路径极短且快角最差，说明修复顺序。
31. 某区域 route overflow 很高，但 utilization 一般，可能原因是什么？
32. 某路径 SI 导致 delay 漂移，可能是哪些耦合关系造成？
33. 写一个 `grep` / `awk` 思路，统计日志中的 violation summary。
34. 写一个 `sort` / `uniq` 思路，找最常出现的错误类型。
35. 如果 top 与 block timing 报告不一致，你会先查什么？
36. 如果 manager 要求你在功耗和频率中做选择，你会如何答题？
