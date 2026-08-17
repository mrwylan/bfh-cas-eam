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
  
  // 1. Configurazione della pagina e piè di pagina dinamico
  set page(
    paper: "a4",
    margin: (x: 2.5cm, top: 3cm, bottom: 2.5cm),
    header: align(right, text(size: 8.5pt, fill: luma(100), title)),
    
    // Gestione del piè di pagina in base alla posizione nel documento
    footer: context {
      let current_page = here().page()
      
      if current_page == 1 {
        // Il frontespizio (pagina 1) non ha alcuna numerazione
        none 
      } else {
        // Applica lo stile attivo (romano negli indici, arabo nel testo)
        align(center, counter(page).display())
      }
    }
  )

  // Tipografia e layout globale
  set text(font: "New Computer Modern", size: 11pt, lang: "de", region: "CH")
  set par(justify: true, leading: 0.65em)
  set heading(numbering: "1.1.1")

  // Gestione degli spazi dei titoli
  show heading: it => block(above: 1.5em, below: 1em, it)
  
  // Ogni titolo di primo livello (capitoli e bibliografia) inizia su una nuova pagina
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    it
  }
// Rinvii interni (Abbildungen, Tabellen, Abschnitte) dezent einfärben;
// bibliografische Zitate bleiben schwarz
show ref: it => {
if it.element != none {
text(fill: rgb("#274690"), it)
    } else {
it
    }
  }


  // --- BLOCCO TITOLO / FRONTESPIZIO (Pagina 1) ---
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

  // Blocco Abstract
  if abstract != none {
    align(center, block(width: 85%, inset: 1em, radius: 4pt, fill: luma(245))[
      #align(center)[#strong("Abstract")]
      #v(0.5em)
      #abstract
    ])
    v(2em)
  }

  // --- PARTE PREPARATORIA (Attivazione Numeri Romani per gli Indici) ---
  pagebreak()
  set page(numbering: "I") // Da qui in poi gli indici useranno I, II, III...

  // Indice dei contenuti (Table of Contents)
  outline(indent: auto, depth: 2)
  
  // Puoi inserire altri indici qui se necessario (es. immagini, tabelle)
  
  // --- CORPO DEL DOCUMENTO ---
  body
}
// Inserisci questa riga nel tuo template.typ o in cima a main.typ
    #show figure.where(kind: table): set block(breakable: true)
    
