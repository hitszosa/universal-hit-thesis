#import "../../common/theme/type.typ": 字体, 字号
#import "components/typography.typ": main_format_heading, special_chapter_format_heading
#import "utils/numbering.typ": heading_numbering
#import "config/constants.typ": special_chapter_titles
#import "@preview/cuti:0.2.1": show-cn-fakebold

#let doc(content) = {
  set page(
    paper: "a4",
    margin: (top: 3.8cm, left: 3cm, right: 3cm, bottom: 3cm),
  )

  show: show-cn-fakebold

  content
}

#let preface(content) = {
  set page(header: {
    [
      #set align(center)
      #set text(font: 字体.宋体, size: 字号.小五, baseline: 6pt)
      #set par(leading: 0em)
      #text[
        哈尔滨工业大学本科毕业论文（设计）
      ]
      #line(length: 100%)
      #v(2pt, weak: true)
      #line(length: 100%, stroke: 0.1mm)
    ]
  })

  set page(numbering: "- I -")
  counter(page).update(1)


  show heading: it => {
    set par(first-line-indent: 0em)

    if it.level == 1 {
      align(center)[
        #special_chapter_format_heading(it: it, font: 字体.黑体, size: 字号.小二)
      ]
    } else {
      it
    }
  }


  set par(first-line-indent: 2em, leading: 1em, justify: true)

  set text(font: 字体.宋体, size: 字号.小四)

  content
}

#let main(content) = {
  set page(numbering: "- 1 -")
  counter(page).update(1)

  set heading(numbering: heading_numbering)

  show heading: it => {
    set par(first-line-indent: 0em)

    if it.level == 1 {
      align(center)[
        #main_format_heading(it: it, font: 字体.黑体, size: 字号.小二)
      ]
    } else if it.level == 2 {
      main_format_heading(it: it, font: 字体.黑体, size: 字号.小三)
    } else if it.level >= 3 {
      main_format_heading(it: it, font: 字体.黑体, size: 字号.小四)
    }
  }

  show figure.where(kind: "table"): set figure.caption(position: top)

  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  show raw.where(block: false): text.with(
    font: 字体.代码,
    size: 10.5pt,
  )
  show raw.where(block: true): block.with(
    fill: luma(240),
    inset: 8pt,
    radius: 4pt,
    width: 100%,
  )
  show raw.where(block: true): text.with(
    font: 字体.代码,
    size: 10.5pt,
  )

  set math.equation(numbering: "(1)")

  show ref: it => {
    let eq = math.equation
    let el = it.element
    if el != none and el.func() == eq {
      // Override equation references.
      numbering(
        el.numbering,
        ..counter(eq).at(el.location()),
      )
    } else {
      // Other references as usual.
      it
    }
  }

  content
}

#let ending(content) = {
  show heading: it => {
    set par(first-line-indent: 0em)

    if it.level == 1 {
      align(center)[
        #special_chapter_format_heading(it: it, font: 字体.黑体, size: 字号.小二)
      ]
    } else {
      it
    }
  }
  set heading(numbering: none)

  content
}