#import "@preview/universal-hit-thesis:0.3.0": shenzhen-bachelor-opening // <#用户使用>
// #import "@local/universal-hit-thesis:0.3.0": shenzhen-bachelor-opening // <#本地部署>
// #import "../lib.typ": shenzhen-bachelor-opening // <#模板开发>
#import shenzhen-bachelor-opening: *

// 参考 本科毕业论文（设计）书写范例（理工类）.doc 进行编写
// 编译命令  typst compile ./templates/universal-bachelor.typ --root ./
// 实时预览  typst watch ./templates/universal-bachelor.typ --root ./

#show: doc.with(
  thesis-info: (
    // 论文标题，可使用 \n 进行换行
    title-cn: "局部多孔质气体静压轴承关键技术的研究",
    title-en: "RESEARCH ON KEY TECHNOLOGIES OF PARTIAL POROUS EXTERNALLY PRESSURIZED GAS BEARING",
    author: "▢▢▢",
    student-id: "▢▢▢▢▢▢▢▢▢▢",
    supervisor: "▢▢▢ 教授",
    profession: "机械制造及其自动化",
    college: "机电工程学院",
    institute: "哈尔滨工业大学",
    thesis-type: "毕业", // '毕业' or '综合'
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
  bibliography: bibliography.with("hit-thesis-ref.bib", full: true, style: "gb-t-7714-2015-numeric-hit.csl"),
  keywords-cn: ("多孔质石墨", "……", "稳定性"),
  keywords-en: ("porous graphite", "…", "Stability"),
)


= 课题背景及研究的目的和意义

== 课题背景

发展国防工业、微电子工业等尖端技术需要精密和超精密的仪器设备，精密仪器设备要求高速、……

……

== 研究的目的和意义

气体轴承是利用气膜支撑负荷或减少摩擦的机械构件。……

……

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

    [ #align(left)[(c)] #square(size: 8em, stroke: 2pt) ],
    [ #align(left)[(d)] #square(size: 8em, stroke: 2pt) ],
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

（1）*孔隙特性* 多孔质材料是由……。

……

== 本文主要研究内容

本课题的研究内容主要是针对局部多孔质止推轴承的多孔质材料的渗透
率、静压轴承的静态特性、稳定性及其影响因素进行展开，……。

#pagebreak()

= 国内外研究现状及分析

== 国内外研究现状

利用现成的商用软件来研究流场，可以免去对N-S方程求解程序的……

=== 边界条件的设定

本文采用……，则每一个方向上的……由公式
@eqt:formula-1 @eqt:formula-2 求得：

$ phi = D^2_p / 150 psi^3 / (1 - psi)^2 $ <formula-1>

$ C_2 = 3.5 / D_p ((1 - psi)) / psi^3 $ <formula-2>

式中 $D_p$ —— 多孔质材料的平均粒子直径（m）；

#h(1em) $psi$ —— 孔隙度（孔隙体积占总体积的百分比）；

#h(1em) $phi$ —— 特征渗透性或固有渗透性（m2）。

……

== 国内外文献综述及简析

=== 冗余机械臂运动学研究现状

冗余机械臂是指其自身具有的自由度数多于执行任务所需的最少自由度数，实际上具有六个自由度的机械臂，便可以在可达空间内以任意位姿到达任意位置，但是在某些特殊情况下还是会选择可以进行避障、关节力矩优化和奇异回避等优点的七自由度冗余机械臂。
……

=== 双臂协调轨迹规划研究现状



早在二十世纪五十年代，最早出现的机器人很多就已经开始采用双臂系统，但广泛应用于工业生产和生活中的，却是便于设计、控制和操作的单臂机器人。

……

= 主要研究内容及研究方案

== 研究内容


为了确保机器人宇航员能够配合宇航员完成空间站的大部分操作任务，同时保证其能独立完成部分精细操作，机器人宇航员的手臂采用了七自由度冗余结构。而采用冗余结构的机械臂相比于常见的六自由度机械臂（如PUMA、Stanford），有着许多不可替代的优点，增强了机械臂在执行任务时的可靠性、实用性，可以实现避障、容错和关节力矩优化。但同时也给机械臂的逆运动学求解带来了麻烦，下面将对冗余机械臂的运动学进行详细的分析。

=== 冗余机械臂建模

七自由度冗余机械臂的结构形式很多，每种特定的结构也都有自己独特的优势和用途。为了方便机械臂的逆运动学求解，我们采用S-R-S形式的七自由度冗余机械臂结构，如图所示。前三个关节交于一点，形成一个球关节（sphere），称作肩关节；后三个关节轴线也相交于一点形成一个球关节，称作腕关节；第四个关节也就是肘关节，对其进行了偏置以便增加肘关节的运动范围，进而增大整个人机系统的工作空间。
……

== 研究方案

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

#pagebreak()

= 进度安排及预期目标
== 进度安排

本课题的研究时间为2013年9月开始至2015年7月份进行答辩，根据之前的项目经验，结合自身学习，科研攻关能力，针对课题研究计划，制定出下面的研究进度：
+ 2013年9月至2014年1月：开展了机器人方面基础知识学习，了解并掌握了六自由度以及冗余机械臂的逆运动学求解方法。
……
== 预期目标


预期目标是研制出仿生蛇形机器人完整样机，主要包括机械系统和嵌入式控制系统。本课题预期实现下面四个目标和成果：
+ 完成蛇形机器人的蠕动步态运动，验证规划算法的正确性；
+ 完成蛇形机器人的蜿蜒运动步态，验证规划算法的正确性；
+ 可远程无线控制操作；
……

= 已具备和所需的条件和经费
== 实验室条件和经费保障

目前已经具有一套六自由度机械臂，可以进行轨迹规划算法和力柔顺控制算法的验证。
……
本课题受到载人航天预研项目的大力支持，经费可以得到部分的保障。
……

== 所需条件和经费

开展今后的课题研究需要一个具有冗余双臂的机器人宇航员作为研究平台，现在正在进行机械部分的采购和加工，其中一支灵巧手已经完成加工和测试。预计年底前完成整机的机械部分组装，随后开展双臂协调操作和力柔顺控制算法的实验验证。
……

= 预计困难及解决方案
== 预计困难与技术难点

课题进行需要学习的知识较多，涉及嵌入式硬件开发、软件开发、电路板设计，机器人的运动学、轨迹规划等知识。
……

== 解决方案

为了提高课题进展速度和效率，保证学习质量，采用边应用边学习再应用的方法进行主要知识的系统学习，并多动手实际操作，提供动手操作能力，也外后期打下良好的基础。同时采取以下方案：
……

= 其他 Typst 使用示例

== 图表

使用`@fig:`来引用图片： @fig:square #lorem(4)

#figure(
  square(size: 8em, stroke: 2pt),
  caption: [A curious figure.],
  supplement: [图],
) <square>

#strike[图表之后第一段默认不缩进，如需缩进，可以手动调用`#indent`实现缩进。]

#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: text(lang: "en")[Timing results],
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


续表:
#[
  #show figure: set block(breakable: true)
  #figure(
    kind: table,
    caption: [跨页续表],
    table-multi-page(
      continue-header-label: [@tbl:multi-page-table（续表）],
      table(
         columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
         stroke: none,
         align: center + horizon,
         table.hline(),
         table.header(
           ..lorem(6).split(" "),
         ),
         table.hline(stroke: .5pt),
         // --- 测试续表
         ..lorem(300).split(" "),
         table.hline(),
        ),
    ),
  )
  <multi-page-table>
]

使用`@tbl:`来引用表格： @tbl:time-results @tbl:time-results-three-line-table @tbl:multi-page-table

== 伪代码

#[
  #import "@preview/algo:0.3.6": algo, i, d, comment, code

  使用`@algo:`来引用伪代码， 支持`algo`和`lovelace`包，如#[@algo:XXX算法]、#[@algo:XXXX算法]和#[@algo:lovelace-algo]所示

  #set par(first-line-indent: 0em)

  #algorithm-figure(
    algo(
      title: "Fib",
      parameters: ("n",),
      stroke: none,
      fill: none,
      breakable: true,
    )[
      if $n < 0$:#i\
      return null#d\
      if $n = 0$ or $n = 1$:#i\
      return $n$#d\
      \
      let $x <- 0$\
      let $y <- 1$\
      for $i <- 2$ to $n-1$:#i #comment[so dynamic!]\
      let $z <- x+y$\
      $x <- y$\
      $y <- z$#d\
      \
      return $x+y$
    ],
    caption: [斐波那契数列1],
    supplement: [算法],
    label-name: "XXX算法",
  )

  #algorithm-figure(
    algo(
      title: "Fib",
      parameters: ("n",),
      stroke: none,
      fill: none,
      breakable: true,
    )[
      if $n < 0$:#i\ // use #i to indent the following lines
      return null#d\ // use #d to dedent the following lines
      if $n = 0$ or $n = 1$:#i #comment[you can also]\
      return $n$#d #comment[add comments!]\
      return #smallcaps("Fib")$(n-1) +$ #smallcaps("Fib")$(n-2)$ \
    ],
    caption: [斐波那契数列2],
    supplement: [算法],
    label-name: "XXXX算法",
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
        println!("Hello, World!"); // 这是一行注释
    }
    ```,
    caption: [XXX代码],
    supplement: [代码],
    label-name: "XXX代码",
  )

  与 Markdown 类似，代码可以高亮显示，使用`@lst:`来引用代码块： @lst:XXX代码
]
