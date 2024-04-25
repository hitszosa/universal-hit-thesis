#import "../config/constants.typ": special_chapter_titles

#let achievement(
  content,
) = [

  #heading(special_chapter_titles.成果, level: 1, numbering: none)

  #content
]