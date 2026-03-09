# Contributing

## Recommended workflow

- 在 `data/sources/source_index.csv` 追加新来源
- 为每个来源新增一张 `data/sources/SRC-xxx_*.md` 摘要卡片
- 如需扩充题库，优先更新 `scripts/generate_bilingual_bank.sh`
- 重新生成 `data/bank/bilingual_question_bank_530.md`
- 在 PR 描述中注明新增来源、主题覆盖与是否含双语模拟脚本

## Quality bar

- 题目必须与 `ASIC Physical Design Engineer` 强相关
- 尽量保持中英文对照自然、可面试使用
- 标准答案要点要简洁、可复述、可追问
