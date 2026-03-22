/* 
旧版三线表已弃用，推荐使用新版原生写法
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  stroke: none,
  table.hline(),
  [t], [1], [2], [3],
  table.hline(stroke: .5pt),
  [y], [0.3s], [0.4s], [0.8s],
  table.hline(),
)
*/

#let three-line-table(..args) = {
  let values = args.pos()
  let header-values = if values.len() > 0 {
    values.at(0)
  } else {
    ()
  }
  let content-values = if values.len() > 1 {
    values.slice(1)
  } else {
    ()
  }

  let table-cell(content: none) = {
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
      columns: header-values.len(),
      ..header-values.map(content => table-cell(content: content)).flatten(),
    )
  ]
  v(0em, weak: true)
  line(length: 100%, stroke: 0.05mm)

  if content-values.len() > 0 {
    v(0em, weak: true)
    pad(y: 0.25em)[
      #grid(
        columns: header-values.len(),
        row-gutter: 0.25em,
        ..content-values.map(line-content => {
          (..line-content.map(content => table-cell(content: content)).flatten(),)
        }).flatten(),
      )
    ]
    v(0em, weak: true)
    line(length: 100%, stroke: 0.3mm)
  }
}

// FIXME: 续表头、尾不该出现时，仍然导致2em的row-gutter
#let table-multi-page(continue-header-label: [], continue-footer-label: [], ..table-args) = context {
  let columns = table-args.named().at("columns", default: 1)
  let column-amount = if type(columns) == int {
    columns
  } else if type(columns) == array {
    columns.len()
  } else {
    1
  }

  // Check as show rule for appearance of a header or a footer in grid if value is specified
  let label-has-content = value => value.has("children") and value.children.len() > 0 or value.has("text")

  // Counter of tables so we can create a unique table-part-counter for each table
  let table-counter = counter("table")
  table-counter.step()

  // Counter for the amount of pages in the table
  let table-part-counter = counter("table-part" + str(table-counter.get().first()))

  show <table-footer>: footer => {
    table-part-counter.step()
    context if table-part-counter.get() != table-part-counter.final() and label-has-content(continue-footer-label) {
      footer
    }
  }

  show <table-header>: header => {
    table-part-counter.step()
    context if (table-part-counter.get().first() != 1) and label-has-content(continue-header-label) {
      header
    }
  }

  grid(
    inset: 0mm,
    row-gutter: 2mm,
    grid.header(grid.cell(align(right + bottom)[#continue-header-label <table-header>])),
    ..table-args,
    grid.footer(grid.cell(align(right + top)[#continue-footer-label <table-footer> ]))
  )
}

