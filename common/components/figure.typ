#let algorithm_figure(content, caption: [], supplement: [], label-name: "") = {
  let fig = figure(
    [#line(length: 100%, stroke: 0.05mm)
      #v(0.5em, weak: true)
      #align(left)[
        #content
      ]
    ],
    kind: "algorithm",
    supplement: supplement,
    caption: caption,
  )
  [
    #if label == "" {
      [
        #line(length: 100%, stroke: 0.3mm)
        #fig
        #line(length: 100%, stroke: 0.3mm)]
    } else {
      let new-label = label(label-name)
      box[
        #line(length: 100%, stroke: 0.3mm)
        #v(0.75em, weak: true)
        #fig
        #new-label
        #v(0.5em, weak: true)
        #line(length: 100%, stroke: 0.3mm)
      ]
    }
  ]
}