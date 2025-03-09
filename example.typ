#import "lib.typ": flexwrap

#box(
  fill: blue,
  flexwrap(
    flex: (30% + 80pt, 1fr, 30%, 1fr, 20%, auto, 20%, 30%, 30%, 50pt, 1fr, 2fr),
    main-dir: ltr,
    main-spacing: 8pt,
    cross-dir: ttb,
    cross-spacing: 8pt,
    rect(width: 100%, height: 20pt)[30% + 80pt],
    rect(width: 100%, height: 20pt)[1fr],
    rect(width: 100%, height: 20pt)[30%],
    rect(width: 100%, height: 20pt)[1fr],
    rect(width: 100%, height: 20pt)[20%],
    rect(width: 30pt, height: 20pt)[auto],
    rect(width: 100%, height: 20pt)[20%],
    rect(width: 100%, height: 20pt)[30%],
    rect(width: 100%, height: 20pt)[30%],
    rect(width: 100%, height: 20pt)[50pt],
    rect(width: 100%, height: 20pt)[1fr],
    rect(width: 100%, height: 20pt)[2fr],
  ),
)
