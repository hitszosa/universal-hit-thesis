#import "../config/constants.typ": special-chapter-titles
#import "../components/header.typ": use-hit-header

#let achievement(
  content,
) = [
  #show: use-hit-header.with(header-text: special-chapter-titles.成果)
  #heading(special-chapter-titles.成果, level: 1, numbering: none)

  #content
]