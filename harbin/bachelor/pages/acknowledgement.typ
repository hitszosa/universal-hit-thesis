#import "../config/constants.typ": special_chapter_titles
#import "../../../common/components/typography.typ": no_numbering_chapter_title

#let acknowledgement(
  content,
) = [

  #no_numbering_chapter_title(title: special_chapter_titles.致谢)

  #content
]