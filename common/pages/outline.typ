#import "../config/constants.typ": special-chapter-titles
#import "../theme/type.typ": 字体
#import "../components/header.typ": use-hit-header
#import "../utils/states.typ": default-header-text-state

#let outline-page(
  use-same-header-text: false,
  bilingual: false
) = [
  #context [
  #let default-header-text = default-header-text-state.get()
  #let header-text = if use-same-header-text {
    special-chapter-titles.目录
  } else { 
    default-header-text
  }
  #show: use-hit-header.with(
  header-text: header-text)

  #set par(first-line-indent: 0em)

  #[
    #show heading: none
    #heading(special-chapter-titles.目录, level: 1, outlined: false)
  ]

  #show outline.entry: (entry, label: <outline-page-modified-entry>) => {

    if entry.at("label", default: none) == label {
      entry // prevent infinite recursion
    } else {
      let fields = entry.fields()
      if entry.level == 1 {
        fields.body = [#text(font: 字体.黑体)[#fields.body]]
      }
      [#outline.entry(..fields.values()) #label]
    }
  }

  #outline(title: align(center)[#special-chapter-titles.目录], indent: n => [#h(1em)] * n)

  #if bilingual {
    pagebreak()
    // TODO 添加英文版目录
  }
  ]
]