# Curated Question Bank

> 说明：以下题目为基于公开来源高频主题整理生成的训练题，适合 `NVIDIA ASIC Physical Design Engineer` 岗位准备。

## 1. 流程与全局理解

1. 请从 RTL 到 GDS 描述一个完整的 ASIC physical design 流程，并说明每一步的输入输出。
2. synthesis 结束后你通常先看哪些报告，为什么？
3. block-level PD 与 top-level integration 的职责边界通常如何划分？
4. 什么情况下需要在物理实现阶段回推前端修改？
5. 你如何定义一个 block 已经达到可进入 signoff 的状态？

## 2. Floorplan

6. floorplan 初期最关键的 5 个决策是什么？
7. macro placement 不合理会带来哪些连锁问题？
8. channel 太窄和太宽分别会导致什么后果？
9. utilization 设高或设低各有什么代价？
10. pin assignment 对 timing 和 routability 有什么影响？
11. power grid 为什么要尽早考虑？如果晚了会发生什么？

## 3. Placement 与拥塞

12. 造成 congestion 的常见根因有哪些？
13. 你会如何区分是 floorplan 问题、placement 问题还是 netlist 问题？
14. 遇到局部热点拥塞时，你的排查顺序是什么？
15. density screen、blockage、padding 分别适合解决什么问题？
16. 为什么高扇出网络容易引发布局和时序问题？

## 4. CTS

17. skew、latency、insertion delay 分别是什么？
18. 为什么 skew 不是越小越好？什么是 useful skew？
19. CTS 前和 CTS 后做 timing 分析时，关注点有什么变化？
20. clock gating 会怎样影响 CTS、功耗和时序收敛？
21. 如果一个 block 在 CTS 后 hold 大量恶化，你会优先怀疑什么？

## 5. STA

22. setup violation 与 hold violation 的本质区别是什么？
23. 为什么修 setup 和修 hold 的手段常常相反？
24. OCV / AOCV / POCV 的核心思想分别是什么？
25. uncertainty 通常由哪些成分构成？
26. false path 和 multicycle path 应该在什么前提下使用？
27. 如果约束写错，最典型的误伤会是什么？
28. crosstalk 是如何影响 timing 的？

## 6. Timing Closure

29. setup 没过时你有哪些常见修复手段？请说明副作用。
30. hold 没过时你有哪些常见修复手段？请说明副作用。
31. 为什么通常先关注 hold 安全边界，再推进 setup closure？请结合阶段说明。
32. buffer insertion、cell upsizing、Vt swap 三种方法各适合什么场景？
33. 当时序、面积、功耗互相冲突时，你如何做 trade-off？
34. 你如何判断一个 violation 值得 ECO，而不是继续等待上游变化？

## 7. Power / IR / EM

35. dynamic power 与 leakage power 的来源分别是什么？
36. IR drop 的常见根因是什么？
37. 如果某一区域 IR drop 很严重，你会从哪些方向缓解？
38. electromigration 为什么会发生？和电流密度有什么关系？
39. 低功耗设计中的 multi-Vt、clock gating、power gating 在后端分别带来什么挑战？

## 8. Signoff / DRC / LVS

40. signoff 阶段你通常关注哪些报告与检查？
41. DRC 与 LVS 分别解决什么问题？
42. antenna violation 是什么，常见修复方法有哪些？
43. metal fill 为什么会影响 timing 和 SI？
44. tapeout 前最后一轮 ECO 最容易踩哪些坑？

## 9. 工具、脚本与自动化

45. 你最常用的 Tcl/Python 自动化脚本是什么？解决了什么痛点？
46. 如果让你写一个脚本自动汇总 timing 报告，你会提取哪些字段？
47. 如何快速定位一个失败 run 与前一版本相比的关键差异？
48. 你如何设计批量分析 flow，减少人工查 log 的时间？

## 10. 项目深挖

49. 讲一个你处理过的最棘手 setup/hold case。你如何定位、尝试、回滚和验证？
50. 讲一个最严重的 congestion 案例。根因是什么，最终怎么收敛？
51. 讲一次 late ECO 对时序或 DRC 造成连锁影响的经历。
52. 先进工艺节点下，哪些问题比成熟工艺更突出？
53. 如果项目已经临近 tapeout，但 PPA 仍未达标，你会如何排序问题优先级？

## 11. 行为与协作

54. 你如何与前端、STA、PV、功耗或 top integration 团队协作？
55. 当你认为约束或 netlist 本身有问题，但负责人不同意时，你如何推动闭环？
56. 如何向面试官说明你在项目中的真实贡献，而不是团队共同结果？
57. 如果两个 signoff 指标互相牵制，你如何与管理者沟通风险？

## 12. 补充能力题

58. Linux 中你最常用的排障命令有哪些？
59. 为什么 Physical Design 岗也会考脚本、日志分析和基础编程？
60. 如果让你入职后一个月内快速接手新 block，你会如何制定学习路径？
