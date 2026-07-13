// Draft für: chapters/04_ea_realization.typ  →  === Amira erhält eine Finanzierung (Geschäftstransaktionen)
// Ersetzt das #todo-action in 04_ea_realization.typ:765 und füllt die leere
// Tabelle tbl-GT-finanzierung-erhalten (Zeilen ~802–812).
//
// Quelle der Fakten: Archi-Modell "gastrostart", View "Phase 4 - Finanzierung"
// und "Domain Models + Statuses". Prozesse: "Finanzierung vorbereiten",
// "Finanzierung anfordern", "Finanzierung prüfen". Zustände als BusinessEvents.
//
// SVG: bereits exportiert aus der View "Phase 4 - Finanzierung" (Capability +
// 5 Prozesse + 8 Events + 2 Objekte; Bild-3.9-Stil nach Spichiger GFbUA, S. 55).
// Datei: assets/GTZ Amira erhält eine Finanzierung.svg
// Namenskonvention analog zu ch04: "GTZ Amira gründet ihr Unternehmen.svg",
// "GTZ Amira erhält die Bewilligung.svg" (GTZ = Geschäftstransaktionen).
// (Hinweis: die Paper-View "Amira erhält eine Finanzierung" unter
//  Assets4Paper/Geschäftstransaktionen (Iteration 2) ist noch LEER; Inhalt
//  stammt aus der Arbeits-View "Phase 4 - Finanzierung".)

Nachdem Amira die Betriebsbewilligung erhalten hat, benötigt sie Kapital für die Erstanschaffungen. In dieser Phase übernimmt FINNOFLEET: Amira stellt über GastroStart ein Finanzierungsgesuch, das anhand ihrer Angaben und einer Bonitätsprüfung beurteilt wird. Das Geschäftsobjekt #emph[Finanzierung] durchläuft dabei drei Geschäftstransaktionen.

+ Zustände: neu, angefordert, unvollständig, vollständig, angenommen, abgelehnt, abgebrochen (siehe @tbl-GO-Finanzierung).
+ Geschäftstransaktionen: Finanzierung vorbereiten, Finanzierung anfordern, Finanzierung prüfen.

#figure(
  image("../assets/GTZ Amira erhält eine Finanzierung.svg", width: 100%),
  caption: [Geschäftstransaktionen der Phase «Amira erhält eine Finanzierung»]
) <fig-GTZ-finanzierung>

#figure(
  caption: [Geschäftstransaktionen: Prozess «Finanzierung erhalten»],
  block(
    width: 100%,
    radius: 6pt,
    clip: true,
    stroke: 0.5pt + luma(225),
  )[
    #block(
      width: 100%,
      fill: luma(70),
      inset: (x: 10pt, y: 7pt),
      below: 0pt,
    )[
      #grid(
        columns: (3.8cm, 1fr, 3.2cm),
        gutter: 10pt,
        text(fill: white, weight: "bold", size: 0.95em)[Geschäfts-\
transaktion],
        text(fill: white, weight: "bold", size: 0.95em)[Beschreibung],
        text(fill: white, weight: "bold", size: 0.95em)[Zustands-\
übergang],
      )
    ]
    #set par(justify: false)
    #table(
      columns: (3.8cm, 1fr, 3.2cm),
      inset: (x: 10pt, y: 7pt),
      stroke: (x: none, y: 0.5pt + luma(232)),
      fill: (x, y) => if calc.odd(y) { luma(250) } else { white },
      align: (left, left, left),

      [Finanzierung vorbereiten],
      [Amira erfasst ihr Finanzierungsgesuch und lädt die erforderlichen Unterlagen (Businessplan, Kostenaufstellung, Bewilligungsnachweis) hoch. Sind Angaben unvollständig, kehrt der Fall in die Vorbereitung zurück, bis er vollständig ist.],
      [neu / unvollständig → vollständig (oder abgebrochen)],

      [Finanzierung anfordern],
      [Das vollständige Gesuch wird über GastroStart an FINNOFLEET übermittelt. Ab hier liegt der Fall zur Beurteilung bei FINNOFLEET.],
      [vollständig → angefordert],

      [Finanzierung prüfen],
      [FINNOFLEET führt die Bonitätsprüfung durch und entscheidet über das Gesuch. Bei fehlenden Nachweisen wird der Fall als unvollständig zurückgewiesen; andernfalls wird er angenommen oder abgelehnt. Die Annahme löst das Ereignis #emph[finanziert] aus.],
      [angefordert → angenommen / abgelehnt / unvollständig],
    )
  ]
) <tbl-GT-finanzierung-erhalten>
