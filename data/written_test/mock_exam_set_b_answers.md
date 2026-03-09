# Mock Written Test B — Answer Points

1. 阻塞赋值顺序执行，常用于组合描述；非阻塞赋值并行更新，常用于时序寄存器描述
2. 触发器进入不确定中间态；只能降低概率，不能从物理上完全消除
3. 因为它必须反映真实功能关系，否则会掩盖真实 timing 问题
4. 因为跨 block、封装、PG、时钟与长距离通路问题更集中在顶层暴露
5. 给宏块周围留出布线和布局缓冲空间
6. 短路径暴露、时钟树重构、skew 变化、快角放大
7. OCV 处理变异影响，MCMM 处理多模式多工况同时收敛
8. dynamic 来自切换活动；leakage 来自器件静态漏电
9. 电流密度导致金属迁移；先进工艺线更细、裕量更小
10. timing、SI、寄生提取相关结果
11. 会增加功耗、面积、拥塞，也可能伤害另一类时序
12. upsize、buffer、Vt swap、logic optimization、reroute
13. delay cell、buffer、detour、局部约束/树调整
14. 因为它决定数据流方向、线长、通道压力和后续可布通性
15. 因为会让好设计看坏，或让坏设计看起来没问题
16. 工具驱动、批处理、报告提取与流程胶水
17. 统计、解析、聚合、对比和可视化
18. 因为海量日志和报表必须依靠命令行高效处理
19. 影响功能正确性、可靠性和流片底线的问题
20. 关键 signoff 指标基本过线，风险可解释且回归完整
21. 先看热点位置，再看macro/pin/util/netlist/约束，最后验证动作有效性
22. 修 setup 常让路径更快，修 hold 常让路径更慢，两者天然有冲突
23. 根因是PG电阻、瞬态电流热点、布局不均等；缓解靠增强PG、降热点、优化布局
24. DRC 查工艺规则，LVS 查连接一致性
25. 例如异步信号跨域进入状态机控制逻辑，要求说明同步器或握手结构
26. 例如 late ECO 在 advanced node 下同时引入 timing、SI、DRC 回归风险
27. 读取多个 report，抽取 slack/area/power/violation count，输出汇总表
28. 对两版日志做字段提取、归类统计和差异比较
29. 需结合时钟周期、launch/capture 关系、时钟路径和 uncertainty 统一判断
30. 先确认约束与路径真实性，再局部加延时，控制 setup 副作用
31. pin access 差、局部通道不足、层资源受限、宏块边界拥堵
32. aggressor-victim 长并行耦合、切换方向与时序窗口重叠
33. 先 `grep` violation summary，再 `awk` 提取字段聚合统计
34. 先提取错误关键字，再 `sort | uniq -c | sort -nr`
35. 先查约束、mode/corner、寄生版本和 block/top 模型差异
36. 先说明产品目标与底线，再给出 trade-off 和数据化风险解释
