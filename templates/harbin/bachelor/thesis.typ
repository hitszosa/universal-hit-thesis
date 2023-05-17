#import "../../../theme/type.typ": *
#import "../../../utils/counters.typ": cover_end_before_counter, cover_end_after_counter


#let conf(content) = {

  let show_if_after_cover_end_before(content) = {
    locate(loc => {
      if cover_end_before_counter.at(loc).first() > 0 {
        content
      }
    })
  }
  let show_if_after_cover_end_after(content) = {
    locate(loc => {
      if cover_end_after_counter.at(loc).first() > 0 {
        content
      }
    })
  }

  set page(
    paper: "a4",
    margin: (top: 3.8cm, left: 3cm, right: 3cm, bottom: 3cm)
  )

  set page(
    header: {
      show_if_after_cover_end_before[
        #set align(center)
        #set text(font: 字体.宋体, size: 字号.小五, baseline: 6pt)
        #set par(leading: 0em)
        #text[
          哈尔滨工业大学本科毕业论文（设计）
        ]
        #line(length: 100%)
        #v(2pt, weak: true)
        #line(length: 100%, stroke: 0.1em)
      ]

    }
  )

  set page(
    footer: {
      set align(center)
      locate(loc => {
        show_if_after_cover_end_after[
          #text()[
            \- #counter(page).at(loc).first() \-
          ]
        ]
      })
    }
  )

  show heading: it => {

    if it.level == 1 {
      text(size: 字号.二号, font: 字体.黑体)[#it.body.text]
    } else if it.level == 2 {
      // set par(leading: 1.25em)
      // v(0em, weak: true)
      align(center)[
        #text(
          font: 字体.黑体, 
          size: 字号.小二,
          spacing: 1em
        )[#it.body.text]
      ]
      v(1em)
    }
  }

  content
}