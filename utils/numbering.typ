#let heading_numbering(..nums) = {

  let nums_vec = nums.pos()

  if nums_vec.len() > 0 {
    let without_first = nums_vec.slice(1, nums_vec.len())

    if without_first.len() == 1 {
      [第] + numbering("1", ..without_first) + [章]
    } else {
      numbering("1.1", ..without_first)
    }

    
  }
}