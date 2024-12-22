#import "../theme/type.typ": 字体, 字号
#import "../config/constants.typ": page-margins, distance-to-the-edges
#import "../config/constants.typ": special-chapter-titles
#import "../utils/states.typ": default-header-text-state

#let use-hit-header(header-text: none, content) =  {
  let default-header-text = context default-header-text-state.get()
  if header-text == none {
    header-text = default-header-text
  }
  let header-body = [
    #set align(center)
    #text(font: 字体.宋体, size: 字号.小五)[
      #block(below: 2.2pt + 0.25em)[
        #header-text
      ]
    ]
    #line(length: 100%, stroke: 2.2pt)
    #v(2.2pt, weak: true)
    #line(length: 100%, stroke: 0.6pt)
  ]

  context {
    let header-body-size = measure(header-body)
    let header-ascent = page-margins.top - distance-to-the-edges.header - header-body-size.height
    set page(
      header: {
        [
          #header-body
        ]
      },
      header-ascent: header-ascent,
    )
    content
  }
}