// 先借用本科生模板，便于开发时预览
// #import "@preview/universal-hit-thesis:0.2.1": universal-bachelor
#import "../../lib.typ": universal-bachelor
#import universal-bachelor: *
#import "../share/abstract.typ": *
#import "../../common/components/enheading.typ": enheading

// 参考 研究生学位论文书写范例（理工类）.doc 进行编写
// 编译命令  typst compile ./templates/doctor/universal-bachelor.typ --root ./
// 实时预览  typst watch ./templates/doctor/universal-bachelor.typ --root ./

#show: doc.with(
  thesis-info: (
    // 论文标题，可使用 \n 进行换行
    title-cn: "局部多孔质气体静压轴承关键技术的研究",
    title-en: "RESEARCH ON KEY TECHNOLOGIES OF PARTIAL POROUS EXTERNALLY PRESSURIZED GAS BEARING",
    author: "▢▢▢",
    student-id: "▢▢▢▢▢▢▢▢▢▢",
    supervisor: "▢▢▢ 教授",
    profession: "机械制造及其自动化",
    collage: "机电工程学院",
    institute: "哈尔滨工业大学",
    // year: 2024,
    // month: 5,
    // day: 1,
  ),

  // 图表选项
  figure-options: (
    // extra-kinds, extra-prefixes 表示需要执行计数器重置和引用的图表类型
    // 参考 https://github.com/RubixDev/typst-i-figured/blob/main/examples/basic.typ
    // 示例：extra-kinds: ("atom",), extra-prefixes: (atom: "atom:")，即新建一个 atom 类型，并使用 @atom: 来引用
    extra-kinds: (), extra-prefixes: (:),
  ),

  // 参考文献配置
  bibliography: bibliography.with("../universal-bachelor-ref.bib", full: true, style: "../gb-t-7714-2015-numeric-hit.csl"),

  abstract-cn: abstract-cn,
  keywords-cn: keywords-cn,

  abstract-en: abstract-en,
  keywords-en: keywords-en,

  // 结论
  conclusion: include "../share/conclusion.typ",
  // 创新性成果，若没有则可以移除或设置为 none
  achievement:  include "../share/archievement.typ",
  // 致谢
  acknowledgement: include "../share/acknowledgement.typ",
)


= #[绪#h(1em)论]
#enheading()[]

== 课题背景、研究目的和意义

发展国防工业、微电子工业等尖端技术需要精密和超精密的仪器设备，精密仪器设备要求高速、……

……

== 气体润滑轴承及其相关理论的发展概况

气体轴承是利用气膜支撑负荷或减少摩擦的机械构件。……

// ……

=== 气体润滑轴承的发展

1828年，*R.R.Willis* @林来兴1992空间控制技术 发表了一篇关于小孔节流平板中压力分布的文章，这是有记载的研究气体润滑的最早文献。……

根据间隙内气膜压力的产生原理，气体轴承可以分为四种基本形式：

（1）*气体静压轴承* 加压气体经过节流器进入间隙，在间隙内产生压力气膜使物体浮起的气体轴承，……

=== 气体润滑轴承的分类

根据间隙内气膜压力的产生原理，气体轴承可以分为四种基本形式，其结构如图1-1所示。

（1）*气体静压轴承* 加压气体经过节流器进入间隙，在间隙内产生压力气膜使物体浮起的气体轴承，结构如 @fig:气体润滑轴承的分类1 (a) 所示。……

#figure(
  grid(
    columns: (auto, auto),
    rows: (auto, auto),
    row-gutter: 1em,
    column-gutter: 1em,
    [ #align(left)[(a)]
      #square(size: 8em, stroke: 2pt)
      // 可替换为实际的图片
      // image("path/to/image.png", width: 50%)
    ],
    [ #align(left)[(b)] #square(size: 8em, stroke: 2pt) ],

    [ #align(left)[(c)] #square(size: 8em, stroke: 2pt) ], [ #align(left)[(d)] #square(size: 8em, stroke: 2pt) ],
  ),
  caption: [气体润滑轴承的分类],
  supplement: [图],
)<气体润滑轴承的分类1>

#align(center)[(a) 气体静压轴承; (b) 气体动压轴承; (c) 气体动静压轴承; (d) 气体压膜轴承]

（也可以按照下图范例书写）

#figure(
    grid(
      columns: (auto, auto),
      rows: (auto, auto),
      row-gutter: 1em,
      column-gutter: 1em,
      [ #square(size: 8em, stroke: 2pt) #text()[ (a) 气体静压轴承 ]],
      [ #square(size: 8em, stroke: 2pt) #text()[ (b) 气体动压轴承 ]],
      [ #square(size: 8em, stroke: 2pt) #text()[ (c) 气体动静压轴承 ]],
      [ #square(size: 8em, stroke: 2pt) #text()[ (d) 气体压膜轴承 ]],
    ),
    // image("path/to/image.png", width: 50%),
    caption: [气体润滑轴承的分类],
    supplement: [图],
)<气体润滑轴承的分类2>

=== 多孔质气体静压轴承的研究

由于气体的压力低和可压缩性，……。

==== 多孔质静压轴承的分类

轴承工作面的整体或……。

==== 多孔质材料特性的研究

材料的主要特点是具有一定的……。

（1）孔隙特性 多孔质材料是由……。

……

== 本文主要研究内容

本课题的研究内容主要是针对局部多孔质止推轴承的多孔质材料的渗透
率、静压轴承的静态特性、稳定性及其影响因素进行展开，……。

#pagebreak()

= 基于FLUENT软件的轴承静态特性研究

== 引言

利用现成的商用软件来研究流场，可以免去对N-S方程求解程序的……

== 问题的提出

本文采用……，则每一个方向上的……由公式 @eqt:formula-1 @eqt:formula-2 求得：

$ phi = D^2_p / 150 psi^3 / (1 - psi)^2 $ <formula-1>

$ C_2 = 3.5 / D_p ((1 - psi)) / psi^3 $ <formula-2>

式中 $D_p$ —— 多孔质材料的平均粒子直径（m）；

#h(1em) $psi$ —— 孔隙度（孔隙体积占总体积的百分比）；

#h(1em) $phi$ —— 特征渗透性或固有渗透性（m2）。
……

== 本章小结

= 局部多孔质静压轴承的试验研究

== 引言

在前面几章中，分别对局部多孔质材料的渗透率……

== 多孔质石墨渗透率测试试验

……

1号试样的试验数据见 @tbl:1号试样的实验数据。

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    stroke: none,
    align: center + horizon,
    table.hline(),
    [供气压力 #linebreak() $P_s ("MPa")$],
    [流量测量 #linebreak() $M prime (m^3\/h)$ ],
    [#v(.5em) 流量修正值 #linebreak() #v(.5em)
    $M (m_3\/s) \ times 10^(-4)$ #v(.25em)],
    [压力差 #linebreak() $Delta P ("Pa")$ ],
    [$lg Delta P$],
    [$lg M$],
    table.hline(stroke: .5pt),
    // ---
    [0.15],
    [0.009],
    [0.023 12],
    [46 900],
    [4.671 17],
    [-5.636 01],
    // ---
    [0.2],
    [0.021],
    [0.045 84],
    [96 900],
    [4.986 32],
    [-5.338 76],
    table.hline(),
  ),
  caption: [1号试样渗透率测试数据(温度：T=16 ℃ 高度：H=5.31 mm)],
  supplement: [表],
)<1号试样的实验数据>

#linebreak()

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    stroke: none,
    align: center + horizon,
    table.hline(),
    [供气压力 #linebreak() $P_s ("MPa")$],
    [流量测量 #linebreak()$M prime (m^3\/h)$ ],
    [#v(.5em) 流量修正值 #linebreak() #v(.5em)
    $M (m_3\/s) \ times 10^(-4)$ #v(.25em) ],
    [压力差 #linebreak() $Delta P ("Pa")$ ],
    [$lg Delta P$],
    [$lg M$],
    table.hline(stroke: .5pt),
    // ---
    [0.15],
    [0.009],
    [0.023 12],
    [46 900],
    [4.671 17],
    [-5.636 01],
    // ---
    [0.2],
    [0.021],
    [0.045 84],
    [96 900],
    [4.986 32],
    [-5.338 76],
    table.hline(),
  ),
  caption: [试样渗透率测试数据],
  supplement: [表],
)<试样渗透率测试数据>

== 本章小结

……

#pagebreak()

= 其他 Typst 使用示例

== 图表

使用`@fig:`来引用图片： @fig:square

#figure(
  square(size: 8em, stroke: 2pt),
  caption: [A curious figure.],
  supplement: [图],
) <square>

#indent 图表之后第一段默认不缩进，如需缩进，可以手动调用`#indent`实现缩进。

#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [Timing results],
  supplement: [表],
) <time-results>

#figure(
  table(
    columns: 4,
    stroke: none,
    table.hline(),
    [t],
    [1],
    [2],
    [3],
    table.hline(stroke: .5pt),
    [y],
    [0.3s],
    [0.4s],
    [0.8s],
    table.hline(),
  ),
  caption: [Timing results（三线表）],
  supplement: [表],
) <time-results-three-line-table>

#indent 使用`@tbl:`来引用表格： @tbl:time-results @tbl:time-results-three-line-table

== 伪代码

#[
  #import "@preview/algorithmic:0.1.0"
  #import algorithmic: algorithm

  使用`@algo:`来引用伪代码， 支持`algorithmic`和`lovelace`包，如#[@algo:XXX算法]和#[@algo:lovelace-algo]所示

  #algorithm-figure(
    algorithm({
      import algorithmic: *
      Function(
        "Binary-Search",
        args: ("A", "n", "v"),
        {
          Cmt[Initialize the search range]
          Assign[$l$][$1$]
          Assign[$r$][$n$]
          State[]
          While(
            cond: $l <= r$,
            {
              Assign([mid], FnI[floor][$(l + r) / 2$])
              If(
                cond: $A ["mid"] < v$,
                {
                  Assign[$l$][$m + 1$]
                },
              )
              ElsIf(
                cond: [$A ["mid"] > v$],
                {
                  Assign[$r$][$m - 1$]
                },
              )
              Else({
                Return[$m$]
              })
            },
          )
          Return[*null*]
        },
      )
    }),
    caption: [二分查找],
    supplement: [算法],
    label-name: "XXX算法",
  )

  #import "@preview/lovelace:0.2.0": *

  #algorithm-figure(
    pseudocode(
      no-number,
      [#h(-1.25em) *input:* integers $a$ and $b$],
      no-number,
      [#h(-1.25em) *output:* greatest common divisor of $a$ and $b$],
      [*while* $a != b$ *do*],
      ind,
      [*if* $a > b$ *then*],
      ind,
      $a <- a - b$,
      ded,
      [*else*],
      ind,
      $b <- b - a$,
      ded,
      [*end*],
      ded,
      [*end*],
      [*return* $a$],
    ),
    caption: [The Euclidean algorithm],
    label-name: "lovelace-algo",
  )

]

== 代码块

#[

  #code-figure(
    ```rs
    fn main() {
        println!("Hello, World!"); // 苟利国家生死以
    }
    ```,
    caption: [XXX代码],
    supplement: [代码],
    label-name: "XXX代码",
  )

  #indent 与 Markdown 类似，代码可以高亮显示，使用`@lst:`来引用代码块： @lst:XXX代码
]