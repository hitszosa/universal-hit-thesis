#import "../config/constants.typ": special_chapter_titles

#let acknowledgement(
  content,
) = [
  #heading(level: 2, special_chapter_titles.致谢)

  #content

  #pagebreak()
]