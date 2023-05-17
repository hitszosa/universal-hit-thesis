#import "../theme/type.typ": *
#import "../config/constant.typ": 摘要
#import "../utils/counters.typ": after_cover_counter, include_after_abstract_counter

#let show_include_after_abstract(content) = {
  locate(loc => {
    if include_after_abstract_counter.at(loc).first() > 0 {
      content
    }
  })
}
#let show_after_cover(content) = {
  locate(loc => {
    if after_cover_counter.at(loc).first() > 0 {
      content
    }
  })
}

#set page(
  paper: "a4",
  margin: (top: 3.8cm, left: 3cm, right: 3cm, bottom: 3cm)
)

#set page(
  header: {
    show_after_cover[
      #set align(center)
      #set text(font: 字体.宋体, size: 字号.小五, baseline: 6pt)
      #set par(leading: 0em)
      #text[
        哈尔滨工业大学本科毕业论文（设计）
      ]
      #line(length: 100%)
      #v(2pt, weak: true)
      #line(length: 100%, stroke: 0.1em)
    ]

  }
)

#set page(
  footer: {
    set align(center)
    locate(loc => {
      show_include_after_abstract[
        #text()[
          \- #counter(page).at(loc).first() \-
        ]
      ]
    })
  }
)

#align(center)[

  #let space_scale_ratio = 1.6

  #align(right)[
    #text(size: 字号.四号, font: 字体.宋体)[密级：公开]
  ]

  #v(字号.小四 * 3 * space_scale_ratio)

  #text(size: 字号.小二, font: 字体.宋体)[本科毕业论文（设计）]

  #v(字号.小四 * 2 * space_scale_ratio)

  #heading(level: 1)[
    #text(size: 字号.二号, font: 字体.黑体)[你的论文题目]
  ]

  #v(字号.小四 * 1 * space_scale_ratio)

  #v(字号.二号 * 3 * space_scale_ratio)
  
  #v(字号.小四 * space_scale_ratio)

  #let cover_info_key(content) = {
    align(right)[
      #text(size: 字号.四号, font: 字体.黑体, weight: "bold")[#content]
    ]
  }

  #let cover_info_colon(content) = {
    align(left)[
      #text(size: 字号.四号, font: 字体.黑体, weight: "bold")[#content]
    ]
  }

  #let cover_info_value(content) = {
    align(left)[
      #text(size: 字号.四号, font: 字体.宋体)[#content]
    ]
  }

  #let key_width = 字号.四号 * (4 + 0.5 * 3)

  #grid(
    columns: (auto, auto, auto),
    rows: (字号.四号, 字号.四号),
    row-gutter: 1.5em,
    cover_info_key(text(spacing: (key_width - 3em) /2)[本 科 生]),
    cover_info_colon[：],
    cover_info_value("xxx"),
    cover_info_key(text(spacing: (key_width - 2em))[学 号]),
    cover_info_colon[：],
    cover_info_value("xxxxxxxxxx"),
    cover_info_key(text(spacing: 0.5em)[指 导 教 师]),
    cover_info_colon[：],
    cover_info_value("xxx 教授"),
    cover_info_key(text(spacing: (key_width - 2em))[专 业]),
    cover_info_colon[：],
    cover_info_value("xxx 专业"),
    cover_info_key(text(spacing: (key_width - 2em))[学 院]),
    cover_info_colon[：],
    cover_info_value("xxx 学院"),
    cover_info_key(text(spacing: 0.5em)[答 辩 日 期]),
    cover_info_colon[：],
    cover_info_value("xxxx 年 xx 月 xx 日"),
    cover_info_key(text(spacing: (key_width - 2em))[学 校]),
    cover_info_colon[：],
    cover_info_value("xxxxxxx"),
  )
]

#after_cover_counter.update(1)
#pagebreak()

#show heading: it => {
  if it.level == 2 {

    align(center)[
      #text(
        font: 字体.黑体, 
        size: 字号.小二,
        spacing: 1em
      )[#it.body.text]
    ]

    locate(loc => {
      if it.body.text == 摘要 {
        include_after_abstract_counter.update(1)
      }
    })
  }
}

#counter(page).update(1)

#par(first-line-indent: 2em, justify: true, leading: 1em)[

  #heading(level: 2)[#摘要]

  #linebreak()

  #text(
    font: 字体.宋体,
    size: 字号.小四,
  )[#lorem(200)]

  #let abstract_key_words(content) = {
    set par(first-line-indent: 0em)

    text(font: 字体.黑体)[关键词：]
    text(font: 字体.宋体)[#content.join("，")]
    
  }

  #abstract_key_words(("关键词1", "关键词2"))

]

#pagebreak()

#par(first-line-indent: 2em, justify: true, leading: 1em)[

  #heading(level: 2)[Abstract]

  #linebreak()

  #text(
    font: 字体.宋体,
    size: 字号.小四,
  )[#lorem(200)]

  #let abstract_key_words(content) = {
    set par(first-line-indent: 0em)

    text(font: 字体.宋体)[Keywords: ]
    text(font: 字体.宋体)[#content.join("，")]
    
  }

  #abstract_key_words(("keyword1", "keyword2"))

]
