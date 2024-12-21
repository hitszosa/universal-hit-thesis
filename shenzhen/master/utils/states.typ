#import "../config/constants.typ": current-date

#let thesis-info-state = state(
  "thesis-info",
  (
    title-cn: "",
    title-en: "",
    author: "▢▢▢",
    author-en: "▢▢▢",
    student-id: "▢▢▢▢▢▢▢▢▢▢",
    supervisor: "▢▢▢ 教授",
    supervisor-en: "Prof. ▢▢▢",
    profession: "▢▢▢ 专业",
    profession-en: "▢▢▢",
    specialty: "▢▢▢ 学院",
    specialty-en: "▢▢▢",
    affiliation: "哈尔滨工业大学（深圳）",
    affiliation-en: "哈尔滨工业大学（深圳）",
    institute: "哈尔滨工业大学",
    institute-en: "哈尔滨工业大学",
    year: current-date.year(),
    month: current-date.month(),
    day: current-date.day(),
  ),
)

#let bibliography-state = state("bibliography")