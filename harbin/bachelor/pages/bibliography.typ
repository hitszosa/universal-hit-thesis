#import "../config/constants.typ": special_chapter_titles

#let bibliography_page(
  bibliography,
) = [

  #heading(special_chapter_titles.参考文献, level: 1, numbering: none)

  #bibliography(title: none)
]