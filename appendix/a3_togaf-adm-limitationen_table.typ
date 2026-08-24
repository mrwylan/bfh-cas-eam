// Tabelle: Bekannte Limitationen des TOGAF ADM und Mitigationen
// Zur Einbindung in den Lernbericht / Abschlussbericht CAS EAM FS2026
// Standalone kompilierbar; das #figure ist auch direkt als Snippet einbettbar.

#set page(paper: "a4", margin: (x: 2cm, y: 2.2cm))
#set text(lang: "de", size: 10pt)
#set par(justify: true)

// Tabelle darf über Seitengrenzen brechen, einzelne Zeilen nicht.
#show figure.where(kind: table): set block(breakable: true)
#show table.cell: set block(breakable: false)

// Tabellen-Styling: dezente horizontale Linien, keine Vertikalen.
#show table.cell.where(y: 0): set text(weight: "bold")
#set table(
  stroke: (x, y) => (
    top: if y == 0 { 0.8pt } else if y == 1 { 0.6pt } else { 0.3pt + luma(160) },
    bottom: if y == 0 { 0.6pt } else { 0pt },
    left: none,
    right: none,
  ),
  inset: (x: 6pt, y: 7pt),
  fill: (_, y) => if y == 0 { luma(240) } else { none },
)

#figure(
  caption: [Bekannte Limitationen des TOGAF ADM und Mitigationsoptionen],
  kind: table,
  table(
    columns: (auto, 1.4fr, 2.3fr, 2.3fr),
    align: (center + horizon, left + top, left + top, left + top),

    table.header(
      repeat: true,
      [Nr.], [Limitation], [Erläuterung], [Mitigation]
    ),

    [1],
    [Methodische Leerstelle],
    [ADM strukturiert, _welche_ Architekturen entwickelt werden (B, C, D), nicht _wie_ sie konstruiert werden. Es ist Prozessgerüst ohne Konstruktionslehre.],
    [ADM als Governance-Skelett verwenden, die eigentliche Konstruktion mit substanziellen Methoden füllen (GFbUA für RIM, Quasar und SCS-Muster für RSM, DDD für Bounded Contexts).],

    [2],
    [Wasserfall trotz Zirkeldarstellung],
    [Die Phasenfolge A nach H ist linear. Vision steht vor Business, Business vor IS, IS vor Technology, Technology vor Migration. Mit iterativer Lieferung unvereinbar.],
    [Iterative Slices je Geschäftsfähigkeit oder Wertstrom statt enterprise-weiter Durchläufe. Capability-bezogene ADM-Mini-Zyklen.],

    [3],
    [Big Up-Front Architecture],
    [ADM begünstigt umfangreiche Modellierung vor Wertlieferung. Das Repository wird «vollständig» bevor produktiv etwas geschieht.],
    [Risiko- und entscheidungsgetriebene Modellierung. Nur jene Artefakte führen, die nachweisbar Entscheidungen stützen (Anschluss an Kotusevs CSVLOD-Modell).],

    [4],
    [Phase B unterspezifiziert],
    [«Business Architecture» bleibt eine Sammlung loser Empfehlungen (Strategie, Organisation, Prozesse, Funktionen, Services) ohne stabile Abstraktionsebene.],
    [Operating Model nach Ross, Weill und Robertson plus Geschäftsfähigkeiten als RIM verankern. Geschäftsobjekte mit Zustandslebenszyklen als Stabilitätsanker, nicht Prozesse.],

    [5],
    [Keine RIM- und RSM-Trennung],
    [ADM mischt geschäftliche und ressourcenspezifische Konzepte. Application Architecture etwa erscheint als Mischform aus fachlichem Bedarf und technischer Realisierung.],
    [Brooks' Unterscheidung zwischen essential und accidental complexity operationalisieren. Phase B ressourcenunabhängig, RSM erst in C und D.],

    [6],
    [Repository-Zentralismus],
    [Architecture Repository und Enterprise Continuum unterstellen ein konsistent gepflegtes Zentralartefakt, das in der Praxis selten existiert und schnell von der Realität abweicht.],
    [Föderierte, fachbereichsbezogene Modelle plus veröffentlichte Sprachverträge zwischen Domänen (vgl. Föderationsmuster in eCH-0122).],

    [7],
    [Governance-Overhead],
    [Phasen F, G und H setzen Architecture Board, ADM Steering und Compliance Reviews voraus. Für mittlere Organisationen unverhältnismässig.],
    [Governance-Granularität an EA-Maturität koppeln. Architecture Decision Records und Capability-Ownership-Maps als leichte Verbindlichkeit statt Board-Rituale.],

    [8],
    [Schwache Strategie-Architektur-Kopplung],
    [Verbindung zwischen Strategie (OKR, KPI) und Architekturentscheidungen bleibt vage. Phase A liefert Vision, nicht Traktion.],
    [ArchiMate Motivation Extension konsequent nutzen. Jede Architekturentscheidung an Driver und Outcome verankern. EA trägt damit als normativ-motivationale Schicht, nicht als Konstruktionsdisziplin.],

    [9],
    [Capability-Based Planning peripher],
    [Seit 9.2 nominell integriert, in den ADM-Schritten aber nicht tragend. Capabilities erscheinen als Artefakt, nicht als Strukturprinzip.],
    [CBP als primäres Strukturprinzip führen (vgl. Walker, Freitag). Capability Map als oberste Ordnungsstruktur, Phasen B bis D darunter projizieren.],

    [10],
    [Legacy- und Migrationsfragen unterspezifiziert],
    [«Gap Analysis» bleibt abstrakt. Konkrete Migrationsmuster (Strangler Fig, Anti-Corruption Layer, eventgetriebene Entkopplung) fehlen.],
    [Migrationsmuster aus DDD und SCS ergänzen. IST-, SOLL- und IDEAL-Triade nach Quasar und GFbUA, damit Migrationspfad und Zielbild getrennt diskutierbar bleiben.],

    [11],
    [Notationsneutralität als Bürde],
    [ADM ist notationsunabhängig. Damit fehlt aber auch verbindliche Modellqualität. ArchiMate wird empfohlen, nicht erzwungen.],
    [Notations- und Metamodell-Verbindlichkeit projektintern festlegen (ArchiMate 3.2, definierte Viewpoints, Konsistenzregeln nach ISO 42010).],

    [12],
    [One-size-fits-all],
    [TOGAF beansprucht Branchen- und Grössenneutralität und wird damit unspezifisch, wo Präzision nötig wäre.],
    [Domänenspezifische Tailoring-Profile, etwa eCH-0122 für öffentliche Verwaltung oder GS1- und EDIFACT-Standards für Lieferketten. ADM nur als Aufhänger für domänenspezifische Konkretisierung.],

    [13],
    [Conway's Law nicht adressiert],
    [ADM trennt Aufbau- und Ablauforganisation kaum vom Architekturentwurf. Soziotechnische Rückkopplung bleibt unsichtbar.],
    [Team Topologies oder vergleichbare Organisationsmuster parallel führen. Domain Ownership und Software-Boundaries gemeinsam entwerfen.],

    [14],
    [Begriffsmasse],
    [TOGAF-Vokabular ist umfangreich (Building Blocks, Continuum, Repository, Capability Increments, Transition Architectures). Viel Begriffshygiene für wenig Erkenntnisgewinn.],
    [Auf minimale, anschlussfähige Begriffsmenge reduzieren. Nur Konzepte mit operativem Bezug einführen.],
  )
) <tab:togaf-limitationen>
