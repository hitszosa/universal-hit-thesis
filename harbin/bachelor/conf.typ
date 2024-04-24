#import "../../common/theme/type.typ": 字体, 字号
#import "utils/numbering.typ": heading_numbering
#import "utils/states.typ": cover_header_active, cover_footer_active, perface_header_active, perface_footer_active, body_header_active, body_footer_active
#import "config/constants.typ": special_chapter_titles
#import "@preview/cuti:0.2.1": show-cn-fakebold

#let conf(content) = {
  set page(
    paper: "a4",
    margin: (top: 3.8cm, left: 3cm, right: 3cm, bottom: 3cm),
  )

  set page(header: {
    locate(loc => {
      if cover_header_active.get() == false [
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
  })

  set page(footer: {
    set align(center)
    locate(loc => {
      text()[
        #if perface_footer_active.get() == true [
          #counter(page).display("- I -")
        ] else if body_footer_active.get() == true [
          #counter(page).display("- 1 -")
        ]
      ]
    })
  })

  show heading: it => {
    let format_heading(it: none, font: none, size: none, weight: "regular") = {
      set text(font: font, size: size)

      text(weight: weight)[
        #if counter(heading).get().at(0) != 0 [
          #counter(heading).display()
        ]
        #if it != none {
          h(0.75em)
          it.body
        }
      ]

      v(0.5em)
    }

    set par(first-line-indent: 0em)

    if it.level == 1 {
      align(center)[

        #format_heading(it: it, font: 字体.黑体, size: 字号.小二)

      ]
    } else if it.level == 2 {
      format_heading(it: it, font: 字体.黑体, size: 字号.小三)
    } else if it.level >= 3 {
      format_heading(it: it, font: 字体.黑体, size: 字号.小四)
    }
  }

  set heading(numbering: heading_numbering)

  set par(first-line-indent: 2em, leading: 1em, justify: true)

  set text(font: 字体.宋体, size: 字号.小四)

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

  show: show-cn-fakebold

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