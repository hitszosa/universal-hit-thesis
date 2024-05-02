# HIT-Thesis-Typst

适用于哈尔滨工业大学学位论文的 Typst 模板

![hit-thesis-typst-cover](https://vonbrank-images.oss-cn-hangzhou.aliyuncs.com/20240426-HIT-Thesis-Typst/hit-thesis-typst-development-cover-01.jpg)

> [!WARNING]
> 本模板正处于积极开发阶段，存在一些格式问题，适合尝鲜 Typst 特性
> 
> 本模板是民间模板，**可能不被学校认可**，正式使用过程中请做好随时将内容迁移至 Word 或 LaTeX 的准备

## 关于本项目

[Typst](https://typst.app/) 是使用 Rust 开发的全新文档排版系统，有望以 Markdown 级别的简洁语法和编译速度实现 LaTeX 级别的排版能力，即通过编写遵循 Typst 语法规则的文本文档、执行编译命令，来可生成目标格式的 PDF 文档。

**HIT Thesis Typst** 是一套简单易用的哈尔滨工业大学学位论文 Typst 模板，受 [hithesis](https://github.com/hithesis/hithesis) 启发，计划囊括一校三区本科、硕士、博士的学位论文格式。

预览效果：[universal-bachelor.pdf](https://github.com/chosertech/HIT-Thesis-Typst/blob/build/universal-bachelor.pdf)

## 使用

在 `templates/` 目录下选择您需要的模板，直接修改或复制一份，在根目录运行以下命令进行编译：

```bash
typst compile ./templates/<template-name>.typ --root ./
```

您也可以使用如下命令：

```bash
typst watch ./templates/<template-name>.typ --root ./
```

并在 VS Code 中使用 [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp), [vscode-pdf](https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf) 等插件来实现实时预览。

> [!NOTE]
> 调查发现，官方提供的本科毕业设计 Microsoft Word 论文模板 `本科毕业论文（设计）书写范例（理工类）.doc` 在一校三区是通用的，意味着本 Typst 模板的本科论文部分理论上也是在一校三区通用的，因此我们提供适用于各校区的本科毕业论文模板模块导出，即以下四种导入模块的效果相同：
> ```typ
> #import "../lib.typ": harbin-bachelor
> #import harbin-bachelor: *
> ```
> ```typ
> #import "../lib.typ": weihai-bachelor
> #import weihai-bachelor: *
> ```
> ```typ
> #import "../lib.typ": shenzhen-bachelor
> #import shenzhen-bachelor: *
> ```
> ```typ
> #import "../lib.typ": universal-bachelor
> #import universal-bachelor: *
> ```

> [!TIP]
> 本模板正处于积极开发阶段，更新较为频繁，并且尚未上传至 Typst Universe，这种情况下您可能遇到更新模板较为困难的问题.
> 
> 如果您已经以某个版本的模板为基础开始撰写论文，又想获得后续更新，可以借助 Typst local packages 来实现，具体做法为：
> - 在 Release 页面下载对应版本的源码压缩包，并将其解压到 `{data-dir}/typst/packages/local/hit-thesis/{version}`，`{data-dir}` 在不同操作系统下的值为：
>   - `$XDG_DATA_HOME` or `~/.local/share` on Linux
>   - `~/Library/Application` Support on macOS
>   - `%LOCALAPPDATA%` on Windows
>   
>   `{version}` 的值为 `typst.toml` 中 `version` 项的值.
>   
>   解压完成后 `typst.toml` 文件应该出现在 `{data-dir}/typst/packages/local/hit-thesis/{version}` 目录下.
>
> - 接着您需要在您的论文中将 `#import "../lib.typ"` 修改为 `#import "@local/hit-thesis:{version}"`，即可更新模板.

