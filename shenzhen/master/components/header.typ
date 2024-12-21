#import "../../../common/theme/type.typ": 字体, 字号
#import "../config/constants.typ": page-margins, distance-to-the-edges

#let use-hit-header(content) = {
  let header-body = [
    #set align(center)
    #text(font: 字体.宋体, size: 字号.小五)[
      #block(below: 2.2pt + 0.25em)[
        哈尔滨工业大学本科毕业论文（设计）
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