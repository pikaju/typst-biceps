#let flexwrap(
  flex: array,
  main-dir: ltr,
  cross-dir: ttb,
  cross-spacing: 0% + 0pt,
  ..children,
) = {
  if type(flex) != array {
    flex = children.pos().map(child => flex)
  }

  if main-dir in (ltr, rtl) and cross-dir in (ltr, rtl) {
    panic("The directions main-dir and cross-dir must be orthogonal.")
  }
  if flex.len() != children.pos().len() {
    panic("The given flex array's length does not match the number of children.")
  }

  let axis = if main-dir in (ltr, rtl) { "x" } else { "y" }

  return layout(((width, height)) => {
    let stack-children = ()
    let items = children.pos()

    return grid(columns: flex, ..children)
    while items.len() > 0 {
      items = items.slice()
    }


    return stack(
      dir: cross-dir,
      spacing: cross-spacing,
      ..stack-children,
    )
  })
}

#flexwrap(
  flex: (60%, 60%, 60%, 60%, 60%, 60%, 60%, 60%, 60%, 60%),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
  rect(width: 20pt, height: 20pt),
)
