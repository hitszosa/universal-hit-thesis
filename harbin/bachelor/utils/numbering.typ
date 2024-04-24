#let heading_numbering(..nums) = {
  let nums_vec = nums.pos()

  if nums_vec.len() == 1 [
    第 #numbering("1", ..nums_vec) 章
  ] else {
    numbering("1.1", ..nums_vec)
  }
}