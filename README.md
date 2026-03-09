# NVIDIA ASIC Physical Design Engineer Interview Bank

一个面向 `NVIDIA / ASIC Physical Design Engineer` 岗位的公开面经与题库整理仓库。

## 项目目标

- 收集公开网络来源中与 `ASIC Physical Design / Physical Design Engineer / RTL-to-GDS / PnR / STA / Signoff` 相关的英伟达面经与题目线索。
- 将分散信息整理为可复习、可追溯、可持续补充的本地资料库。
- 形成适合放在 GitHub 的目录结构、文档说明、分类标签与来源索引。

## 当前内容

- `5` 个面试/公开讨论来源摘要卡片
- `530` 道中英双语面试题库题目
- `216` 道 NVIDIA 风格笔试题
- `6` 条公开可追溯笔试来源索引
- `2` 份模拟笔试卷与答案要点
- `3` 份模拟面试脚本（Junior / Mid-Senior / Bilingual Panel）
- `2` 个可复用生成脚本（面试题库 / 笔试题库）

## 说明

- 本仓库优先保存：`来源索引`、`主题分类`、`归纳题库`、`可追溯链接`。
- 对第三方网站内容，仅保存必要元数据、简短摘录与归纳总结，避免直接镜像受版权或网站条款限制的全文。
- `data/bank/bilingual_question_bank_530.md` 中的题目为**基于公开来源高频主题归纳生成**，用于训练与复习，并不声称是逐字原题。

## 目录结构

- `docs/methodology.md`：采集方法、筛选口径、使用方式
- `docs/legal_notes.md`：版权、引用、再分发边界说明
- `docs/github_guide.md`：GitHub 展示与后续里程碑建议
- `docs/mock_interviews/`：模拟面试脚本
- `docs/written_test/`：笔试专区导航与说明
- `data/sources/source_index.csv`：面试来源总表
- `data/sources/*.md`：单来源摘要卡片
- `data/bank/topic_index.md`：岗位知识域分类
- `data/bank/question_bank_curated.md`：60 道精选题
- `data/bank/bilingual_question_bank_530.md`：530 道中英双语面试题库
- `data/written_test/source_index.csv`：笔试来源总表
- `data/written_test/public_traceable_written_sources.md`：笔试来源说明
- `data/written_test/nvidia_style_written_bank_216.md`：216 道笔试题库
- `data/written_test/mock_exam_set_a.md`：模拟笔试卷 A
- `data/written_test/mock_exam_set_a_answers.md`：模拟笔试卷 A 答案
- `data/written_test/mock_exam_set_b.md`：模拟笔试卷 B
- `data/written_test/mock_exam_set_b_answers.md`：模拟笔试卷 B 答案
- `scripts/generate_bilingual_bank.sh`：面试题库生成脚本
- `scripts/generate_written_bank.sh`：笔试题库生成脚本
- `CONTRIBUTING.md`：贡献规范

## 使用建议

1. 先看 `data/bank/topic_index.md` 建立知识框架。
2. 再刷 `data/bank/question_bank_curated.md` 抓核心高频题。
3. 接着使用 `data/bank/bilingual_question_bank_530.md` 做系统训练。
4. 如果准备笔试，进入 `docs/written_test/README.md`。
5. 最后使用 `docs/mock_interviews/` 做模拟面试。


## 详细目录导览

- `README.md`：仓库总览、导航入口与使用建议
- `CONTRIBUTING.md`：后续继续扩充来源、题库和脚本的贡献规范
- `docs/methodology.md`：公开来源收集与归纳方法
- `docs/legal_notes.md`：引用边界与版权说明
- `docs/github_guide.md`：GitHub 展示建议、topic 与里程碑
- `docs/mock_interviews/mock_interview_junior.md`：初中级模拟面试脚本
- `docs/mock_interviews/mock_interview_mid_senior.md`：中高级模拟面试脚本
- `docs/mock_interviews/mock_interview_bilingual_panel.md`：中英双语面试脚本
- `docs/written_test/README.md`：笔试专区的浏览入口与建议顺序
- `data/sources/source_index.csv`：面试/公开讨论来源索引
- `data/sources/SRC-*.md`：单来源摘要卡片
- `data/bank/topic_index.md`：Physical Design 岗位知识图谱
- `data/bank/question_bank_curated.md`：60 道精选核心题
- `data/bank/bilingual_question_bank_530.md`：530 道中英双语面试题
- `data/written_test/source_index.csv`：笔试公开来源索引
- `data/written_test/public_traceable_written_sources.md`：公开可追溯笔试来源说明
- `data/written_test/nvidia_style_written_bank_216.md`：216 道 NVIDIA 风格笔试题库
- `data/written_test/mock_exam_set_a.md`：模拟笔试卷 A
- `data/written_test/mock_exam_set_a_answers.md`：模拟笔试卷 A 答案要点
- `data/written_test/mock_exam_set_b.md`：模拟笔试卷 B
- `scripts/generate_bilingual_bank.sh`：530 题双语面试题库生成脚本
- `scripts/generate_written_bank.sh`：216 题笔试题库生成脚本

## GitHub 展示建议

- 仓库名建议：`nvidia-asic-pd-interview-bank`
- 可打标签：`nvidia` `asic` `physical-design` `sta` `cts` `pnr` `vlsi`
- README 首页突出：`530 interview questions + 216 written-test questions + mock exams + source index`

## 笔试专区

- `docs/written_test/README.md`：笔试专区导航
- `data/written_test/source_index.csv`：公开可追溯笔试来源索引
- `data/written_test/public_traceable_written_sources.md`：来源说明与使用边界
- `data/written_test/nvidia_style_written_bank_216.md`：216 道 NVIDIA 风格笔试题
- `data/written_test/mock_exam_set_a.md`：模拟卷 A
- `data/written_test/mock_exam_set_a_answers.md`：模拟卷 A 答案
- `data/written_test/mock_exam_set_b.md`：模拟卷 B
- `data/written_test/mock_exam_set_b_answers.md`：模拟卷 B 答案

## 后续可扩展

- 增加标准答案详解版与评分 rubric
- 增加 SQLite / JSON 数据导出
- 增加 top-level / advanced-node / low-power 专项问答包
