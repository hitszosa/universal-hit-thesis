 #let special_chapter_format_heading(it: none, font: none, size: none, weight: "regular") = {
  set text(font: font, size: size)

  text(weight: weight)[
    #if it != none {
      h(0.75em)
      it.body
    }
  ]

  v(0.5em)
}

#let main_format_heading(it: none, font: none, size: none, weight: "regular") = {
  set text(font: font, size: size)

  text(weight: weight)[
    #counter(heading).display()
    #if it != none {
      h(0.75em)
      it.body
    }
  ]

  v(0.5em)
}
