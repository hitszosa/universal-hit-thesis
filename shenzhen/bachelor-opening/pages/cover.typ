#import "../../../common/theme/type.typ": 字体, 字号
#import "../../../common/config/constants.typ": current-date
#import "../../../common/utils/states.typ": thesis-info-state
#import "../utils/states.typ": thesis-type-state
#import "../../../common/components/typography.typ": u

#let cover-primary(
  title-cn: "",
  title-en: "",
  author: "",
  student-id: "",
  supervisor: "",
  profession: "",
  college: "",
  reply-date: "",
  institute: "",
  year: current-date.year(),
  month: current-date.month(),
  day: current-date.day(),
) = {
  align(center)[

    #v(50pt)

    #text(
      size: 字号.小初,
      font: 字体.华文新魏,
      weight: "bold",
    )[*哈尔滨工业大学深圳校区\
      #thesis-type-state.get()论文开题报告*]

    #v(32pt)
    #show table.cell: it => {
      set underline(offset: .15em, stroke: .06em, evade: false)
      set par(justify: true, leading: 1.25em)
      if it.y == 0 {
        set text(size: 字号.小二, font: 字体.黑体)
        if it.x == 0 {
          it
        } else {
          underline(it)
        }
      } else {
        if it.x == 0 {
          set text(size: 字号.小三, font: 字体.黑体)
          it
        } else {
          set text(size: 字号.小三, font: 字体.宋体)
          underline(it)
        }
      }
    }
    #table(
      inset: (x: 0.5em, top: 1em, bottom: 0.6em),
      align: center + horizon,
      stroke: none,
      columns: (3.51cm, 8.75cm),
      align(top)[题#h(2.5em)目], u(title-cn),
      [], [],
      [姓#h(3.5em)名], u(author),
      [学#h(3.5em)号], u(student-id),
      [学#h(3.5em)院], u(college),
      [专#h(3.5em)业], u(profession),
      [指#h(0.5em)导#h(0.5em)教#h(0.5em)师], u(supervisor),
      [日#h(3.5em)期], u[#year.#month.#day],
    )
  ]
}

#let cover() = {
  context {
    let thesis-info = thesis-info-state.get()
    cover-primary(
      title-cn: thesis-info.at("title-cn"),
      title-en: thesis-info.at("title-en"),
      author: thesis-info.at("author"),
      student-id: thesis-info.at("student-id"),
      supervisor: thesis-info.at("supervisor"),
      profession: thesis-info.at("profession"),
      college: thesis-info.at("college"),
      institute: thesis-info.at("institute"),
      year: thesis-info.at("year"),
      month: thesis-info.at("month"),
      day: thesis-info.at("day"),
    )
  }
}
