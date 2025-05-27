#import "../template.typ": *

= 功能展示

本章节展示模板的主要功能和样式效果。

== 文本样式

=== 基本格式
- *粗体文本*：使用主题色显示
- _斜体文本_：保持原字体样式
- #highlight[高亮文本]：黄色背景高亮
- 链接文本：#link("https://typst.app")[Typst 官网]
- 行内代码：`let x = 42`

== 数学公式

=== 行内公式
著名的质能方程 $E = m c^2$ 和欧拉恒等式 $e^(i pi) + 1 = 0$。

=== 行间公式
高斯公式：
$ integral.triple_(Omega) (frac(diff P, diff x) + frac(diff Q, diff y) + frac(diff R, diff z)) d v = integral.surf_(Sigma) P d y d z + Q d z d x + R d x d y $ <gauss-formula>

== 代码展示

简单的 Python 代码示例：

#figure(
```python
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

# 计算前10个斐波那契数
for i in range(10):
    print(f"F({i}) = {fibonacci(i)}")
```,
caption: [斐波那契数列计算]
) <code-example>

== 定理环境

#definition("连续函数")[
  设函数 $f: D → RR$，如果在点 $x_0$ 处满足 $lim_(x → x_0) f(x) = f(x_0)$，则称 $f$ 在 $x_0$ 处连续。
]

#example("连续函数示例")[
  函数 $f(x) = x^2$ 在整个实数域上连续。
]

#tip("学习建议")[
  理解数学概念时，建议先掌握直观含义，再学习严格定义。
]

== 表格和图片

#figure(caption: [模板配置参数])[
  #table(
    columns: (1fr, 1fr, 1fr),
    [参数], [默认值], [说明],
    [paper-size], [a4], [页面尺寸],
    [accent], [blue], [主题色],
    [fonts.zh-font], [Kaiti], [中文字体],
  )
]

#figure(caption: [示例图片])[
  #rect(width: 150pt, height: 80pt, fill: gray.lighten(80%), stroke: 1pt)[
    #align(center + horizon)[图片占位符]
  ]
] <image-example>

== 引用和分隔

#blockquote[
  "数学是科学的语言。" —— 伽利略
]

#horizontalrule

通过引用可以链接到图片 @image-example、公式 @gauss-formula 和代码 @code-example。
