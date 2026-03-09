#!/usr/bin/env bash
set -euo pipefail

out="data/written_test/nvidia_style_written_bank_216.md"
mkdir -p "$(dirname "$out")"

cat > "$out" <<'HEADER'
# NVIDIA-Style ASIC Physical Design Written Test Bank (216 Questions)

> 说明：本题库用于模拟 `NVIDIA ASIC Physical Design Engineer` 的公开可追溯笔试准备场景。
>
> 结构：`选择题风格 / 判断填空风格 / 简答题风格 / 时序与物理分析风格`。

## Coverage

- Total questions: `216`
- Format: `27 topics x 8 written-test angles`
- Difficulty: `校招 / 实习 / 初级社招` 
HEADER

TOPICS=$(cat <<'TOPICS'
数字电路基础|digital logic fundamentals|组合/时序逻辑、建立保持、毛刺与亚稳态是底层；回答要先讲定义再讲影响
Verilog基础|Verilog basics|要会阻塞非阻塞、组合时序always、综合语义和常见坑；笔试喜欢考细节
SystemVerilog与约束|SystemVerilog and constraints|知道logic、always_comb、assertion和随机约束边界；别混淆验证和综合语义
时钟与复位|clock and reset|重点看时钟质量、reset策略、恢复移除检查和大扇出处理；笔试常结合电路图
同步器与CDC|synchronizers and CDC|核心是亚稳态风险、跨域协议和不能只靠STA覆盖；常见两级同步和握手
综合基础|synthesis basics|关注面积、时序、功耗、DRV和mapping；要知道综合前后看什么报告
Floorplan|floorplanning|从利用率、宏块、通道、IO和PG入手；早期决策影响最大
Placement|placement|重点是线长、拥塞、合法化和时序的平衡；不能只看单一指标
拥塞|congestion|根因常来自宏块、pin、util、扇出和结构性热点；要会分层定位
CTS|clock tree synthesis|平衡skew、latency、功耗与hold风险；理解CTS前后分析差别
STA基础|STA basics|setup/hold、launch/capture、slack和uncertainty是高频必考
时序例外|timing exceptions|false path和multicycle必须有功能依据；错用比不用更危险
OCV与MCMM|OCV and MCMM|角落变异与多模式多工况同时收敛是先进设计常态；要体现优先级思维
Setup修复|setup fixing|upsize、buffer、Vt swap、logic change各有代价；要会讲副作用
Hold修复|hold fixing|常用delay cell、buffer、detour；要知道为何快角更敏感
功耗基础|power fundamentals|动态功耗和漏电功耗来源不同；低功耗策略各有实现代价
IR/EM|IR drop and EM|电源完整性和可靠性是签核底线；要知道根因、指标和修复方向
串扰与SI|crosstalk and signal integrity|邻线耦合改变延迟与噪声；要会讲victim/aggressor概念
DRC/LVS/Antenna|physical verification|工艺规则、连接一致性和天线效应是流片前底线；修复不能只靠背命令
ECO|engineering change order|强调最小变更、局部性、回归验证和风险控制；late ECO成本高
UPF低功耗|UPF low power|power domain、isolation、level shifter、retention是高频点；实现和验证都要兼顾
DFT基础|DFT fundamentals|scan、test mode、compression与test clocks会影响后端；笔试常考scan chain概念
Tcl脚本|Tcl scripting|EDA自动化常用；要会处理文件、循环、字符串和报告提取
Python脚本|Python scripting|适合日志解析、统计和回归比对；笔试常考字符串、文件和字典处理
Linux与调试|Linux and debugging|grep、awk、sed、find、sort、uniq和日志思维常见；重在工程效率
项目与协作|project and collaboration|笔试简答也会考项目表达、owner意识与跨团队闭环；要能结构化回答
先进工艺常识|advanced node awareness|变异、IR/EM、SI和ECO成本放大；比成熟工艺更看系统性思维
TOPICS
)

qid=1
emit_q() {
  topic_cn="$1"; topic_en="$2"; core="$3"; style="$4"
  case "$style" in
    1) kind="选择题风格"; cn="关于${topic_cn}，请给出一个笔试高频定义题，并写出正确结论。"; en="For ${topic_en}, give one common written-test definition question and the correct takeaway."; key="先写定义；再给唯一正确结论；${core}。" ;;
    2) kind="判断题风格"; cn="围绕${topic_cn}，请设计一个容易误判的判断题，并说明为什么。"; en="Design one true-or-false trap question for ${topic_en} and explain why it is tricky."; key="指出常见误区；给出正确判断依据；${core}。" ;;
    3) kind="填空题风格"; cn="如果把${topic_cn}出成填空题，最值得考的两个关键词是什么？"; en="If ${topic_en} is turned into a fill-in-the-blank question, which two keywords are worth testing most?"; key="给出两个关键词；解释它们为何最关键；${core}。" ;;
    4) kind="简答题风格"; cn="请用笔试简答题风格概括${topic_cn}的核心知识点。"; en="Summarize the core knowledge of ${topic_en} in a short-answer written-test style."; key="用2到4个要点概括；先原则后例外；${core}。" ;;
    5) kind="场景分析风格"; cn="如果${topic_cn}在实际设计中出问题，你会如何在笔试里写排查思路？"; en="If ${topic_en} causes an issue in real design, how would you write the debug path in a written test?"; key="按现象-根因-动作-验证回答；${core}。" ;;
    6) kind="计算/推导风格"; cn="请给出一个与${topic_cn}相关的计算或推导型笔试题思路。"; en="Give one calculation- or derivation-oriented written-test problem idea for ${topic_en}."; key="点出需要的公式或判断链；说明常见失分点；${core}。" ;;
    7) kind="易错点风格"; cn="${topic_cn}在笔试中最常见的失分点是什么？如何避免？"; en="What is the most common score-losing mistake in written tests for ${topic_en}, and how do you avoid it?"; key="指出典型错误；给出避免方法；${core}。" ;;
    8) kind="NVIDIA 风格延展"; cn="如果把${topic_cn}放到 NVIDIA 风格芯片/高性能 SoC 场景下，笔试答案应增加什么点？"; en="If ${topic_en} is discussed under an NVIDIA-style high-performance SoC context, what should be added to the written answer?"; key="增加性能、规模、并行、高频、signoff风控视角；${core}。" ;;
  esac
  printf "\n### W%03d\n- Type: %s\n- CN: %s\n- EN: %s\n- Answer points: %s\n" "$qid" "$kind" "$cn" "$en" "$key" >> "$out"
  qid=$((qid+1))
}

while IFS='|' read -r topic_cn topic_en core; do
  [ -z "$topic_cn" ] && continue
  printf "\n## %s / %s\n" "$topic_cn" "$topic_en" >> "$out"
  for style in 1 2 3 4 5 6 7 8; do
    emit_q "$topic_cn" "$topic_en" "$core" "$style"
  done
done <<EOF_TOPICS
$TOPICS
EOF_TOPICS

echo "Generated $out with $((qid-1)) questions"
