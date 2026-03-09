# Topic Index for NVIDIA ASIC Physical Design Engineer

## A. 流程全景

- RTL to GDSII 全流程
- synthesis / place / CTS / route / signoff / ECO
- block level 与 top level 的边界

## B. Floorplan 与布局规划

- utilization 设定
- macro placement
- halo / channel / blockage
- pin assignment
- power grid 早期规划

## C. Placement / Congestion / Routability

- global placement 与 detailed placement
- congestion 形成原因
- density、cell padding、spare cell、blockage 调优
- 可布通性与 timing 的冲突

## D. Clock Tree Synthesis

- skew / latency / insertion delay
- useful skew
- clock gating 对 CTS 的影响
- CTS 前后 timing 模型变化

## E. Static Timing Analysis

- setup / hold / recovery / removal
- OCV / AOCV / POCV 基本理解
- uncertainty / derate / exceptions
- path group / critical path / slack

## F. Timing Closure

- data path 优化
- buffering / upsizing / Vt swap
- logic restructuring 与 ECO
- setup 与 hold 冲突的处理顺序

## G. Power / IR / EM / SI

- dynamic / leakage power
- IR drop 根因与缓解
- electromigration 基本机制
- coupling noise / crosstalk 对 timing 的影响

## H. DRC / LVS / Antenna / Signoff

- signoff 检查项
- metal fill 影响
- antenna 修复方法
- 工艺规则与物理验证闭环

## I. 脚本与工程能力

- Tcl / Python / Shell
- report 分析自动化
- 批量 debug 思维
- 流程搭建与日志追踪

## J. 项目深挖与行为面

- 最难 timing bug
- 最严重 congestion case
- ECO 回归流程
- 多团队协作与 tapeout 节点推进
