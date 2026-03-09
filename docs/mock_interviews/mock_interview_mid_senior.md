# Mock Interview Script — Mid/Senior / 中高级场景（60-75 分钟）

## Goal

- 验证候选人是否能独立负责 block 收敛，或在 top/block 级承担关键路径闭环。

## Core Questions

- 请讲一次你主导的 timing closure，如何排序 setup、hold、DRC、IR 风险？
- 如果 CTS 后 hold 大量恶化，你先怀疑哪些根因？
- 如何判断一个问题是 netlist、constraint 还是 floorplan 根因？
- advanced node 下为什么 IR/EM、variation、ECO 成本都会更敏感？
- 你如何在性能、功耗、面积冲突时向 manager 解释 trade-off？
- 讲一个 late ECO 导致连锁回归的案例。
- 你如何定义 block ready for signoff？
- 顶层集成时，哪些问题无法只靠 block owner 解决？

## Follow-up Probes

- 给我看你的决策顺序，而不是工具命令
- 如果上游不同意修改，你如何推动闭环
- 如果再来一次，你会提前预防什么
- 哪个指标最能代表你对项目的真实贡献

## Ideal Signals

- 会用数据和报告支撑判断
- 明白阶段目标，不会在错误时机优化错误指标
- 能把 PPA 与 signoff 放进统一决策框架
- 能体现 owner mindset，而不是只会执行 checklist
