#import "../../../common/theme/type.typ": 字体, 字号
#import "../../../common/components/typography.typ": no_numbering_chapter_title
#import "../config/constants.typ": special_chapter_titles
#import "../utils/states.typ": perface_footer_active

#let abstract_cn(
  content,
  keywords: (),
) = {
  perface_footer_active.update(true)

  set par(
    first-line-indent: 2em,
    justify: true,
    leading: 1em,
  )

  no_numbering_chapter_title(title: special_chapter_titles.摘要)

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

  pagebreak()
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

  no_numbering_chapter_title(title: special_chapter_titles.Abstract)

  text(
    font: 字体.宋体,
    size: 字号.小四,
  )[#content]

  let abstract_key_words(content) = {
    set par(first-line-indent: 0em)

    text(font: 字体.宋体, "Keywords:  ")
    text(font: 字体.宋体)[#content.join("，")]
  }

  abstract_key_words(keywords)

  pagebreak()
}