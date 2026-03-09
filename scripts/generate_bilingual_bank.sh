#!/usr/bin/env bash
set -euo pipefail

out="data/bank/bilingual_question_bank_530.md"
mkdir -p "$(dirname "$out")"

cat > "$out" <<'HEADER'
# NVIDIA ASIC Physical Design Engineer Bilingual Question Bank (530 Questions)

> 说明：本题库基于公开来源高频主题与岗位知识图谱整理生成，适用于 `NVIDIA ASIC Physical Design Engineer` 岗位复习、模拟面试与培训。
>
> Format: `CN question` + `EN question` + `Standard answer points`.

## Coverage

- Total questions: `530`
- Format: `53 topics x 10 interview angles`
- Focus: `Flow / Floorplan / Placement / CTS / STA / Timing Closure / IR-EM / Signoff / Low Power / Automation / Collaboration / Advanced Node`
HEADER

TOPICS=$(cat <<'TOPICS'
RTL to GDS流程|RTL-to-GDS flow|覆盖从综合到签核与ECO的全链路；强调每一步输入输出与收敛目标；回答时要体现工程顺序感
综合报告|synthesis reports|重点看timing、area、power、DRV与映射质量；能说明首轮判断优先级；把报告和后续PD风险关联起来
层次划分|hierarchical partitioning|说明block/top职责边界、接口复杂度与物理可实现性；强调复用和收敛；兼顾团队协作
Floorplan策略|floorplan strategy|先定芯片/模块形状、利用率、宏块、PG和IO；越早定大方向越省返工；注意timing与routability平衡
利用率|utilization|过高导致拥塞和难收敛；过低浪费面积并拉长线长；合理值取决于模块结构和工艺
宏块摆放|macro placement|关注数据流、通道、halo、软硬阻挡和pin可达性；减少长线和拥塞；为CTS与route留空间
通道与阻挡|channels and blockages|channel过窄影响布线，过宽浪费面积；blockage用于引导布局布线；要结合热点区域设置
Pin规划|pin assignment|pin位置影响跨区连线、拥塞、时序和集成；应匹配数据流方向；避免无序pin导致反复ECO
电源规划|power planning|早做power grid、strap、ring和via策略；直接影响IR/EM与后续布局空间；必须和floorplan联动
Placement|placement|目标是线长、拥塞、时序和可布通性的综合平衡；先全局后细化；与netlist质量强耦合
拥塞分析|congestion analysis|看全局/局部热点、overflow和routing demand；根因可能在floorplan、pin、macro、扇出或约束；定位要分层次
高扇出网络|high-fanout nets|会带来长线、拥塞和时序波动；需要buffer tree、clone或架构优化；不能只靠后端硬扛
CTS基础|clock tree synthesis|核心是平衡skew、latency、功耗和可制造性；CTS前后分析模型不同；要理解时钟网络不是越小越好
Useful skew|useful skew|通过调整时钟到达关系改善setup或hold；是受控利用而非放任偏斜；必须防止副作用扩散
时钟门控|clock gating|降低动态功耗，但会增加时钟树复杂度和检查项；要关注enable时序、test和CTS约束；回答需兼顾功耗与验证
Setup分析|setup analysis|本质是最大延迟检查；关键看发起/捕获关系、数据路径、时钟路径和uncertainty；负slack代表不满足目标频率
Hold分析|hold analysis|本质是最小延迟检查；常发生在快角和短路径；修复手段多会伤害setup或面积，需谨慎排序
时序例外|timing exceptions|false path和multicycle必须建立在设计意图上；错误例外会掩盖真实问题；面试时要强调验证闭环
OCV与变异|OCV and variation|说明process/voltage/temperature及局部变异影响；AOCV/POCV更精细；目的是更真实评估签核风险
MCMM|MCMM analysis|多个mode/corner同时收敛；不同case目标常冲突；回答应体现优先级、共享修复和迭代策略
Setup修复|setup fixing|常用upsize、buffer、Vt swap、重布线和逻辑优化；副作用是功耗、拥塞、hold变差；要讲取舍顺序
Hold修复|hold fixing|常用加delay cell、buffer、detour和约束优化；副作用是面积、功耗和setup恶化；要优先控制修复范围
ECO策略|ECO strategy|分清功能ECO与时序ECO；要有变更最小化、回归验证和风险控制；late ECO更看重局部性和可预测性
动态功耗|dynamic power|与开关活动、负载、电压和频率相关；主要靠clock/data优化；回答时可提P=alphaCV²f
漏电功耗|leakage power|与工艺、阈值电压和温度相关；multi-Vt是常见手段；先进工艺更敏感
IR Drop|IR drop|来源于电源网络电阻和瞬态电流；会影响时序与功能；缓解靠PG增强、去热点、降切换和布局优化
EM|electromigration|与电流密度和温度相关；长期可靠性问题；缓解靠加宽金属、并联via、分流和重构路径
串扰|crosstalk|邻线耦合会引起delay变化或glitch；与间距、长度、切换关系相关；需结合SI-aware分析与布线调整
DRC|DRC|检查是否违反工艺规则；不是功能正确性证明；修复要兼顾时序和可制造性
LVS|LVS|验证版图与原理图连接一致；用于发现开短路和连线错误；是流片前底线检查之一
Antenna|antenna effect|制造过程中电荷积累可能损伤栅氧；修复常见jump diode或改走线；要讲原理而非只背工具命令
Metal Fill|metal fill|用于满足密度规则；会改变寄生、影响timing和SI；应在签核环节联动提取与修复
UPF/低功耗|UPF and low power|涉及power domain、isolation、level shifter、retention；后端要兼顾实现和检查；跨域边界是重点
CDC|CDC|跨时钟域风险在亚稳态和协议错误；不能只靠STA覆盖；要提同步器、握手与结构约束
Reset设计|reset design|异步/同步reset各有利弊；后端关注扇出、恢复/移除检查和分布；大扇出reset常需专门处理
Tcl自动化|Tcl automation|Tcl是EDA流程胶水语言；重点是批处理、报告提取和工具驱动；回答时给出实际脚本场景更有说服力
Python分析|Python analytics|适合做报告聚合、日志解析、可视化和回归对比；价值在提高效率与减少人工误判；要体现工程产出
回归与对比|regression and diffing|关键是版本可追溯、指标对比和异常定位；回答时强调自动化和最小闭环；适合体现工程成熟度
日志排障|log debugging|先抓第一个致命报错，再看上下游依赖和变更；区分环境问题、输入问题和设计问题；要有系统性
项目讲述|project storytelling|回答应突出背景、目标、行动、结果和个人贡献；避免只讲团队功劳；尽量量化改善幅度
跨团队协作|cross-team collaboration|要讲接口清晰、问题升级路径和证据驱动；协作不是甩锅；强调闭环和风险同步
风险管理|risk management|说明如何识别高风险路径、模块和时间节点；用数据支持优先级；面试官看判断力和推进力
先进工艺|advanced nodes|变异、IR/EM、SI、制造规则和ECO成本更敏感；收敛窗口更窄；要体现和成熟工艺的差异
多VT策略|multi-Vt strategy|LVT利时序、HVT利漏电；要在功耗和收敛间平衡；常与关键路径分级处理结合
Top集成|top-level integration|关注block拼接、top timing、PG一致性、IO和跨block通路；问题往往不是单block可解；要有全局观
IO与封装|IO and package awareness|pad、bump、ESD、封装寄生会反向影响top timing与floorplan；高性能芯片更明显；回答可体现系统视角
DFT影响|DFT impact on PD|scan、test mode、compression和test clocks会改变时序与布线；PD需兼顾功能与测试收敛；别忽略case analysis
可靠性签核|reliability signoff|不仅有timing，还包括IR、EM、ESD、latch-up等边界；签核是多维度通过；回答要体现底线思维
PPA权衡|PPA trade-offs|performance、power、area三者互相牵制；没有单点最优；面试官想听你如何排序目标和解释代价
约束质量|constraint quality|约束错误会让好设计看坏或坏设计看好；SDC质量决定分析可信度；要强调review和相关性检查
库与工艺角|libraries and corners|不同库角反映快慢、温度和电压条件；要知道为何hold常看快角、setup常看慢角；回答要连到MCMM
缓冲策略|buffering strategy|buffer既能修时序也会增功耗和拥塞；插在哪、插多少、何时插都重要；别把buffer当万能药
数据路径优化|data path optimization|可从逻辑、门尺寸、布线、结构和pipeline多层面动手；关键是找到主导瓶颈；讲方法时要体现因果关系
TOPICS
)

question_id=1

emit_question() {
  topic_cn="$1"; topic_en="$2"; core="$3"; angle="$4"
  case "$angle" in
    1) cn="请解释${topic_cn}的定义、目标，以及它在面试岗位中的位置。"; en="Explain the definition and goal of ${topic_en}, and where it sits in the role scope."; key="先给清晰定义；再说明目标与流程位置；${core}。" ;;
    2) cn="为什么${topic_cn}重要？如果候选人理解不扎实，项目中会暴露什么问题？"; en="Why is ${topic_en} important, and what issues appear when someone lacks a solid grasp of it?"; key="说明它影响的核心指标；举出常见失效模式；${core}。" ;;
    3) cn="围绕${topic_cn}，你通常看哪些关键指标或报告？"; en="What key metrics or reports do you inspect for ${topic_en}?"; key="给出2到4个关键指标；说明各指标如何支持判断；${core}。" ;;
    4) cn="${topic_cn}相关问题的常见根因有哪些？请按优先级说明。"; en="What are the common root causes behind ${topic_en}-related issues? Prioritize them."; key="先列最常见根因；再区分设计、约束、物理和环境因素；${core}。" ;;
    5) cn="如果${topic_cn}出现异常，你的标准排查路径是什么？"; en="If ${topic_en} goes abnormal, what is your standard debug path?"; key="从复现到定位再到验证；先排输入和约束，再查实现细节；${core}。" ;;
    6) cn="你会如何优化${topic_cn}？请给出常见手段及副作用。"; en="How would you optimize ${topic_en}? Give common methods and side effects."; key="列出主流优化动作；说明收益与代价；${core}。" ;;
    7) cn="${topic_cn}与PPA、routability、signoff之间有哪些典型trade-off？"; en="What typical trade-offs exist between ${topic_en} and PPA, routability, or signoff?"; key="体现多目标冲突；说明如何排序优先级；${core}。" ;;
    8) cn="在${topic_cn}上，新人最常犯的错误是什么？你如何预防？"; en="What mistakes do beginners make most often in ${topic_en}, and how do you prevent them?"; key="说出高频误区；给出review或自动化防呆措施；${core}。" ;;
    9) cn="请举一个你会在面试中追问的${topic_cn}实战场景题，并给出标准答题框架。"; en="Give one practical interview scenario for ${topic_en} and the ideal answer framework."; key="采用问题-定位-动作-验证结构；回答要落到工程细节；${core}。" ;;
    10) cn="如果把${topic_cn}放到先进工艺、大规模SoC或临近tapeout场景下，回答会有什么升级点？"; en="How does your answer about ${topic_en} change for advanced nodes, large SoCs, or near-tapeout stages?"; key="突出规模效应、风险放大和ECO成本；体现阶段化思维；${core}。" ;;
  esac
  printf "\n### Q%03d\n" "$question_id" >> "$out"
  printf -- "- CN: %s\n" "$cn" >> "$out"
  printf -- "- EN: %s\n" "$en" >> "$out"
  printf -- "- Standard answer points: %s\n" "$key" >> "$out"
  question_id=$((question_id + 1))
}

while IFS='|' read -r topic_cn topic_en core; do
  [ -z "$topic_cn" ] && continue
  printf "\n## %s / %s\n" "$topic_cn" "$topic_en" >> "$out"
  for angle in 1 2 3 4 5 6 7 8 9 10; do
    emit_question "$topic_cn" "$topic_en" "$core" "$angle"
  done
done <<EOF_TOPICS
$TOPICS
EOF_TOPICS

echo "Generated $out with $((question_id - 1)) questions"
