#import "../../common/theme/type.typ": 字体, 字号
#import "../../common/components/typography.typ": use-heading-main, use-heading-preface, use-heading-end
// #import "../../common/components/header.typ": use-hit-header
#import "components/header.typ": use-hit-header
// #import "../../common/components/footer.typ": use-footer-preface, use-footer-main
#import "components/footer.typ": use-footer-preface, use-footer-main
#import "config/constants.typ": thesis-info-additional
#import "../../common/config/constants.typ": current-date, main-text-line-spacing-multiplier, single-line-spacing
#import "../../common/utils/states.typ": default-header-text-state, bibliography-state, thesis-info-state, digital-signature-option-state
#import "utils/states.typ": thesis-type-state
#import "@preview/cuti:0.4.0": show-cn-fakebold
#import "@preview/i-figured:0.2.4": show-figure, reset-counters, show-equation
#import "@preview/lovelace:0.2.0": setup-lovelace
#import "@preview/numbly:0.1.0": numbly
#import "pages/cover.typ": cover
#import "@preview/itemize:0.2.0" as el
#import "../../common/pages/outline.typ": outline-page
#import "../../common/pages/bibliography.typ": bibliography-page

#let preface(content) = {

  [#metadata("") <preface-start>]

  context {
    let header-text = default-header-text-state.get()
    // NOTE: Moved to outline-page().
    // show: use-hit-header.with(header-text: header-text)
    show: use-footer-preface

    show: use-heading-preface.with(
      heading-above: (1em, ),
      heading-below: (1.35em, ),
    )

    set page(numbering: "I")
    counter(page).update(1)

    content
  }

}

#let main(
  content,
  figure-options: (:),
) = {

  [#metadata("") <main-start>]

  figure-options = figure-options + (
    extra-kinds: (),
    extra-prefixes: (:),
  )

  set page(numbering: "1")

  show: use-heading-main.with(
    heading-above: (1em, 1.22em, 1.315em, 0.95em, ),
    heading-below: (1.4em, 1.28em, 1.31em, 0.94em, ),
  )
  show: use-footer-main

  // Overrides common heading format.
  // There are different lengths of whitespaces between numbers and headings
  // of outline entries in Word template. To be specific, level-1 headings
  // have a bit wider whitespaces than those of other levels.
  set heading(numbering: numbly(
    "{1}  ",
    "{1}.{2}  ",
    "{1}.{2}.{3}  ",
    "{1}.{2}.{3}.{4}  ",
    "{1}.{2}.{3}.{4}.{5}  ",
  ))

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

  // Main scope is isolated with perface scope. Should add header config again.
  context {
    let header-text = default-header-text-state.get()
    show: use-hit-header.with(header-text: header-text)
    content
  }
}


#let ending(content) = {

  [#metadata("") <ending-start>]

  show: use-heading-end

  set heading(numbering: none)

  content
}

#let ending-content() = context {
  let header-text = default-header-text-state.get()
  bibliography-page(use-header: use-hit-header.with(header-text: header-text))
}

#let doc(
  content,
  thesis-info: (:),
  thesis-type: "论文", // '论文' or '设计'
  keywords-cn: (),
  keywords-en: (),
  figure-options: (:),
  bibliography: none,
  digital-signature-option: (:),
) = {
  set document(
    title: thesis-info.at("title-cn"),
    author: thesis-info.author,
  )

  thesis-info-state.update(current => {
    current + thesis-info-additional + thesis-info
  })

  bibliography-state.update(current => bibliography)

  default-header-text-state.update(current => "哈尔滨工业大学深圳校区毕业论文（设计）开题报告")

  digital-signature-option-state.update(current => current + digital-signature-option)

  thesis-type-state.update(current => thesis-type)

  set page(
    paper: "a4",
    margin: (top: 3.18cm, left: 2.54cm, right: 2.54cm, bottom: 3.18cm),
  )

  show: show-cn-fakebold

  set text(lang: "zh", region: "cn")

  // - XITS Math: A STIX-fork, Times-New-Roman-like math font.
  // - Times New Roman: Required preset in Word template, but not suitable
  // for equation rendering.
  // - New Computer Modern Math: Typst default.
  show math.equation: set text(font: ("XITS Math", "Times New Roman", "New Computer Modern Math"))

  show: el.paragraph-enum-list.with(indent: 2em, hanging-indent: -2em)

  cover()

  let par-spacing-base = 1.55em
  let par-spacing-multiplier = 1.25
  let leading = par-spacing-multiplier * par-spacing-base - 1em
  let spacing = par-spacing-multiplier * par-spacing-base - 1em
  set par(
    first-line-indent: (
      amount: 2em,
      all: true,
    ), 
    leading: leading, 
    justify: true, 
    spacing: spacing
  )

  set text(font: 字体.宋体, size: 字号.小四)

  // All succeeding pages use a custom margin set.
  set page(
    paper: "a4",
    margin: (top: 3.8cm, left: 3cm, right: 3cm, bottom: 3cm),
  )
  
  // Keep preface heading rules scoped to the outline page.
  preface(context[
    #let header-text = default-header-text-state.get()
    #outline-page(
      par-leading: 0.89em,
      use-header: use-hit-header.with(header-text: header-text)
    )
  ])

  figure-options = figure-options + (
    extra-kinds: (),
    extra-prefixes: (:),
  )

  show: main.with(figure-options: figure-options)

  content

  show: ending

  ending-content()
}
