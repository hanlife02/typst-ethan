#import "template.typ": *

#show: template.with(
  // 笔记标题
  title: [标题],
  // 在页眉展示的短标题（选填）
  short-title: "页眉标题",
  // 笔记描述（选填）
  description: [
    描述
  ],
  // 笔记创建日期（选填）
  date: datetime(year: 2025, month: 05, day: 26),
  // 作者信息（除 name 外，其他参数选填）
  authors: (
    (
      name: "Ethan",
      github: "https://github.com/hanlife02",
      homepage: "https://hanlife02.com",
    ),
  ),

  // 所属组织列表，每一项包括一个 id 和 name。这些将显示在作者下方。
  affiliations: (
    (id: "", name: "Peking University"),
  ),

  // 页面尺寸，同时会影响页边距。
  paper-size: "a4",

  // 中英文文本和代码的字体
  fonts: (
    (
      en-font: "Bodoni",
      zh-font: "Kaiti",
      code-font: "DejaVu Sans Mono",
    )
  ),

  // 参考书目文件路径及引用样式
  bibliography-file: "refs.bib",
  bibstyle: "gb-7714-2015-numeric",

  // 主题色
  accent: blue,
  // 封面背景图片（选填图片路径或 none）
  cover-image: "./figures/cover-image.png",
  // 正文背景颜色（选填 HEX 颜色或 none）
  background-color: "#FFFFFF",
)

#include "content/chapter1.typ"
#include "content/chapter2.typ"

// 参考文献
#pagebreak()
#bibliography("refs.bib", title: "参考文献", style: "gb-7714-2015-numeric")
