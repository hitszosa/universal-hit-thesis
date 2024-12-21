#import "../config/constants.typ": special-chapter-titles
#import "../components/header.typ": use-hit-header

#let personal-resume-page(
  content,
) = [

  #show: use-hit-header.with(header-text: special-chapter-titles.个人简历)
  #heading(special-chapter-titles.个人简历, level: 1, numbering: none)

  #content
]