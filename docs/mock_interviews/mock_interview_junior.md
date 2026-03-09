# Mock Interview Script — Junior / 初中级场景（45 分钟）

## Goal

- 验证候选人是否具备 `ASIC Physical Design` 基础概念、排障思路与项目表达能力。

## Interview Flow

1. 自我介绍（3 分钟）
2. 流程与基础题（10 分钟）
3. STA / CTS / Floorplan（15 分钟）
4. 项目深挖（10 分钟）
5. 反问（7 分钟）

## Script

- Interviewer: 请用 2 分钟介绍你参与过的后端项目。  
  Candidate signal: 能清楚说出工艺、模块规模、职责边界、PPA或signoff指标。
- Interviewer: 从 RTL 到 GDS 请你过一遍流程。  
  Candidate signal: 不漏掉 synthesis、floorplan、place、CTS、route、signoff、ECO。
- Interviewer: setup 和 hold 的区别是什么？  
  Candidate signal: 能从最大/最小延迟、检查条件、修复手段差异讲清楚。
- Interviewer: congestion 的常见根因有哪些？  
  Candidate signal: 至少能覆盖 floorplan、macro、pin、utilization、netlist。
- Interviewer: skew、latency、insertion delay 分别是什么？  
  Candidate signal: 定义正确，知道为什么 skew 不是越小越好。
- Interviewer: 讲一个你修 timing 的案例。  
  Candidate signal: 有定位路径、操作动作、验证结果，不只是口号。
- Interviewer: Tcl 或 Python 你做过什么自动化？  
  Candidate signal: 能说出输入、输出、收益，而不是泛泛而谈。
- Interviewer: 你如何和 STA / 前端协作处理约束争议？  
  Candidate signal: 有证据驱动、对比报告、闭环意识。

## Evaluation Rubric

- Strong: 基础概念准、项目细节真实、能说清排查路径
- Medium: 概念基本对，但案例深度一般
- Weak: 只会背定义，落不到工程动作
