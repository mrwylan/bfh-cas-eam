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

#let farbe-autor = luma(60)
#let autor-hoehe-max = 2.4em   // Höhe des Icon-Slots = grösste Figur (gemeinsame Grundlinie)

#let autor-icons = (
  finnofleet:   "aragorn.svg",   // Adrian Anghel  — Finnofleet
  transgourmet: "legolas.svg",   // Jakob Albrecht — Transgourmet
  dvbern:       "hobbit.svg",    // Jan Sohnemann  — DV Bern
  verwaltung:   "gimli.svg",     // Soucoupe       — öffentliche Verwaltung
)

#let autor-marker(schluessel, titel, inhalt: none, hoehe: autor-hoehe-max, farbe: farbe-autor) = block(
  width: 100%,
  inset: (left: 1em, rest: 0.8em),
  stroke: (left: 3pt + farbe),
  fill: farbe.lighten(92%),
  above: 1em, below: 1em,
  breakable: false,
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 0.7em,
    align: horizon,
    // fester Slot, Figur unten ausgerichtet -> gemeinsame Grundlinie + konstante Boxhöhe
    box(height: autor-hoehe-max, align(bottom,
      image("assets/" + autor-icons.at(schluessel), height: hoehe))),
    text(weight: "bold", fill: farbe, size: 0.95em)[#titel],
  )
  #if inhalt != none { v(0.3em); inhalt }
]

// Wrapper mit charaktergerechter Standardhöhe (pro Aufruf überschreibbar):
#let autor-finnofleet(titel, inhalt: none, hoehe: 2.40em)   = autor-marker("finnofleet",   titel, inhalt: inhalt, hoehe: hoehe)  // Mensch
#let autor-transgourmet(titel, inhalt: none, hoehe: 2.40em) = autor-marker("transgourmet", titel, inhalt: inhalt, hoehe: hoehe)  // Elb
#let autor-verwaltung(titel, inhalt: none, hoehe: 1.85em)   = autor-marker("verwaltung",   titel, inhalt: inhalt, hoehe: hoehe)  // Zwerg
#let autor-dvbern(titel, inhalt: none, hoehe: 1.60em)       = autor-marker("dvbern",       titel, inhalt: inhalt, hoehe: hoehe)  // Hobbit
