#import "../theme/type.typ": 字体, 字号
#import "../components/header.typ": use-hit-header
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

  text(
    font: 字体.宋体,
    size: 字号.小四,
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

  text(
    font: 字体.宋体,
    size: 字号.小四,
  )[#content]

  let abstract-key-words(content) = {
    par(first-line-indent: 0em)[
      #text(font: 字体.宋体, weight: "bold", "Keywords:  ")
      #text(font: 字体.宋体)[#content.join(", ")]
    ]
  }

  abstract-key-words(keywords)
}