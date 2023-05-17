#import "../../../theme/type.typ": *

#let conf(content) = {

  show heading: it => {

    if it.level == 1 {
      text(size: 字号.二号, font: 字体.黑体)[#it.body.text]
    } else if it.level == 2 {
      set par(leading: 1.25em)
      v(1em)
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