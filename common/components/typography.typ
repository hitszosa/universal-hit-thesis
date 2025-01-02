#import "../theme/type.typ": 字体, 字号
#import "@preview/numbly:0.1.0": numbly

#let indent = h(2em)

// 假段落，附着于 heading 之后可以实现首行缩进
#let empty-par = par[#box()]
#let fake-par = context empty-par + v(-measure(empty-par + empty-par).height)


#let heading-block-unit-multiplier = 2.25

#let heading-level-1-style(it) = {
  set align(center)
  set text(font: 字体.黑体, size: 字号.小二, weight: "regular")
  set block(below: 1.7em, above: 0em, inset: (top: 1.4em))
  it
}

#let heading-level-1(it) = {
  show: heading-level-1-style
  pagebreak(weak: true)
  it
}

#let use-heading-preface(content) = {

  show heading.where(level: 1): heading-level-1

  content
}

#let use-heading-main(content) = {

  set heading(numbering: numbly(
    "第 {1:1} 章   ",
    "{1}.{2}   ",
    "{1}.{2}.{3}   ",
    "{1}.{2}.{3}.{4}   ",
    "{1}.{2}.{3}.{4}.{5}   ",
  ))

  show heading.where(level: 1): heading-level-1
  show heading.where(level: 2): it => {
    set text(font: 字体.黑体, size: 字号.小三, weight: "regular")
    set block(above: 1.5em, below: 1.51em)
    it
  }
  show heading.where(level: 3): it => {
    set text(font: 字体.黑体, size: 字号.四号, weight: "regular")
    set block(above: 1.56em, below: 1.58em)
    it
  }
  show heading: it => {
      if it.level > 3 {
        set text(font: 字体.黑体, size: 字号.小四, weight: "regular")
        set block(above: 0.95em, below: 0.94em)
        it
      } else {
        it
      }
  }
  content
}

#let use-heading-end(content) = {

  show heading.where(level: 1): heading-level-1

  content
}