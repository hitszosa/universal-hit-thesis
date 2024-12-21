#import "../../common/theme/type.typ": 字体, 字号
#import "components/typography.typ": use-heading-main, use-heading-preface, use-heading-end
#import "../../common/components/header.typ": use-hit-header
#import "components/footer.typ": use-footer-preface, use-footer-main
#import "config/constants.typ": special-chapter-titles, 
#import "../../common/config/constants.typ": current-date, main-text-line-spacing-multiplier, single-line-spacing
#import "utils/states.typ": thesis-info-state, bibliography-state
#import "../../common/utils/states.typ": default-header-text-state
#import "@preview/cuti:0.2.1": show-cn-fakebold
#import "@preview/i-figured:0.2.4": show-figure, reset-counters, show-equation
#import "@preview/lovelace:0.2.0": setup-lovelace
#import "pages/cover.typ": cover
#import "pages/abstract.typ": abstract-cn as abstract-cn-page, abstract-en as abstract-en-page
#import "../../common/pages/outline.typ": outline-page
#import "pages/conclusion.typ": conclusion as conclusion-page
#import "pages/bibliography.typ": bibliography-page
#import "pages/acknowledgement.typ": acknowledgement as acknowledgement-page
#import "pages/achievement.typ": achievement as achievement-page
#import "pages/declaration-of-originality.typ": declaration-of-originality

#let preface(content) = {

  context {
    let header-text = default-header-text-state.get()
    show: use-hit-header.with(header-text: header-text)
    show: use-footer-preface

    show: use-heading-preface

    set page(numbering: "I")
    counter(page).update(1)

    content
  }

}

#let main(
  content,
  figure-options: (:),
) = {

  figure-options = figure-options + (
    extra-kinds: (),
    extra-prefixes: (:),
  )

  set page(numbering: "1")

  show: use-heading-main
  show: use-footer-main

  show heading: reset-counters.with(extra-kinds: ("algorithm",) + figure-options.extra-kinds)
  show figure: show-figure.with(
    numbering: "1-1",
    extra-prefixes: ("algorithm": "algo:") + figure-options.extra-prefixes,
  )
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: "algorithm"): set figure.caption(position: top)
  show figure: set text(size: 字号.五号)

  show raw.where(block: false): box.with(
    fill: rgb("#fafafa"),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  show raw.where(block: false): text.with(
    font: 字体.代码,
    size: 10.5pt,
  )
  show raw.where(block: true): block.with(
    fill: rgb("#fafafa"),
    inset: 8pt,
    radius: 4pt,
    width: 100%,
  )
  show raw.where(block: true): text.with(
    font: 字体.代码,
    size: 10.5pt,
  )

  show math.equation: show-equation.with(numbering: "(1-1)")

  show: setup-lovelace

  show ref: it => {
    let eq = math.equation
    let el = it.element
    if el != none and el.func() == eq {
      // Override equation references.
      numbering(
        el.numbering,
        ..counter(eq).at(el.location()),
      )
    } else {
      // Other references as usual.
      it
    }
  }

  counter(page).update(1)

  content
}


#let ending(content) = {

  show: use-heading-end

  set heading(numbering: none)

  content
}

#let ending-content(conclusion: none, achievement: none, acknowledgement: none) = {
  if conclusion != none {

    conclusion-page[
      #conclusion
    ]

    pagebreak()

  }

  bibliography-page()

  pagebreak()

  if achievement != none {
    achievement-page[
      #achievement
    ]
    pagebreak()
  }

  declaration-of-originality()

  pagebreak()

  if acknowledgement != none {
    acknowledgement-page[
      #acknowledgement
    ]
  }
}

#let doc(
  content,
  thesis-info: (:),
  abstract-cn: none,
  keywords-cn: (),
  abstract-en: none,
  keywords-en: (),
  figure-options: (:),
  bibliography: none,
  conclusion: none, 
  achievement: none, 
  acknowledgement: none
) = {
  set document(
    title: thesis-info.at("title-cn"),
    author: thesis-info.author,
  )

  thesis-info-state.update(current => {
    current + thesis-info
  })

  bibliography-state.update(current => bibliography)

  default-header-text-state.update(current => "哈尔滨工业大学本科毕业论文（设计）")

  set page(
    paper: "a4",
    margin: (top: 3.8cm, left: 3cm, right: 3cm, bottom: 3cm),
  )

  show: show-cn-fakebold

  set text(lang: "zh", region: "cn")

  cover()

  set par(first-line-indent: 2em, leading: main-text-line-spacing-multiplier * single-line-spacing - 1em, justify: true, spacing: 1em)

  set text(font: 字体.宋体, size: 字号.小四)

  show: preface

  if abstract-cn != none {
    abstract-cn-page(keywords: keywords-cn)[
      #abstract-cn
    ]
  }

  if abstract-en != none {
    abstract-en-page(keywords: keywords-en)[
      #abstract-en
    ]
  }

  outline-page()

  figure-options = figure-options + (
    extra-kinds: (),
    extra-prefixes: (:),
  )

  show: main.with(figure-options: figure-options)

  content

  show: ending

  ending-content(
    conclusion: conclusion,
    achievement: achievement,
    acknowledgement: acknowledgement
  )

}