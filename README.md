<!--
 * @Author: Ethan && ethan@hanlife02.com
 * @Date: 2025-05-23 23:44:25
 * @LastEditors: Ethan && ethan@hanlife02.com
 * @LastEditTime: 2025-05-27 13:59:16
 * @FilePath: /typst-ethan/README.md
 * @Description:
 *
 * Copyright (c) 2025 by Ethan, All Rights Reserved.
-->

# Typst-Ethan

## 模板介绍

这是一款为个人学术写作需求客制化的 Typst 笔记模板。基于 [SimpleNote](https://github.com/a-kkiri/SimpleNote) 进行深度定制，原模板修改自 [jsk-lecnotes](https://github.com/jskherman/jsk-lecnotes)。

## 使用方法

> [!NOTE]
>
> 此模板需要使用 Typst 0.11.0 及以上版本进行编译。

- main.typ 主文件
- refs.bib 参考文献
- template.typ 文档格式控制，包括一些基础的设置、函数
- resource.typ 存放模板 svg 资源
- /content 正文文件夹，存放正文章节
- /fonts 字体文件夹
- /figures 图片文件夹

使用模板首先需配置 `main.typ`，设置标题、描述、作者等信息，如需要进一步更改文档格式，请修改 `template.typ`。撰写文档请修改 `/content` 文件夹内的文件。

本地编辑建议使用 VSCode 编辑器，并推荐安装 [Tinymist](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview) 与 [Typst Preview](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview) 插件。

> [!CAUTION]
>
> 如果要将文档拆分为多个文件进行组织，需要将 `#import "../template.typ": *` 添加到每个文件的顶部，以使某些函数（例如 `blockquote()`）正常工作。
>
> 例如，假设你在项目根目录下有一个 `./content/chapter.typ` 文件和一个 `./template.typ` 文件，那么你需要在 `chapter.typ` 文件顶部添加 `#import "../template.typ": *`。
