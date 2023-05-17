#import "../theme/type.typ": *

#let abstract_cn(
  content,
  keywords: ()
) = {

  set par(
    first-line-indent: 2em, 
    justify: true, 
    leading: 1em
  )

  heading(level: 2, "摘 要")

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
  keywords: ()
) = {

  set par(
    first-line-indent: 2em, 
    justify: true, 
    leading: 1em
  )

  heading(level: 2)[Abstract]

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