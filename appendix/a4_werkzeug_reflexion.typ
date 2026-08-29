#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern, mit-lead
)

= Werkzeug-Reflexion für GFbUA-Modellierung

#autor-transgourmet("Beitrag von Jakob Albrecht", inhalt: [

*Zur Herkunft dieses Anhangs.* Der Text ist eine verdichtete Zusammenfassung eines mehrstündigen Dialogs, in dem ich die Fragen und Positionen gesetzt und mit dem LLM (Anthropic Claude Opus 4.7) strukturiert weiterverfolgt habe.
Ausgangsfragen waren unter anderem: "Gibt es eine offene, verbreitete AST-basierte Repräsentation für Enterprise Architecture?"; "Lässt sich EA überhaupt als Turingmaschine abbilden?"; "Wie ordne ich Bausteinsicht ein, könnte ich mit einem AST-Ansatz noch etwas beitragen?" Aus dieser Serie ist die Position entstanden, die dieser Anhang festhält.

*Terminologische Konventionen.* Ich verwende GFbUA im Sinn des Studienplans CAS Enterprise Architecture Management, FS 2026#footnote[Jarchow, Thomas (2026). Studienplan CAS Enterprise Architecture Management, Frühlingssemester 2026, Version 0.1. Berner Fachhochschule.] und der Modulunterlagen von Andreas Spichiger und Thomas Jarchow. Die Begriffe Auftragstyp, Kerntyp, RIM und RSM sind im Sinn dieser Quellen zu lesen.

],)

== Ausgangspunkt

Die Modellierungsarbeit an GastroStart hat mir eine methodische Beobachtung aufgedrängt. Mit steigender Modelltiefe wächst die Disziplin, die für semantische Konsistenz nötig ist, überproportional. In Archi bleiben Elemente syntaktisch valide, auch wenn sie methodisch falsch zugeordnet sind. Ein Auftragstyp kann versehentlich als Kerntyp eines Geschäftsobjekts markiert werden, ein Prozess bekommt zwei Kerntypen, eine Vererbung wird zwischen inkompatiblen Typen gezogen. Nichts davon wird vom Werkzeug bemerkt. Die Konsistenzarbeit fällt vollständig auf die modellierende Person zurück.

Diese Beobachtung führt zu einer Grundfrage, die ich in diesem Anhang persönlich vertiefe: welches Werkzeug würde die GFbUA-Methodik so unterstützen, dass die semantische Präzision, die der Ansatz verlangt, auch werkzeuglich getragen wird? Der Anhang ist als Reflexion angelegt, nicht als Umsetzung. Er dokumentiert einen Denkweg, der über den Prüfungsgegenstand der Gruppenarbeit hinausgeht, aber aus ihm hervorgegangen ist.#footnote[Der Denkweg entstand in einem strukturierten Dialog mit Anthropic Claude (Modell Opus 4.7) über mehrere Sitzungen. Fragen, Richtungsentscheidungen und die Position gegenüber GFbUA stammen von mir; ausgearbeitete Formulierungen, Marktrecherchen und die literarischen Verweise sind gemeinsame Ergebnisse. Ich halte diese Transparenz für die redliche Form und für einen CAS zur digitalen Transformation angemessen.]

== Werkzeuglandschaft heute

Bevor ich über neue Konzepte spreche, brauche ich die Verortung im Bestehenden. Die zeitgenössische Landschaft der textbasierten Architekturwerkzeuge (unter dem Sammelbegriff Architecture-as-Code) ist zweigeteilt.

Auf der Ebene der Software-Architektur gibt es etablierte, offene Text-DSLs mit echter Parser-Infrastruktur. Structurizr#footnote[Brown, Simon. Structurizr. #link("https://structurizr.com/")] ist der Referenzpunkt für das C4-Modell und wird international breit eingesetzt. LikeC4#footnote[LikeC4 Project. #link("https://likec4.dev/")] ist die technisch modernere Variante, gebaut auf Langium mit typisiertem AST und Sprachserver-Integration. PlantUML und Mermaid decken das Rendering-Ende ab, ohne semantisches Modell. Bausteinsicht#footnote[Fleischmann, Paul (2026). Bausteinsicht: Architecture-as-Code mit bidirektionaler Synchronisation. #link("https://paul-fleischmann.com/projekte/bausteinsicht/")] schliesslich ist ein junges Werkzeug aus der docToolchain-Familie, das eine bidirektionale Synchronisation zwischen einem JSONC-basierten Modell und draw.io realisiert.

Auf der Ebene der Enterprise Architecture sieht die Lage anders aus. Der Standard der Open Group ist das ArchiMate Model Exchange File Format, ein XML-basierter Austauschstandard, kein programmierähnliches Quellformat. Die Open Group selbst beschreibt ihn als Mechanismus zur Übertragung von Instanzdaten zwischen Werkzeugen, vergleichbar mit CSV für Tabellen.#footnote[The Open Group (2021). ArchiMate Model Exchange File Format for the ArchiMate Modeling Language, Version 3.2.] Ein textuelles Quellformat, in dem ArchiMate-Modelle geschrieben, versioniert und reviewbar wären, existiert nicht in breiter Verwendung. Archi bleibt das dominierende Open-Source-Werkzeug, ist aber GUI-zentriert und hat kein DSL-Frontend. Die kommerziellen EA-Suiten (BiZZdesign Horizzon, Sparx EA, ADOIT) decken die Analyse-Ebene ab, sind aber proprietär und nicht Git-nativ.

#figure(
  table(
    columns: (auto, auto, auto, auto, 1fr),
    align: (left, center, center, center, left),
    stroke: 0.5pt,
    inset: 6pt,
    table.header(
      [*Werkzeug*], [*Ebene*], [*Text-DSL*], [*Semantik*], [*Kommentar*],
    ),
    [Structurizr], [SW-Arch], [ja], [teilweise], [C4, breit adaptiert],
    [LikeC4], [SW-Arch], [ja], [teilweise], [modern, Langium-basiert],
    [Bausteinsicht], [SW-Arch], [JSONC], [rudimentär], [bidirektionale Sync mit draw.io],
    [PlantUML / Mermaid], [beide], [rendering], [keine], [reines Diagramm-Rendering],
    [Archi], [EA], [nein], [strukturell], [ArchiMate-Editor],
    [ArchiMate Exchange], [EA], [nein], [Schema], [Austauschformat, kein Quellformat],
    [BiZZdesign / Sparx / ADOIT], [EA], [nein], [stark], [kommerziell, GUI-zentriert],
    [AADL / OSATE], [Embedded], [ja], [stark], [Safety-critical, Nische],
  ),
  caption: [Übersicht ausgewählter Werkzeuge für Architektur-Modellierung. Die Bewertung "Semantik" bezieht sich auf die Fähigkeit, Constraints eines expliziten Metamodells zu erzwingen.],
)

Die Diagnose ist deutlich: für Enterprise Architecture, insbesondere für eine methodisch anspruchsvolle Ausprägung wie GFbUA, gibt es kein etabliertes textbasiertes Open-Source-Werkzeug mit semantischer Tiefe.

== Konzept: EA Modellierung nach GFbUA als typisierter Abstract Syntax Tree (AST)

An dieser Stelle setzt meine Überlegung an. Ein Abstract Syntax Tree (AST) ist keine reine Datenstruktur, sondern die typisierte, referenzaufgelöste Repräsentation eines Modells nach dem Parsing. Er unterscheidet sich vom XML-Dokument in drei wesentlichen Punkten. Erstens sind alle Verweise zwischen Elementen aufgelöst und typisiert, also nicht mehr Strings, sondern gerichtete Kanten auf konkrete Knoten. Zweitens werden strukturelle Constraints des Metamodells zur Übersetzungszeit geprüft, nicht erst zur Laufzeit. Drittens ist der AST maschinell transformierbar: Refactoring, Codegenerierung und Analyse werden zu Standardoperationen des Compilerbaus.

Übertragen auf GFbUA würde das bedeuten, dass Geschäftsfähigkeit, Auftragstyp, Geschäftsobjekt, Geschäftstransaktion und Geschäftsprozess erststufige Konstrukte einer domänenspezifischen Sprache sind. Die Kerntyp-Disziplin, die Vererbungshierarchie zwischen Auftragstypen, die Lifecycle-Zustände von Geschäftsobjekten, die Regel eines einzigen Auftragstyps pro Prozess: alle diese GFbUA-Constraints würden entweder in der Grammatik selbst oder in einem semantischen Validierungspass erzwungen.

Ein illustratives Beispiel, verkürzt auf den Ausschnitt zur Beschaffung in GastroStart Phase 5:

```
business_object Warenbedarf {
  kerntyp: entity
  lifecycle: offen -> gedeckt
}

abstract order Beschaffungsauftrag {
  lifecycle: erstellt -> freigegeben -> übermittelt
             -> { bestätigt, abgelehnt }
}

order Bestellung extends Beschaffungsauftrag {
  references {
    lieferant: Lieferantenkonto
    deckt:     Warenbedarf [1..*]
  }
}

transaction BestellungÜbermitteln {
  kerntyp: order Bestellung
  pre  { Bestellung.state == freigegeben }
  post {
    Bestellung.state == übermittelt
    each(deckt): Warenbedarf.state := gedeckt
  }
}

process Bestellabwicklung {
  kerntyp: order Bestellung
  transactions: [ BestellungInitiieren,
                  BestellungFreigeben,
                  BestellungÜbermitteln ]
}
```

Nach dem Parsing entsteht daraus ein typisierter Baum: `TransactionDecl` mit Feldern `kerntyp` (aufgelöst auf `OrderTypeDecl`), `precondition` und `postcondition` (jeweils `ConditionBlock` mit `StateAssertion`-Kindknoten). Die GFbUA-Regel "Prozess hat genau einen Kerntyp, und dieser ist ein Auftragstyp" ist syntaktisch codiert und kann nicht verletzt werden, ohne dass der Compiler den Text ablehnt. Diese Constraint-Erzwingung zur Parse-Zeit ist die eigentliche Leistung, nicht die Textform als solche.

Etablierte Parser-Generatoren existieren für die Umsetzung. ANTLR ist der Klassiker mit breiter Sprachunterstützung. Langium, der Nachfolger von Xtext im Eclipse-Ökosystem, ist für diesen Anwendungsfall der direktere Weg, weil es typisierten AST, Referenzauflösung und LSP-Integration in einem Framework liefert. Beide Werkzeuge sind ausgereift; nichts davon müsste neu gebaut werden.

== Die Turingmaschine als regulative Idee

Eine weitergehende Frage im Verlauf der Reflexion war, ob EA sich überhaupt formal fassen lässt. Die strenge Antwort ist nein. EA ist ein offenes, selbstreferentielles System mit nicht formalisierbaren Anteilen (Strategie, Motivation, Verhandlung). Die Turingmaschine als Abbildungsziel wäre eine kategoriale Verwechslung.

Die produktivere Lesart ist eine andere. Die Turingmaschine kann als regulative Idee im kantischen Sinn dienen, als Polarstern, an dem sich EA-Arbeit ausrichtet, ohne ihn je zu erreichen. Jeder Modellierungsschritt ist dann eine Approximation an ein Ideal von Abschätzbarkeit und Planbarkeit. Zustandsräume werden verkleinert; Akteure erhalten typisierte Rollen mit eingeschränkten Freiheiten; Übergänge werden spezifiziert und messbar; nicht-deterministische Ereignisse probabilistisch domestiziert. Jede Aussage gilt für eine Version des Modells zu einem gegebenen Zeitpunkt.

Diese Position ist mit Max Webers Konzept des Idealtypus verwandt.#footnote[Weber, Max (1904). Die "Objektivität" sozialwissenschaftlicher und sozialpolitischer Erkenntnis. Archiv für Sozialwissenschaft und Sozialpolitik, 19.] Der Idealtypus ist eine bewusst überzeichnete Konstruktion, die nicht die Realität abbildet, sondern als Vergleichsmasstab dient. Bürokratie als reine Form existiert nirgends, aber jede reale Verwaltung lässt sich relativ zu ihr beschreiben. Analog: eine vollständig formalisierte Architektur existiert nirgends, aber jede reale Architektur lässt sich relativ zu ihr verorten.

Für die Werkzeug-Frage folgt daraus eine Klarstellung. Ein AST-basiertes Werkzeug modelliert nicht "das Unternehmen", sondern den approximierbaren Teil des Unternehmens relativ zu einem gewählten Ideal. Das ist eine wesentlich sauberere Positionierung als der Anspruch, das Ganze abzubilden, und sie deckt sich mit Kotusevs pragmatischer Sicht auf EA-Praxis.#footnote[Kotusev, Svyatoslav (2018). The Practice of Enterprise Architecture: A Modern Approach to Business and IT Alignment. SK Publishing.]

== Anforderungen an ein integratives Werkzeug

Aus der Reflexion habe ich einen Anforderungskatalog abgeleitet, den ich hier in verdichteter Form wiedergebe. Er unterscheidet vier Ebenen, die unterschiedliche technische Reife haben und unterschiedliche Kompetenzen verlangen.

*Ebene A, Repräsentation.* Textuelle Kernrepräsentation als Grundlage für Git und Review; formales Metamodell mit expliziter Grammatik; typisierte Referenzen statt Strings; mehrere Sichten auf ein Modell (Views als Projektionen, nicht Duplikate); Erweiterbarkeit ohne Fork des Kerns.

*Ebene B, Interaktion.* Visuelle Editierbarkeit für Analysten, die nicht in Text denken; bidirektionale Synchronisation zwischen Text und Diagramm; IDE-Unterstützung mit Autocomplete, Go-to-definition und Hover-Info; Live-Preview mit Feedback unter einer Sekunde; Fehlermeldungen in der Sprache der Domäne, nicht des Parsers.

*Ebene C, Integration.* Git-native Merge-Fähigkeit; CI/CD-Integration für Validierung und Diagrammgenerierung; Import und Export gegenüber Standards (ArchiMate Exchange, C4-DSL, PlantUML); Kompatibilität mit Doku-Toolchains (arc42, docToolchain); API-Zugang für Custom-Reports und Metriken.

*Ebene D, Semantik und Analyse.* Constraint-Prüfung auf Modell-Ebene, nicht nur Syntax; Impact-Analyse bei Änderungen; Metriken wie Kopplung, Kohäsion, Redundanz; Delta-Analyse zwischen Modellversionen; Simulation und Was-wäre-wenn-Szenarien; Traceability zwischen Modell und Code-Artefakten.

Kein mir bekanntes Open-Source-Werkzeug erfüllt alle vier Ebenen. Die SW-Architektur-Werkzeuge sind stark in A und teilweise in C, dünn in B und D. Archi ist stark in B, dünn in A und D. Die kommerziellen EA-Suiten decken B, C und D ab, sind aber proprietär und nicht Git-nativ. Bausteinsicht ist bemerkenswert stark in B durch die bidirektionale Sync, aber semantisch dünn und C4-fokussiert.

Für GFbUA im Speziellen bleiben drei präzise Lücken. Erstens fehlt eine semantische EA-DSL mit IDE-Support und Analyse. Keine der Optionen erlaubt es, GFbUA-Konstrukte (Kerntyp-Disziplin, RIM/RSM-Separation, Auftragstyp-Vererbung) typisiert zu modellieren und dagegen zu validieren. Zweitens fehlt Simulation über deklarativen EA-Modellen. Discrete Event Simulation existiert für BPMN, aber nicht über einer Capability-Struktur mit typisierten Geschäftsobjekten. Drittens fehlt Traceability zwischen EA-Modell und tatsächlichem Code. Die EA-Werkzeuge sind zu weit vom Code entfernt, die Code-Werkzeuge zu weit von der Business-Semantik.

== Was für GFbUA konkret fehlt

Wenn ich die Anforderungen auf GFbUA im engeren Sinn zuspitze, wird die Lücke greifbar. Die Methodik verlangt eine Reihe von Distinktionen, die in keinem heutigen Open-Source-Werkzeug erststufige Bürger sind:

- Die *Kerntyp-Zuordnung* (jedes Element hat einen Kerntyp, der zwischen `entity` und `order` unterscheidet) müsste als typisierte Eigenschaft und nicht als Property-Overlay modellierbar sein.
- Die *RIM/RSM-Orthogonalität* (der Status ist orthogonal zur ArchiMate-Schicht) müsste als eigenständige Dimension geführt werden können, nicht durch Farbcodierung angedeutet.
- Die Regel eines *einzigen Auftragstyps pro Geschäftsprozess* müsste zur Übersetzungszeit erzwungen werden.
- *Lifecycle-Zustände* für Geschäftsobjekte müssten als Zustandsautomaten formalisiert und gegen Ereignisse in Transaktionen validiert werden.
- *Vererbungshierarchien* zwischen abstrakten und konkreten Auftragstypen müssten mit Zyklenprüfung unterstützt werden.
- Der *Verifikationsstatus* (verifiziert, abgeleitet, angenommen) müsste als semantische Eigenschaft geführt werden, nicht nur als freier Beschreibungstext.

Eine denkbare Zielarchitektur würde diese Anforderungen kaskadiert lösen. Der AST wäre die Single Source of Truth. Existierende Werkzeuge würden als Backends genutzt, nicht dupliziert:

#align(center)[
  #box(width: 85%)[
```
GFbUA-DSL   (Langium-Grammatik, GFbUA-Metamodell)
    |
    v
typisierter AST  <-- semantische Validierung
    |
    +--> Compiler / Codegenerator
    |         |
    |         +--> Bausteinsicht JSONC   --> draw.io (visuelle Schicht)
    |         +--> ArchiMate Exchange    --> Archi (Standardkompatibilität)
    |         +--> Simulation-Engine     --> probabilistische Szenarien
    |         +--> Metrik-Reports        --> Vollständigkeit, Kopplung
    |
    +--> LSP-Server                      --> IDE-Integration
```
  ]
]

Die eigentliche Neuerung läge in der semantischen Schicht darüber, nicht in einem weiteren Rendering-Werkzeug. Bausteinsicht hat die visuelle Editierbarkeit gelöst, Langium hat die Grammatik-Toolchain gelöst, Archi hat den ArchiMate-Standard umgesetzt. Was fehlt, ist die Klammer aus Kerntyp-Disziplin, Lifecycle-Semantik und Constraint-Validierung, die GFbUA methodisch verlangt.

== Grenzen und offene Fragen

Ich möchte den Ansatz nicht überzeichnen. Er hat vier Grenzen, die im Verlauf der Reflexion sichtbar geworden sind und die ich hier explizit machen möchte.

*Scheinpräzision.* Ein hochauflösendes formales Modell mit niedrig aufgelösten Eingangsdaten erzeugt genau die Art von falscher Sicherheit, vor der GFbUA methodisch warnt. Wenn Simulation Konfidenzintervalle ausgibt, deren scheinbare Schärfe die Unsicherheit in den Prior-Annahmen verbirgt, verschlimmert das Werkzeug das Problem, statt es zu lösen. Ein Verifikationsstatus als First-Class-Konzept ist notwendig, aber nicht hinreichend.

*Priors-Problem.* Probabilistische Simulation braucht Verteilungen. Die drei plausiblen Quellen sind alle fragil. Empirische Telemetrie zeigt nur den Ist-Zustand, nicht das simulierte Änderungsverhalten. Expertenschätzung ist verzerrungsanfällig. Strukturelle Annahmen (Warteschlangentheorie, Poisson-Ankünfte) sind oft realitätsfremd. Der Anspruch, EA-Modelle zu simulieren, muss dieser Fragilität methodisch begegnen und darf sie nicht durch technische Sauberkeit überspielen.

*Selbstreferentialität.* EA-Modelle verändern das, was sie modellieren. Eine Capability-Map beeinflusst, welche Capabilities entwickelt werden, weil sie Teil der Kommunikation ist, in der über Investitionen entschieden wird. Ein Werkzeug, das die Modellierung präziser macht, verstärkt diese performative Wirkung. Das ist nicht per se problematisch, muss aber reflektiert werden, weil es die naive Trennung zwischen "modellieren" und "verändern" auflöst.

*Grenze der Formalisierbarkeit.* Die Motivation Extension in ArchiMate sieht syntaktisch wie der Rest aus, ist aber semantisch eine andere Kategorie. Strategie, Vision, Werte lassen sich benennen, aber nicht formal ableiten. Ein AST-basiertes Werkzeug kann die formalisierbaren Schichten präzise machen, muss aber ehrlich sagen, wo die formalisierbare Zone endet. Andernfalls entsteht der Eindruck, das ganze Unternehmen sei modellierbar; und das wäre methodisch unredlich.

== Persönliche Konsequenz und Ausblick

Für mich hat diese Reflexion drei Erkenntnisse gebracht.

Erstens: die Werkzeuglücke im EA-Bereich ist nicht Ausdruck von Reife-Rückstand, sondern von struktureller Differenz. EA ist schwerer zu formalisieren als Software-Architektur, weil sie mehr Akteure, mehr Freiheitsgrade und mehr semantische Tiefe hat. Ein Werkzeug, das GFbUA bestmöglichst unterstützt, muss diese Differenz respektieren und nicht wegabstrahieren wollen.

Zweitens: die interessanteste Bewegung ist nicht "ein weiteres EA-Werkzeug bauen", sondern "die semantische Schicht bauen, die zwischen existierenden Werkzeugen fehlt". Die Frage ist nicht, ob ein neues Rendering entsteht, sondern ob eine typisierte, validierbare, transformierbare Repräsentation der methodischen Substanz entsteht, an der andere Werkzeuge andocken können.

Drittens: ich habe für mich persönlich ein Trainings-Repository (archiflow) angelegt, in dem ich diese Konzepte experimentell prüfen kann. Es ist keine Produktentwicklung, sondern ein Übungsfeld, mit dem ich die Reifegrade der beteiligten Technologien einschätzen möchte. Der methodische Reiz liegt darin, den Weg vom Modell zum ausführbaren Prototyp konkret zu gehen, ohne den Anspruch, ein fertiges Werkzeug zu liefern.

Der weitergehende Anschluss liegt in meinem beruflichen Kontext bei Transgourmet. Die laufende Migration des ERP-Systems vom Monolithen zu Self-Contained Systems über Anti-Corruption Layer, Datenreplikation und Event Store ist genau der Anwendungsfall, in dem semantische EA-Modellierung mit Code-Nähe und Simulation der Migrationsschritte den Unterschied zwischen risikoreicher und beherrschter Transformation ausmachen würde. Ob diese Verbindung sich in einem konkreten Werkzeug niederschlagen wird, bleibt offen. Sicher ist, dass die konzeptionelle Position, die aus dieser Reflexion entstanden ist, meine Sicht auf Architekturarbeit verändert hat.

Was ich aus dem CAS in meine Praxis mitnehme, ist nicht in erster Linie ein Werkzeug oder eine Methode, sondern eine Haltung: dass Enterprise Architecture eine Disziplin ist, die sich an einem regulativen Ideal abarbeitet, das sie nie erreicht, an dem sie sich aber verantworten muss. Und dass die Werkzeuge, die wir für diese Arbeit nutzen, mitentscheiden sind, wie transparent, nachvollziehbar und stimmig diese Verantwortung geleistet werden kann.

