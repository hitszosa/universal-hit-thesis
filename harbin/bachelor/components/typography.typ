 #import "../../../common/theme/type.typ": 字体, 字号
 #import "@preview/numbly:0.1.0": numbly
 
 #let special-chapter-format-heading(it: none, font: none, size: none, weight: "regular") = {
  set text(font: font, size: size)

  text(weight: weight)[
    #if it != none {
      it.body
    }
  ]
  v(0.5em)
}

#let main-format-heading(it: none, font: none, size: none, weight: "regular") = {
  set text(font: font, size: size)
    // v(0.5em)
  text(weight: weight)[
    #counter(heading).display()
    #if it != none {
      it.body
    }
  ]
  // v(0.5em)
}

#let heading-block-unit-multiplier = 2.25

#let heading-level-1-style(it) = {
  set align(center)
  set text(font: 字体.黑体, size: 字号.小二, weight: "regular")
  set block(below: 0.8em * heading-block-unit-multiplier, inset: (top: 1em))

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
    "第 {1:1} 章  ",
    "{1}.{2}  ",
    "{1}.{2}.{3}  ",
    "{1}.{2}.{3}.{4}  ",
    "{1}.{2}.{3}.{4}.{5}  ",
  ))

  // show heading.where(level: 1): heading-level-1
  show heading.where(level: 2): it => {
    set text(font: 字体.黑体, size: 字号.小三, weight: "regular")
    set block(above: 0.5em * heading-block-unit-multiplier, below: 0.5em * heading-block-unit-multiplier)
    it
  }
  show heading.where(level: 3): it => {
    set text(font: 字体.黑体, size: 字号.小四, weight: "regular")
    set block(above: 0.5em * heading-block-unit-multiplier, below: 0.5em * heading-block-unit-multiplier)
    it
  }
  show heading: it => {
      set text(font: 字体.黑体, size: 字号.小四, weight: "regular")
      set block(above: 0.5em * heading-block-unit-multiplier, below: 0.5em * heading-block-unit-multiplier)
      it
  }
  content
}

#let use-heading-end(content) = {

  show heading.where(level: 1): heading-level-1

  content
}