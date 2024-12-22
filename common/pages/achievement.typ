#import "../components/header.typ": use-hit-header
#import "../utils/states.typ": special-chapter-titles-state

#let achievement(
  content,
  use-same-header-text: false,
) = context [

  #let special-chapter-titles = special-chapter-titles-state.get()

  #show: use-hit-header.with(
    header-text: if use-same-header-text {
      special-chapter-titles.成果
    }
  )

  #heading(special-chapter-titles.成果, level: 1, numbering: none)

  #content
]