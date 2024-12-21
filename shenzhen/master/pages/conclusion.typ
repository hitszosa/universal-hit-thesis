#import "../config/constants.typ": special-chapter-titles
#import "../components/header.typ": use-hit-header

#let conclusion(
  content,
) = [

  #show: use-hit-header.with(header-text: special-chapter-titles.结论)
  #heading(special-chapter-titles.结论, level: 1, numbering: none)

  #content
]