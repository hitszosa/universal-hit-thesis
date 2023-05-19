#let three_line_table(..args) = {
  let values = args.pos()
  let header_values = if values.len() > 0 {
    values.at(0)
  } else {
    ()
  }
  let content_values = if values.len() > 1 {
    values.slice(1)
  } else {
    ()
  }

  let table_cell(content: none) = {
    set align(center)
    rect(
      width: 100%,
      stroke: none,
    )[
      #content
    ]
  }
  line(length: 100%, stroke: 0.3mm)
  v(0em, weak: true)
  pad(y: 0.25em)[
    #grid(
      columns: header_values.len(),
      ..header_values.map(content=>table_cell(content: content)).flatten()
    )
  ]
  v(0em, weak: true)
  line(length: 100%, stroke: 0.05mm)

  if content_values.len() > 0 {
    v(0em, weak: true)
    pad(y: 0.25em)[
      #grid(
        columns: header_values.len(),
        row-gutter: 0.25em,
        ..content_values.map(line_content=>{
          (..line_content.map(content=>table_cell(content: content)).flatten())
        }).flatten()
      )
    ]
    v(0em, weak: true)
    line(length: 100%, stroke: 0.3mm)
  }
}