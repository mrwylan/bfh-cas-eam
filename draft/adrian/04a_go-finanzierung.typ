// Draft für: chapters/04_ea_realization.typ  →  === Finanzierung (Geschäftsobjekt)
// Ersetzt das #todo-action in 04_ea_realization.typ:245 und den unvollständigen
// Tabellen-Inhalt in tbl-GO-Finanzierung (Zeilen ~254–300).
//
// Quelle der Fakten: Archi-Modell "gastrostart", Views "Domain Models + Statuses"
// und "GOFinanzierung".
// WICHTIG (Korrektur): Die aktuell im Bericht stehenden Zustände sind ENGLISCH und
// UNVOLLSTÄNDIG (6 statt 7 – "vollständig" fehlt). Das Archi-Modell definiert sieben
// deutsche Zustände. Diese Fassung korrigiert das.

Das Geschäftsobjekt *Finanzierung* bündelt sämtliche Informationen rund um Amiras Finanzierungsgesuch --- von der Anfrage über die Bonitätsprüfung durch FINNOFLEET bis zum Kreditentscheid. Es ist das informationstragende Artefakt, das den Finanzierungsfall durch seinen Lebenszyklus führt und die Zustandsübergänge dokumentiert.

#figure(
image("../assets/GOFinanzierung.svg", width: 50%),
caption: [Geschäftsobjekt Finanzierung und dessen Zustände]
) <fig-GOFinanzierung>

#figure(
  caption: [Geschäftsobjekt Finanzierung],
  block(
    width: 100%,
    radius: 6pt,
    clip: true,
    stroke: 0.5pt + luma(225),
  )[
    // Kopfzeile als abgerundetes Band
    #block(
      width: 100%,
      fill: luma(70),
      inset: (x: 10pt, y: 7pt),
      below: 0pt,
    )[
      #grid(
        columns: (3.2cm, 1fr),
        gutter: 10pt,
        text(fill: white, weight: "bold", size: 0.95em)[Merkmal],
        text(fill: white, weight: "bold", size: 0.95em)[Beschreibung],
      )
    ]
    #set par(justify: false)
    #table(
      columns: (3.2cm, 1fr),
      inset: (x: 10pt, y: 7pt),
      stroke: (x: none, y: 0.5pt + luma(232)),
      fill: (x, y) => if calc.even(y) { luma(250) } else { white },
      align: (left, left),

      [Bezeichnung],
      [Finanzierung],

      [Definition / Zweck],
      [Repräsentiert das Finanzierungsgesuch, mit dem Amira die Erstinvestitionen für ihr Catering-Unternehmen decken will. Das Objekt hält die Angaben des Gesuchs, das Ergebnis der von FINNOFLEET durchgeführten Bonitätsprüfung sowie den daraus abgeleiteten Kreditentscheid fest. Es ist die gemeinsame Datengrundlage, auf die die Finanzierungs-Transaktionen zugreifen.],

      [Attribute],
      [Auf Objektebene bewusst nicht ausmodelliert (analog zu den übrigen Geschäftsobjekten). Fachlich relevant wären Betrag, Laufzeit, Kondition/Zinssatz und Verwendungszweck --- #emph[im Team zu bestätigen].],

      [Zustände],
      [neu, angefordert, unvollständig, vollständig, angenommen, abgelehnt, abgebrochen.

      Lebenszyklus: von #emph[neu] über #emph[angefordert] zur inhaltlichen Prüfung; bei fehlenden Angaben #emph[unvollständig], nach Nachreichung #emph[vollständig]; abschliessend #emph[angenommen] oder #emph[abgelehnt]. #emph[abgebrochen] beendet den Fall vorzeitig.],

      [Beziehungen],
      [- #emph[Gründungsvorhaben] ist mit der Finanzierung assoziiert (löst das Gesuch aus).
      - Die Finanzierung ist mit der #emph[Bewilligung] assoziiert (Bewilligungsstand als Voraussetzung).
      - Das #emph[Unternehmen] ist mit der Finanzierung assoziiert (Empfänger der Mittel).
      - Zugriff durch die Geschäftstransaktionen #emph[Finanzierung anfordern], #emph[Finanzierung prüfen] und #emph[Finanzierung vorbereiten] (siehe @tbl-GT-finanzierung-erhalten).],
    )
  ]
) <tbl-GO-Finanzierung>
