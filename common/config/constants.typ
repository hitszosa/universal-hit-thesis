#let special-chapter-titles-default-value = (
  摘要: text(spacing: 1em)[摘 要],
  Abstract: "Abstract",
  目录: text(spacing: 1em)[目 录],
  结论: text(spacing: 1em)[结 论],
  参考文献: "参考文献",
  致谢: text(spacing: 1em)[致 谢],
)

#let current-date = datetime.today()

#let thesis-info-default-value = (
  title-cn: "",
  title-en: "",
  author: "▢▢▢",
  supervisor: "▢▢▢ 教授",
  profession: "▢▢▢ 专业",
  collage: "▢▢▢ 学院",
  institute: "哈尔滨工业大学",
  year: current-date.year(),
  month: current-date.month(),
  day: current-date.day(),
)

#let page-margins = (
  top: 3.8cm,
  bottom: 3cm,
  left: 3cm,
  right: 3cm,
)

#let distance-to-the-edges = (
  header: 3cm,
  footer: 2.3cm,
)

#let main-text-line-spacing-multiplier = 1.25
#let single-line-spacing = 19.75pt