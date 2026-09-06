#import "markers.typ": kompendium-modus, anhang-modus

// Einfacher, unauffälliger Block mit gleichmässigem Innen- und Aussenabstand
// (z. B. für Aufzählungen im Fliesstext, ohne Marker-Rahmen).
#let inset-block(inhalt) = block(inset: 1em, above: 1em, below: 1em)[#inhalt]

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
    header: align(right, box(width: auto, text(hyphenate: true, size: 8.5pt, fill: luma(100))[#set par(justify: false); #title])),
    
    // Gestione del piè di pagina in base alla posizione nel documento
    footer: context {
      let current_page = here().page()
      
      if current_page == 1 {
        // Il frontespizio (pagina 1) non ha alcuna numerazione
        none
      } else if anhang-modus.get() {
        // Nell'appendice: numerazione propria con prefisso "A-"
        align(center, "A-" + counter(page).display())
      } else {
        // Applica lo stile attivo (romano negli indici, arabo nel testo)
        align(center, counter(page).display())
      }
    }
  )

  // Tipografia e layout globale
  set text(font: "New Computer Modern", size: 11pt, lang: "de", region: "CH")
  set par(justify: true, leading: 0.65em)
  // Kapitelnummerierung: im Anhang wird die Stufe-1-Überschrift dynamisch als
  // "Anhang N:" dargestellt (N = eigener, im Anhang zurückgesetzter Zähler),
  // im übrigen Dokument bleibt die reguläre "1.1.1"-Nummerierung bestehen.
  set heading(numbering: (..nums) => context {
    let ebenen = nums.pos()
    if anhang-modus.get() and ebenen.len() == 1 {
      "Anhang " + str(ebenen.at(0)) + ":"
    } else {
      numbering("1.1.1", ..ebenen)
    }
  })

  // Dasselbe Präfix auch im Inhaltsverzeichnis: der Eintrag wird an der
  // tatsächlichen Position der Überschrift ausgewertet (nicht an der
  // Position von #outline() selbst), damit der Anhang-Status korrekt
  // erkannt wird.
  show outline.entry: it => context {
    if it.element.numbering == none {
      // Überschriften ohne Nummerierung (z. B. Literaturverzeichnis) unverändert lassen
      it
    } else {
      let ort = it.element.location()
      let praefix = if anhang-modus.at(ort) and it.element.level == 1 {
        "Anhang " + str(counter(heading).at(ort).at(0)) + ":"
      } else {
        numbering("1.1.1", ..counter(heading).at(ort))
      }
      link(ort, it.indented(praefix, it.inner()))
    }
  }

  // Gestione degli spazi dei titoli
  show heading: it => block(above: 1.5em, below: 1em, it)
  
// Rinvii interni (Abbildungen, Tabellen, Abschnitte) dezent einfärben;
// bibliografische Zitate bleiben schwarz
show ref: it => {
if it.element != none {
text(fill: rgb("#274690"), it)
    } else {
it
    }
  }

  // Tabellen-Figuren dürfen über Seitengrenzen umbrechen (z. B. lange Glossar-
  // oder Inventar-Tabellen), statt als Ganzes auf die nächste Seite zu springen.
  show figure.where(kind: table): set block(breakable: true)


  // --- BLOCCO TITOLO / FRONTESPIZIO (Pagina 1) ---
  align(center)[
    #block(text(weight: "bold", hyphenate: false, size: 2em, title))
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
      columns: (6cm, 6cm),
      column-gutter: 1em,
      row-gutter: 1.5em,
      ..authors.map(author => align(center)[
        #strong(author.name) \
        #text(size: 9pt, fill: luma(80), author.affiliation) \
        #text(size: 9pt, fill: luma(80))[#link(author.email)]
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
  outline(indent: 1.5em, depth: 4)
  
  // Puoi inserire altri indici qui se necessario (es. immagini, tabelle)
  
  // --- CORPO DEL DOCUMENTO ---
  body
}
