// markers.typ
// Drei Markertypen für die Lernpfaddokumentation:
// - Theorie-Anker:     Verweis auf theoretische Grundlage      (nur im Kompendium sichtbar)
// - Design-Entscheid:  dokumentierte Architekturentscheidung   (immer sichtbar, Bewertungskriterium)
// - Stolperstein:      persönliche Lernerfahrung / Fallstrick  (nur im Kompendium sichtbar)

#let kompendium-modus = state("kompendium-modus", false)

#let farbe-theorie = rgb("#2563eb")
#let farbe-entscheid = rgb("#16a34a")
#let farbe-stolperstein = rgb("#dc2626")

#let marker-box(titel, farbe, inhalt) = block(
  width: 100%,
  inset: (left: 1em, rest: 0.8em),
  stroke: (left: 3pt + farbe),
  fill: farbe.lighten(92%),
  above: 1em,
  below: 1em,
)[
  #text(weight: "bold", fill: farbe, size: 0.9em)[#titel]
  #v(0.3em)
  #inhalt
]

#let theorie-anker(inhalt) = context {
  if kompendium-modus.get() {
    marker-box("Theorie-Anker", farbe-theorie, inhalt)
  }
}

#let design-entscheid(inhalt) = marker-box("Design-Entscheid", farbe-entscheid, inhalt)

#let stolperstein(inhalt) = context {
  if kompendium-modus.get() {
    marker-box("Stolperstein", farbe-stolperstein, inhalt)
  }
}