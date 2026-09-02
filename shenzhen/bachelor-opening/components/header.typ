#import "../../../common/theme/type.typ": 字体, 字号
#import "../../../common/config/constants.typ": page-margins, distance-to-the-edges
#import "../../../common/utils/states.typ": default-header-text-state

#let use-hit-header(header-text: none, content) = context {
  let default-header-text = default-header-text-state.get()

  let internal-header-text = if header-text == none {
    default-header-text
  } else {
    header-text
  }

  let header-body = [
    #set align(center)
    #text(font: 字体.宋体, size: 字号.小五)[
      #block(below: 2.2pt + 5.5pt)[
        #internal-header-text
      ]
    ]
    #line(length: 100%, stroke: 3pt)
    #v(2.7pt, weak: true)
    #line(length: 100%, stroke: 0.8pt)
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
      header-ascent: 8pt,
      // header-ascent: header-ascent,
    )
    content
  }
}