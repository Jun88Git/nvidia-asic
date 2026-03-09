# NVIDIA ASIC Physical Design Engineer Interview Bank

一个面向 `NVIDIA / ASIC Physical Design Engineer` 岗位的公开面经与题库整理仓库。

## 项目目标

- 收集公开网络来源中与 `ASIC Physical Design / Physical Design Engineer / RTL-to-GDS / PnR / STA / Signoff` 相关的英伟达面经与题目线索。
- 将分散信息整理为可复习、可追溯、可持续补充的本地资料库。
- 形成适合放在 GitHub 的目录结构、文档说明、分类标签与来源索引。

## 当前内容

- `5` 个公开来源摘要卡片
- `530` 道中英双语题库题目
- 每题附 `standard answer points`
- `3` 份模拟面试脚本（Junior / Mid-Senior / Bilingual Panel）
- 可复用生成脚本 `scripts/generate_bilingual_bank.sh`

## 说明

- 本仓库优先保存：`来源索引`、`主题分类`、`归纳题库`、`可追溯链接`。
- 对第三方网站内容，仅保存必要元数据、简短摘录与归纳总结，避免直接镜像受版权或网站条款限制的全文。
- `data/bank/bilingual_question_bank_530.md` 中的题目为**基于公开来源高频主题归纳生成**，用于训练与复习，并不声称是逐字原题。

## 目录结构

- `docs/methodology.md`：采集方法、筛选口径、使用方式
- `docs/legal_notes.md`：版权、引用、再分发边界说明
- `docs/github_guide.md`：GitHub 展示与后续里程碑建议
- `docs/mock_interviews/`：模拟面试脚本
- `data/sources/source_index.csv`：来源总表
- `data/sources/*.md`：单来源摘要卡片
- `data/bank/topic_index.md`：岗位知识域分类
- `data/bank/question_bank_curated.md`：60 道精选题
- `data/bank/bilingual_question_bank_530.md`：530 道中英双语题库
- `scripts/generate_bilingual_bank.sh`：题库生成脚本
- `CONTRIBUTING.md`：贡献规范

## 使用建议

1. 先看 `data/bank/topic_index.md` 建立知识框架。
2. 再刷 `data/bank/question_bank_curated.md` 抓核心高频题。
3. 接着使用 `data/bank/bilingual_question_bank_530.md` 做系统训练。
4. 最后使用 `docs/mock_interviews/` 做模拟面试。

## GitHub 展示建议

- 仓库名建议：`nvidia-asic-pd-interview-bank`
- 可打标签：`nvidia` `asic` `physical-design` `sta` `cts` `pnr` `vlsi`
- README 首页突出：`530 bilingual questions + standard answer points + mock interview scripts`

## 后续可扩展

- 增加标准答案详解版与评分 rubric
- 增加 SQLite / JSON 数据导出
- 增加 top-level / advanced-node / low-power 专项问答包
