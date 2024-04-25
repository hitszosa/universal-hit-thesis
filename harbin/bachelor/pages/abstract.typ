#import "../../../common/theme/type.typ": 字体, 字号
#import "../config/constants.typ": special_chapter_titles

#let abstract_cn(
  content,
  keywords: (),
) = {
  set par(
    first-line-indent: 2em,
    justify: true,
    leading: 1em,
  )

  heading(special_chapter_titles.摘要, level: 1)

  text(
    font: 字体.宋体,
    size: 字号.小四,
  )[#content]

  let abstract_key_words(content) = {
    set par(first-line-indent: 0em)
    text(font: 字体.黑体)[关键词：]
    text(font: 字体.宋体)[#content.join("，")]
  }

  abstract_key_words(keywords)
}

#let abstract_en(
  content,
  keywords: (),
) = {
  set par(
    first-line-indent: 2em,
    justify: true,
    leading: 1em,
  )

  heading(special_chapter_titles.Abstract, level: 1)

  text(
    font: 字体.宋体,
    size: 字号.小四,
  )[#content]

  let abstract_key_words(content) = {
    set par(first-line-indent: 0em)

    text(font: 字体.宋体, weight: "bold", "Keywords:  ")
    text(font: 字体.宋体)[#content.join("，")]
  }

  abstract_key_words(keywords)
}