// markers.typ
// Marker-Vokabular für die Lernpfaddokumentation.
//
// Offizielles, BFH-bewertungsrelevantes Vokabular (geschlossen, drei Typen):
// - Theorie-Anker:     Verweis auf theoretische Grundlage      (nur im Kompendium sichtbar)
// - Design-Entscheid:  dokumentierte Architekturentscheidung   (immer sichtbar, Bewertungskriterium)
// - Stolperstein:      persönliche Lernerfahrung / Fallstrick  (immer sichtbar)
//
// Interne Arbeitsmarker (kein Teil des bewerteten Vokabulars, nur für die
// Kompendium-Version gedacht, in der Abgabeversion ausgeblendet):
// - Frage / Entscheidung: offene Frage, die im Team noch geklärt werden muss
// - TODO / ACTION!:        konkrete Aufgabe, die noch zu erledigen ist

#let kompendium-modus = state("kompendium-modus", true)

#let farbe-theorie = rgb("#2563eb")
#let farbe-entscheid = rgb("#16a34a")
#let farbe-stolperstein = rgb("#dc2626")
#let farbe-frage = rgb("#f59e0b")
#let farbe-action = rgb("#0bc2f5")
#let farbe-fuehrung = rgb("#2563eb")

#let marker-box(titel, farbe, inhalt, icon: none) = block(
  width: 100%,
  inset: (left: 1em, rest: 0.8em),
  stroke: (left: 3pt + farbe),
  fill: farbe.lighten(92%),
  above: 1em,
  below: 1em,
  breakable: false, // Prevents page breaks inside the block
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 0.5em,
    align: horizon,
    if icon != none { image("assets/" + icon, width: 1.4em) } else { [] },
    text(weight: "bold", fill: farbe, size: 0.9em)[#titel]
  )
  #v(0.3em)
  #inhalt
]

#let theorie-anker(inhalt) = context {
  if kompendium-modus.get() {
    marker-box("Theorie-Anker", farbe-theorie, inhalt, icon: "icon-buch.svg")
  }
}

#let design-entscheid(inhalt) = marker-box("Design-Entscheid", farbe-entscheid, inhalt, icon: "icon-teamwork.svg")

#let stolperstein(inhalt) = marker-box("Stolperstein", farbe-stolperstein, inhalt, icon: "icon-stein.svg")

#let fuehrung(inhalt) = marker-box("Führung", farbe-fuehrung, inhalt, icon: "icon-zauberer.svg")

#let frage(inhalt) = context {
  if kompendium-modus.get() {
    marker-box("Frage / Entscheidung", farbe-frage, inhalt)
  }
}

#let todo-action(inhalt) = context {
  if kompendium-modus.get() {
    marker-box("TODO / ACTION!", farbe-action, inhalt)
  }
}
