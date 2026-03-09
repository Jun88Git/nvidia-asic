# Methodology

## 采集口径

本仓库针对以下关键词进行公开资料筛选与归纳：

- `NVIDIA ASIC Physical Design Engineer interview`
- `NVIDIA physical design interview questions`
- `ASIC PD NVIDIA Glassdoor`
- `NVIDIA VLSI interview physical design`
- `NVIDIA PD engineer Reddit`

## 筛选标准

保留满足以下任一条件的来源：

- 直接提到 `NVIDIA` 与 `Physical Design / ASIC / VLSI / STA / PnR`
- 讨论内容与 `ASIC Physical Design Engineer` 面试流程、考点、岗位要求强相关
- 包含可提炼成复习题纲的公开问答线索

## 归纳原则

- 优先提炼高频技术域：`PnR`、`STA`、`CTS`、`Floorplan`、`Congestion`、`Power`、`IR/EM`、`Signoff`、`ECO`
- 将零散原始问题改写为标准化训练题，避免依赖单一来源表述
- 对不确定信息显式标注为“推断”或“来源讨论”

## 建议使用方式

- 校招/社招候选人：按主题刷题，再补工具链细节
- 面试教练/培训：可直接按模块生成模拟面试提纲
- 爬虫/数据库整理：可把 `source_index.csv` 继续扩展为 SQLite / JSONL 数据集
