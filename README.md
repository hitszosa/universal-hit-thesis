# HIT-Thesis-Typst

适用于哈尔滨工业大学学位论文的 Typst 模板

> [!WARNING]
> 本模板正处于积极开发阶段，存在一些格式问题，适合尝鲜 Typst 特性
> 
> 本模板是民间模板，**可能不被学校认可**，正式使用过程中请做好随时将内容迁移至 Word 或 LaTeX 的准备

## 关于本项目

[Typst](https://typst.app/) 是使用 Rust 开发的全新文档排版系统，有望以 Markdown 级别的简洁语法和编译速度实现 LaTeX 级别的排版能力，即通过编写遵循 Typst 语法规则的文本文档、执行编译命令，来可生成目标格式的 PDF 文档。

**HIT Thesis Typst** 是一套简单易用的哈尔滨工业大学学位论文 Typst 模板，受 [hithesis](https://github.com/hithesis/hithesis) 启发，计划囊括一校三区本科、硕士、博士的学位论文格式。

预览效果：[harbin-bachelor.pdf](https://github.com/chosertech/HIT-Thesis-Typst/blob/build/harbin-bachelor.pdf)

## 使用

在 `templates/` 目录下选择你需要的模板，直接修改或复制一份，在根目录运行以下命令进行编译：

```bash
typst compile ./templates/<template-name>.typ --root ./
```

你也可以使用如下命令：

```bash
typst watch ./templates/<template-name>.typ --root ./
```

并在 VS Code 中使用 [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp), [vscode-pdf](https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf) 等插件来实现实时预览。

