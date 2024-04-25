#import "../config/constants.typ": special_chapter_titles

#let acknowledgement(
  content,
) = [

  #heading(special_chapter_titles.致谢, level: 1, numbering: none)

  #content
]