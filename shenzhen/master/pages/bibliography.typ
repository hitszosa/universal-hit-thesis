#import "../config/constants.typ": special-chapter-titles
#import "../utils/states.typ": bibliography-state
#import "../utils/bilingual-bibliography.typ": bilingual-bibliography
#import "../components/header.typ": use-hit-header

#let bibliography-page() = context [
  #let bibliography = bibliography-state.get()
  #assert(bibliography != none, message: "请在 doc.with 调用处传入合法的 bibliography 函数。")

  #show: use-hit-header.with(header-text: special-chapter-titles.参考文献)

  #heading(special-chapter-titles.参考文献, level: 1, numbering: none)

  #bilingual-bibliography(bibliography: bibliography, title: none)
  // #bibliography(title: none)
]