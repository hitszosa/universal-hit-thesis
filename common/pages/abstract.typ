#import "../theme/type.typ": 字体, 字号
#import "../components/header.typ": use-hit-header
#import "../components/enheading.typ": enheading
#import "../utils/states.typ": special-chapter-titles-state

#let abstract-cn(
  content,
  keywords: (),
  use-same-header-text: false,
) = context {

  let special-chapter-titles = special-chapter-titles-state.get()

  show: use-hit-header.with(
    header-text: if use-same-header-text {
      special-chapter-titles.摘要
    }
  )

  heading(special-chapter-titles.摘要, level: 1)
  enheading(special-chapter-titles.摘要-en)

  text(
    font: 字体.宋体,
    size: 字号.小四,
    tracking: 0.72pt
  )[#content]

  let abstract-key-words(content) = {
    par(first-line-indent: 0em)[
      #text(font: 字体.黑体)[关键词：]
      #text(font: 字体.宋体)[#content.join("；")]
    ]
  }

  abstract-key-words(keywords)
}

#let abstract-en(
  content,
  keywords: (),
  use-same-header-text: false,
) = context {

  let special-chapter-titles = special-chapter-titles-state.get()

  show: use-hit-header.with(
    header-text: if use-same-header-text {
      special-chapter-titles.Abstract
    }
  )

  heading(special-chapter-titles.Abstract, level: 1)
  enheading(special-chapter-titles.Abstract-en)

  set par(leading: 0.775em, spacing: 0.77em)

  let abstract-key-words(content) = {
    par(first-line-indent: 0em)[
      #text(font: 字体.宋体, weight: "bold", "Keywords: ")
      #text(font: 字体.宋体)[#content.join(", ")]
    ]
  }

  text(
    font: 字体.宋体,
    size: 字号.小四,
    tracking: 0.2pt,
    spacing: 4.76pt,
  )[
    #content
    #abstract-key-words(keywords)
  ]
}