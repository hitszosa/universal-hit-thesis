#import "../../../common/theme/type.typ": 字体, 字号
#import "../utils/states.typ": cover_header_active, cover_footer_active, perface_header_active

#let cover(
  title: "",
  name: "",
  student_id: "",
  mentor: "",
  profession: "",
  collage: "",
  reply_data: "",
  institute: "",
) = {
  cover_footer_active.update(true)

  align(center)[

    #let space_scale_ratio = 1.6

    #align(right)[
      #text(size: 字号.四号, font: 字体.宋体)[密级：公开]
    ]

    #v(字号.小四 * 3 * space_scale_ratio)

    #text(size: 字号.小二, font: 字体.宋体)[*本科毕业论文（设计）*]

    #v(字号.小四 * 2 * space_scale_ratio)

    #text(size: 字号.二号, font: 字体.黑体)[#title]

    #v(字号.小四 * 1 * space_scale_ratio)

    #v(字号.二号 * 3 * space_scale_ratio)

    #v(字号.小四 * space_scale_ratio)

    #let cover_info_key(content) = {
      align(right)[
        #text(size: 字号.四号, font: 字体.黑体)[#content]
      ]
    }

    #let cover_info_colon(content) = {
      align(left)[
        #text(size: 字号.四号, font: 字体.黑体)[#content]
      ]
    }

    #let cover_info_value(content) = {
      align(left)[
        #text(size: 字号.四号, font: 字体.宋体)[#content]
      ]
    }

    #let key_width = 字号.四号 * (4 + 0.5 * 3)

    #grid(
      columns: (auto, 1em, auto),
      rows: (字号.四号, 字号.四号),
      row-gutter: 1.5em,
      cover_info_key(text(spacing: (key_width - 3em) / 2)[本 科 生]),
      cover_info_colon[：],
      cover_info_value(name),
      cover_info_key(text(spacing: (key_width - 2em))[学 号]),
      cover_info_colon[：],
      cover_info_value(student_id),
      cover_info_key(text(spacing: 0.5em)[指 导 教 师]),
      cover_info_colon[：],
      cover_info_value(mentor),
      cover_info_key(text(spacing: (key_width - 2em))[专 业]),
      cover_info_colon[：],
      cover_info_value(profession),
      cover_info_key(text(spacing: (key_width - 2em))[学 院]),
      cover_info_colon[：],
      cover_info_value(collage),
      cover_info_key(text(spacing: 0.5em)[答 辩 日 期]),
      cover_info_colon[：],
      cover_info_value(reply_data),
      cover_info_key(text(spacing: (key_width - 2em))[学 校]),
      cover_info_colon[：],
      cover_info_value(institute),
    )
  ]

  cover_header_active.update(false)
  perface_header_active.update(true)
  pagebreak()
  cover_footer_active.update(false)
  counter(page).update(1)
}
