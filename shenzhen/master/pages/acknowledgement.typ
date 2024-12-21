#import "../config/constants.typ": special-chapter-titles
#import "../components/header.typ": use-hit-header

#let acknowledgement(
  content,
) = [
  #show: use-hit-header.with(header-text: special-chapter-titles.致谢)
  #heading(special-chapter-titles.致谢, level: 1, numbering: none)

  #content
]