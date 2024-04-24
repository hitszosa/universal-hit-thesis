#import "../../../common/components/typography.typ": no_numbering_chapter_title
#import "../utils/states.typ": perface_header_active, perface_footer_active, body_header_active, body_footer_active
#import "../config/constants.typ": special_chapter_titles

#let outline_page() = [
  #set par(first-line-indent: 0em)

  #[
    #show heading: none
    #no_numbering_chapter_title(title: special_chapter_titles.目录)
  ]

  #outline(title: align(center)[#special_chapter_titles.目录], indent: auto)

  #perface_header_active.update(false)
  #body_header_active.update(true)
  #pagebreak()
  #perface_footer_active.update(false)
  #body_footer_active.update(true)
  #counter(page).update(1)
]