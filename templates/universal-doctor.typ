#import "@preview/universal-hit-thesis:0.3.0": universal-doctor // <#用户使用>
// #import "@local/universal-hit-thesis:0.3.0": universal-doctor // <#本地部署>
// #import "../lib.typ": universal-doctor // <#模板开发>
#import universal-doctor: *

// 参考 学位论文书写范例（理工类）.doc 进行编写
// 编译命令  typst compile ./templates/universal-doctor.typ --root ./
// 实时预览  typst watch ./templates/universal-doctor.typ --root ./

#show: doc.with(
  thesis-info: (
    // 论文标题，可使用 \n 进行换行
    title-cn: "局部多孔质气体静压轴承关键技术的研究",
    title-en: "RESEARCH ON KEY TECHNOLOGIES OF PARTIAL POROUS EXTERNALLY PRESSURIZED GAS BEARING",
    author: "▢▢▢",
    author-en: "▢▢▢",
    supervisor: "▢▢▢ 教授",
    supervisor-en: "Prof. ▢▢▢",
    profession: "▢▢博士",
    profession-en: "Doctor of ▢▢▢▢",
    specialty: "机械制造及其自动化",
    specialty-en: "Mechanical Manufacturing and Automation",
    affiliation: "机电工程学院",
    affiliation-en: "School of Mechatronics Engineering",
    institute: "哈尔滨工业大学",
    institute-en: "Harbin Institute of Technology",
    // 国内图书分类号
    chinese-library-classification: "××××",
    // 国际图书分类号
    universal-decimal-classification: "××××",
    // 学校代码
    school-identification-code: "×××",
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

  abstract-cn: [
    气体静压轴承由于具有运动精度高、摩擦损耗小、发热变形小、寿命长、无污染等特点，在航空航天工业、半导体工业、纺织工业和测量仪器中得到广泛应用。本文在分析国内外气体静压轴承的基础上，以改善气体静压轴承的静态特性和稳定性为目的，通过理论分析、仿真计算和实验研究对局部多孔质气体静压止推轴承进行了研究，同时分析轴承的结构参数和工作参数对局部多孔质气体静压止推轴承工作特性的影响，为局部多孔质气体静压轴承的设计和工程应用奠定理论基础。

    建立基于分形几何理论的多孔质石墨渗透率与分形维数之间关系的数学模型，该模型可预测多孔质石墨的渗透率，并可直观描述孔隙的大小对渗透率的影响。

    本文在理论分析的基础上，建立局部多孔质气体静压止推轴承静态特性的数学模型，在此基础上，通过工程方法和有限元方法对所建立的模型进行求解。在采用有限元方法时，首先通过加权余量法，将二阶偏微分方程降为一阶，从而，降低了对插值函数连续度的要求，同时，方便采用有限元方法进行求解。

    ……
  ],
  keywords-cn: ("多孔质石墨", "……", "稳定性"),

  abstract-en: [
    Externally pressurized gas bearing has been widely used in the field of aviation, semiconductor, weave, and measurement apparatus because of its advantage of high accuracy, little friction, low heat distortion, long life-span, and no pollution. In this thesis, based on the domestic and overseas researching development about externally pressurized gas bearing, the author investigated the partial porous externally pressurized gas thrust bearing by theoretical analysis, computer simulation, and experiments to improve its static charaterictics and stability. The effects of structure and operating parameters on partial porous externally pressurized gas bearing has been studied. Therefore, a theoretical foundation for the designing and application for the partial porous externally pressurized gas bearing has been presented.

    Based on the fractal theory, a model was established to demonstrate the relationship between the porous graphite permeability and the fractal dimension. It can predict the permeability of porous graphite and show the effects of the pore size on the permeability.

    In this thesis, the author established a model about the static characteristics of partial porous externally pressurized gas thrust bearing, and it was analyzed by engineering solution and Finite Element Method (FEM). While using FEM, the second-order partial differential equation was reduced to one-order by adopting Galerkin weighted residual method, for decreasing the continuity degree requirement of the interpolation function and facilitating to the calculation.

    …
  ],
  keywords-en: ("porous graphite", "…", "Stability"),

// 结论
  conclusion: [
    本文对局部多孔质气体静压止推轴承的静态特性和稳定性进行了理论研究，对于局部多孔质气体静压径向轴承、圆锥轴承和球轴承仅需对止推轴承压力分布的数学模型进行适当的坐标变换即可对其特性进行求解。同时，本文对局部多孔质气体静压止推轴承进行了实验研究并与整体多孔质和小孔节流止推轴承的静态特性和稳定性进行了实验对比。

    本论文的主要创造性工作归纳如下：

    1. 建立了基于分形几何理论的多孔质石墨渗透率与分形维数之间关系的数学模型，该模型可预测多孔质石墨的渗透率，并可直观描述各种孔隙的大小对渗透率的影响。通过实验验证了该模型的正确性。

    2. 分别建立了基于气体连续性方程、Navier-Stokes 方程、Darcy 定律以及气体状态方程的局部多孔质气体静压轴承的承载能力、静态刚度和质量流量的数学模型，利用有限元法进行求解，给出了局部多孔质气体静压轴承的承载能力、静态刚度和质量流量特性曲线。

    ……

    今后还应在以下几个方面继续深入研究：

    1. 本文仅是采用了局部多孔质圆柱塞这种节流方式，在以后的研究中，可以通过改变局部多孔质材料的形状来改变节流方式，从而通过性能对比，获得最优的节流效果。

    ……
  ],
  // 创新性成果，若没有则可以移除或设置为 none
  achievement:  [
    #par(first-line-indent: 0em)[
      *一、发表的学术论文*
    ]

    [1] ×××，×××. Static Oxidation Model of Al-Mg/C Dissipation Thermal Protection Materials［J］. Rare Metal Materials and Engineering, 2010, 39(Suppl. 1): 520-524.（SCI收录，IDS号为669JS）

    [2] ×××，×××. 精密超声振动切削单晶铜的计算机仿真研究［J］. 系统仿真学报，2007，19（4）：738-741，753.（EI收录号：20071310514841）

    [3] ×××，×××. 局部多孔质气体静压轴向轴承静态特性的数值求解［J］. 摩擦学学报，2007（1）：68-72.（EI收录号：20071510544816）

    [4] ×××，×××. 硬脆光学晶体材料超精密切削理论研究综述［J］. 机械工程学报，2003，39（8）：15-22.（EI收录号：2004088028875）

    [5] ×××，×××. 基于遗传算法的超精密切削加工表面粗糙度预测模型的参数辨识以及切削参数优化［J］. 机械工程学报，2005，41（11）：158-162.（EI收录号：2006039650087）

    [6] ×××，×××. Discrete Sliding Mode Cintrok with Fuzzy Adaptive Reaching Law on 6-PEES Parallel Robot［C］. Intelligent System Design and Applications, Jinan, 2006: 649-652.（EI收录号：20073210746529）

    #par(first-line-indent: 0em)[
      *二、申请及已获得的专利（无专利时此项不必列出）*
    ]

    [1] ×××，×××. 一种温热外敷药制备方案：中国，88105607.3［P］. 1989-07-26.

    #par(first-line-indent: 0em)[
      *三、参与的科研项目及获奖情况*
    ]

    [1] ×××，×××. ××气体静压轴承技术研究, ××省自然科学基金项目.课题编号：××××.

    [2] ×××，×××. ××静载下预应力混凝土房屋结构设计统一理论. 黑江省科学技术二等奖, 2007.
  ],
  // 致谢
  acknowledgement: [
    衷心感谢导师×××教授对本人的精心指导。他的言传身教将使我终身受益。

    感谢×××教授，以及实验室全体老师和同窗们的热情帮助和支持！

    本课题承蒙××××基金资助，特此致谢。

    ……
  ],
  // 个人简历
  personal-resume: [
    ××××年××月××日出生于××××。

    ××××年××月考入××大学××院（系）××专业，××××年××月本科毕业并获得××学学士学位。

    ××××年××月——××××年××月，在××大学××院（系）××学科学习并获得××学硕士学位。

    ××××年××月——××××年××月，在××大学××院（系）××学科攻读博士学位。

    获奖情况：如获三好学生、优秀团干部、×奖学金等（不含科研学术获奖）。

    工作经历：
  ],
  digital-signature-option: (
    // 三种电子签名模式
    // e-digital-signature-mode.off 不启用电子签名功能
    // e-digital-signature-mode.default 直接添加电子版签名图片
    // e-digital-signature-mode.scanned-copy 不显示此页的 typst 渲染结果，并将其替换为扫描件，允许传入 image 或者 pdf
    mode: e-digital-signature-mode.default,

    // default mode
    // 作者电子签名图片及其偏移
    author-signature: [ #lorem(2) ],
    author-signature-offsets: (
      (dx: 13em, dy: 19.5em),
      (dx: 13em, dy: 47em),
    ),
    // 导师电子签名图片及其偏移
    supervisor-signature: [ #lorem(3) ],
    supervisor-signature-offsets: (
      (dx: 13em, dy: 50em),
    ),

    // 日期及其偏移
    date-array: (
      (datetime.today().year(), datetime.today().month(), datetime.today().day(), ),
      (datetime.today().year(), datetime.today().month(), datetime.today().day(), ),
      (datetime.today().year(), datetime.today().month(), datetime.today().day(), ),
    ),
    date-offsets: (
      (
        (dx: 25em, dy: 19.5em),
        (dx: 29.5em, dy: 19.5em),
        (dx: 31.5em, dy: 19.5em),
      ),
      (
        (dx: 26em, dy: 47em),
        (dx: 30em, dy: 47em),
        (dx: 32.5em, dy: 47em),
      ),
      (
        (dx: 26em, dy: 50em),
        (dx: 30em, dy: 50em),
        (dx: 32.5em, dy: 50em),
      ),
    ),
    // 是否显示原创性声明页的页码
    // show-declaration-of-originality-page-number: false,

    // scanned-copy mode
    // mode 设置为 e-digital-signature-mode.scanned-copy 时允许您直接插入扫描件
    scanned-copy: [
      // 若扫描件是图片，则可以直接设置图片
      // #image("../image/templates/shenzhen-master/shenzhen-master_页面_21.png")

      // 若扫描件是 pdf，则可以转换成图片或使用 muchpdf 来插入
      // #import "@preview/muchpdf:0.1.0": muchpdf
      // #let data = read("universal-bachelor.pdf", encoding: none)
      // #muchpdf(data, pages: 13)
    ]
  )
)

= #[绪#h(1em)论]
#enheading()[Introduction]

== 课题背景、研究目的和意义
#enheading()[Background, objectives and significance of the research]

发展国防工业、微电子工业等尖端技术需要精密和超精密的仪器设备，精密仪器设备要求高速、……

……

== 气体润滑轴承及其相关理论的发展概况
#enheading()[Development of gas-lubricated bearings and related theories]

气体轴承是利用气膜支撑负荷或减少摩擦的机械构件。……

……

=== 气体润滑轴承的发展
#enheading()[Development of gas-lubricated bearings]

1828年，*R.R.Willis* @林来兴1992空间控制技术 发表了一篇关于小孔节流平板中压力分布的文章，这是有记载的研究气体润滑的最早文献。……

根据间隙内气膜压力的产生原理，气体轴承可以分为四种基本形式：

（1）*气体静压轴承* 加压气体经过节流器进入间隙，在间隙内产生压力气膜使物体浮起的气体轴承，……

=== 气体润滑轴承的分类
#enheading()[Classification of gas-lubricated bearings]

根据间隙内气膜压力的产生原理，气体轴承可以分为四种基本形式，其结构如图1-1所示。

（1）*气体静压轴承* 加压气体经过节流器进入间隙，在间隙内产生压力气膜使物体浮起的气体轴承，结构如 @fig:气体润滑轴承的分类1 (a) 所示。……

#bilingual-figure(
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
  caption: (
    zh: [气体润滑轴承的分类],
    en: [Classification of the gas-lubricated bearing]
  ),
  supplement: (
    zh: [图],
    en: [Fig.]
  ),
  label-name: "气体润滑轴承的分类1",
)

#align(center)[(a) 气体静压轴承; (b) 气体动压轴承; (c) 气体动静压轴承; (d) 气体压膜轴承]

（也可以按照下图范例书写）

#bilingual-figure(
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
    caption: (
      zh: [气体润滑轴承的分类],
      en: [Classification of the gas-lubricated bearing]
    ),
    // supplement: (
    //   zh: [图],
    //   en: [Fig.]
    // ),
    label-name: "气体润滑轴承的分类2"
)

=== 多孔质气体静压轴承的研究
#enheading()[Research on porous gas-lubricated bearings]

由于气体的压力低和可压缩性，……。

==== 多孔质静压轴承的分类
#enheading()[Classification of porous externally pressurized bearings]

轴承工作面的整体或……。

==== 多孔质材料特性的研究
#enheading()[Study on the characteristics of porous materials]

材料的主要特点是具有一定的……。

（1）孔隙特性 多孔质材料是由……。

……

== 本文主要研究内容
#enheading()[Main research content of this thesis]

本课题的研究内容主要是针对局部多孔质止推轴承的多孔质材料的渗透
率、静压轴承的静态特性、稳定性及其影响因素进行展开，……。

#pagebreak()

= 基于FLUENT软件的轴承静态特性研究
// 对于过长的英文标题需要手动处理换行和缩进
#enheading()[Research on static characteristics of bearing based on FLUENT 
 #linebreak()#h(4em) software]

== 引言
#enheading()[Introduction]

利用现成的商用软件来研究流场，可以免去对N-S方程求解程序的……

=== 边界条件的设定
#enheading()[Problem statement]

本文采用……，则每一个方向上的……由公式 @eqt:formula-1 @eqt:formula-2 求得：

$ phi = D^2_p / 150 psi^3 / (1 - psi)^2 $ <formula-1>

$ C_2 = 3.5 / D_p ((1 - psi)) / psi^3 $ <formula-2>

式中 $D_p$ —— 多孔质材料的平均粒子直径（$m$）；

#h(1em) $psi$ —— 孔隙度（孔隙体积占总体积的百分比）；

#h(1em) $phi$ —— 特征渗透性或固有渗透性（$m^2$）。
……

== 本章小结
#enheading()[Brief summary]

= 局部多孔质静压轴承的试验研究
#enheading()[Experiment on partial porous thrust bearing]

== 引言
#enheading()[Introduction]

在前面几章中，分别对局部多孔质材料的渗透率……

== 多孔质石墨渗透率测试试验
#enheading()[Permeability test of porous graphite]

……

1号试样的试验数据见 @tbl:1号试样的实验数据。

#bilingual-figure(
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
  caption: (
    zh: [1号试样渗透率测试数据(温度：T=16 ℃ 高度：H=5.31 mm)],
    en: [Data of measured permeability of sample 1 #linebreak() (Temperature: T=16 ℃  Height: H=5.31 mm)],
  ),
  // supplement: [表],
  label-name: "1号试样的实验数据",
)

#linebreak()

#bilingual-figure(
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
  caption: (
    zh: [试样渗透率测试数据],
    en: [Data of measured permeability of sample 1],
  ),
  label-name: "试样渗透率测试数据",
)

== 本章小结
#enheading()[Brief summary]

……

#pagebreak()

= 其他 Typst 使用示例
#enheading()[Other examples of Typst]

== 图表
#enheading()[Figures and tables]

使用`@fig:`来引用图片： @fig:square，则图表会以默认

#bilingual-figure(
  square(size: 8em, stroke: 2pt),
  caption: (
    zh: [一张有趣的图表],
    en: [A curious figure.],
  ),
  supplement: (
    zh: [图表],
    en: [Figure],
  ),
  label-name: "square",
)

若传入中英双语 `caption`，则 `bilingual-figure` 默认以中英双语显示。传入 `supplement` 字段可用于自定义中英双语的 `supplement`，若不传入则显示默认的 `supplement`.

#strike[图表之后第一段默认不缩进，如需缩进，可以手动调用`#indent`实现缩进。]

#bilingual-figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [Timing results],
  supplement: [表],
  label-name: "time-results",
)

#bilingual-figure(
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
  caption: (
    zh: [三线表],
    en: [Three-line table],
  ),
  label-name: "time-results-three-line-table",
) 

使用`@tbl:`来引用表格： @tbl:time-results @tbl:time-results-three-line-table

== 伪代码
#enheading()[Pseudocode]

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
      breakable: true
    )[
      if $n < 0$:#i\        // use #i to indent the following lines
        return null#d\      // use #d to dedent the following lines
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
#enheading()[Code blocks]

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