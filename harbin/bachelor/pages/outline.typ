#import "../../../common/components/typography.typ": no_numbering_chapter_title

#let outline_page() = [
  #set par(first-line-indent: 0em)

  #[
    #show heading: none
    #no_numbering_chapter_title(title: "目录")
  ]

  #outline(title: align(center)[目录], indent: auto)
]