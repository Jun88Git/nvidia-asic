# Mock Written Test A — NVIDIA-Style ASIC Physical Design

## Structure
- 选择题 15 题
- 判断/填空 10 题
- 简答题 10 题
- 分析题 5 题
- 建议时长：90 分钟

## Section 1 选择题
1. setup violation 本质上检查的是哪类延迟边界？
2. hold violation 最常见在哪类工况下更敏感？
3. CTS 的主要目标不包括哪一项？
4. false path 使用的前提是什么？
5. utilization 过高最直接的风险是什么？
6. 哪种手段更常用于修复 hold？
7. IR drop 最直接影响哪类签核风险？
8. LVS 的主要作用是什么？
9. blocking assignment 与 non-blocking assignment 的典型使用场景分别是什么？
10. 两级同步器主要解决什么问题？
11. high-fanout net 的常见物理后果是什么？
12. metal fill 为什么可能影响 timing？
13. 多 VT 策略里，HVT 的主要价值是什么？
14. ECO 最重要的原则是什么？
15. grep/awk/sed 在 PD 流程里最常见的用途是什么？

## Section 2 判断/填空
16. skew 越小越好。 （判断并说明）
17. false path 只要路径很难过时序，就可以加。 （判断并说明）
18. hold 修复通常会让 ______ 风险上升。
19. P 动态功耗近似与 ______、______、______、______ 有关。
20. OCV 的目的之一是更真实反映 ______ 对时序的影响。
21. DRC 通过就能证明芯片功能一定正确。 （判断并说明）
22. clock gating 降功耗的同时，会增加 ______ 和 ______ 复杂度。
23. IR drop 严重区域通常优先检查 ______ 和 ______。
24. CDC 不能只靠 ______ 覆盖。
25. late ECO 最怕引入新的 ______ 和 ______ 回归。

## Section 3 简答题
26. 请简述 floorplan 初期最关键的 4 个决策。
27. 请比较 setup 修复和 hold 修复的常用手段及副作用。
28. pin assignment 为什么会影响 timing 与 routability？
29. 为什么 advanced node 下 IR/EM 更敏感？
30. 简述 MCMM 收敛的难点。
31. 为什么说约束质量决定 timing 分析可信度？
32. 讲出 3 类常见 congestion 根因。
33. 为什么 antenna violation 不能忽视？
34. UPF 场景下常见的三个物理实现单元是什么？
35. 你会如何用 Tcl/Python 提高报表分析效率？

## Section 4 分析题
36. 一个 block 在 placement 后局部拥塞严重，请给出排查顺序。
37. 一个模块 CTS 后 hold 大量恶化，请给出优先怀疑项和修复策略。
38. 如果某区域 IR drop 爆红，但 timing 也很紧，你如何排序动作？
39. 某条路径 slow corner setup fail、fast corner hold 也 fail，你如何组织修复？
40. 临近 tapeout 做 ECO 时，如何控制变更范围并验证风险？
