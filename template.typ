#import "markers.typ": kompendium-modus




#let conf(
  title: "Untitled Blueprint",
  subtitle: none,
  authors: (),
  eingereicht-von: none,
  kompendium: false,
  date: none,
  abstract: none,
  body
) = {
  kompendium-modus.update(kompendium)
  // Page setup
  set page(
    paper: "a4",
    margin: (x: 2.5cm, top: 3cm, bottom: 2.5cm),
    numbering: "1",
    header: align(right, text(size: 8.5pt, fill: luma(100), title))
  )

  // Typography layout
  set text(font: "Linux Libertine", size: 11pt, lang: "de", region: "CH")
  set par(justify: true, leading: 0.65em)
  set heading(numbering: "1.1.")

  // Show rules for clean heading layouts
  show heading: it => block(above: 1.5em, below: 1em, it)
  // Every top-level heading (chapters and the bibliography) starts on a new page.
  // `weak: true` suppresses the break when a heading already sits at the top of
  // a page (e.g. the first chapter right after the table of contents).
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    it
  }

  // Title Block
  align(center)[
    #block(text(weight: "bold", size: 2em, title))
    #if subtitle != none {
      v(0.4em)
      block(text(size: 1.2em, fill: luma(60), style: "italic", subtitle))
    }
    #v(1.5em)

 #if eingereicht-von != none {
      block(text(size: 1em, weight: "bold")[Eingereicht von: #eingereicht-von])
      v(0.8em)
    }

    #grid(
      columns: calc.min(authors.len(), 3),
      gutter: 2em,
      ..authors.map(author => align(center)[
        #strong(author.name) \
        #text(size: 9pt, fill: luma(80), author.affiliation) \
        #link(author.email)
      ])
    )

    #v(1em)
    #if date != none {
      text(style: "italic", date)
    }
  ]

  v(2em)

  // Abstract Block
  if abstract != none {
    align(center, block(width: 85%, inset: 1em, radius: 4pt, fill: luma(245))[
      #align(center)[#strong("Abstract")]
      #v(0.5em)
      #abstract
    ])
    v(2em)
  }

  // Table of Contents
  outline(indent: auto, depth: 2)
  pagebreak()





  body
}
