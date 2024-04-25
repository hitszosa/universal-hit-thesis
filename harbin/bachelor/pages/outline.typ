#import "../config/constants.typ": special_chapter_titles

#let outline_page() = [
  #set par(first-line-indent: 0em)

  #[
    #show heading: none
    #heading(special_chapter_titles.目录, level: 1)
  ]

  #outline(title: align(center)[#special_chapter_titles.目录], indent: auto)
]