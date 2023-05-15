#import "undergraduate-component.typ": *

#let song_ti = ("Times New Roman", "SimSun")

#set page(
  paper: "a4",
  margin: (x: 2.3cm, y: 2.3cm)
)

#align(center)[

  #let line_spacing = 18pt * 1.8

  #v(line_spacing * 2.5)

  #image("assets/hit-logo-cover.jpg", width: 30%)

  #v(line_spacing * 1)

  #text(size: 24pt, font: song_ti)[本科毕业论文（设计）开题报告]

  #v(line_spacing * 2)

  #heading(level: 1)[
    #text(size: 18pt, font: song_ti)[题目：你的论文题目]
  ]

  #v(line_spacing * 4)

  #let cover_info_text(content) = {
    text(
      font: song_ti,
      size: 16pt,
      bottom-edge: "descender",
    )[#content]
  }

  #let cover_info_key(content) = {
    rect(
      width: 100%,
      inset: 2pt,
      stroke: none,
    )[
      #par(justify: true)[
        #cover_info_text[#content]
      ]
    ]
    
  }

  #let cover_info_value(content) = {
    rect(
      width: 100%,
      inset: 2pt,
      stroke: (bottom: 1pt + black)
    )[
      #cover_info_text[#content]
    ]
    
  }

  #grid(
    columns: (72pt, 180pt),
    rows: (36pt, 36pt),
    gutter: 3pt,
    cover_info_key("专        业"),
    cover_info_value("你的专业"),
    cover_info_key("学        生"),
    cover_info_value("你的名字"),
    cover_info_key("学        号"),
    cover_info_value("你的学号"),
    cover_info_key("指导教师"),
    cover_info_value("你的指导老师"),
    cover_info_key("日        期"),
    cover_info_value("写报告的日期"),
  )

  #v(line_spacing * 2)

  #text(font: "LiSu", size: 18pt, weight: "black")[哈尔滨工业大学教务处制]

]