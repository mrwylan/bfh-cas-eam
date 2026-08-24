// ── Chapter 4 : EA Realization  ───────────────────
#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern, mit-lead
)

= Die Realisierung des Resource Independent Model
/*in Anlehnung an Kapitel 3.4.5. vom Spichiger-Skript*/
== Allgemeines
Dieser Teil der Arbeit bildet der Kern der Überlegungen der Gruppe. 
Die Verfolgung der durch die Übungen vorgegebenen Arbeitsschritte haben uns bis zur höchsten Abstraktionsstufe unseres Unternehmens geführt. 
Jeder Entwicklungsschritt bezieht sich auf einem Auftrag (Übung) und folgt der Empfehlung zur Erarbeitung des RIM, die im Skript @Spichiger2026GFbUA, S. 53 ff. beschrieben ist. 
Die Modellierung erfolgt mit Archimate. Die Darstellung der Symbole kann aufgrund der Vorlieben der einzelnen Verfasser voneinander abweichen, orientiert sich aber an den zwei Varianten, die das Modellierungswerkzeug bietet.
Die von uns verwendeten Symbole sind in der folgenden Abbildung, in der jeweiligen Variante dargstellt.

#figure(
  image("../assets/jan/Notation-Archimate-Symbole.svg", width: 50%),
  caption: ["Notation der verwendeten Archimate Symbolik"]
) <fig-notation-archimate-symbole>

Die folgenden Kapitel orientieren sich wie gehabt an den fünf Phasen der Customer Journey.
Zunächst beschreiben wir die wesentlichen Geschäftsobjekte und ihre möglichen Zustände, die in der jeweiligen Phase die entscheidende Rolle spielen.
Anschliessend erweitern wir das Modell um Geschäftstransaktionen und die Beziehungen der Geschäftsobjekte zu diesen und untereinander.
Weiter werden die Geschäftstransaktion zu Geschäftsprozessen zusammengeführt und schliesslich die wesentlichen Geschäftsfähigkeiten der jeweiligen Prozesse identifiziert und in das Modell integriert.
Im letzten Kapitel der Modellentwicklung beschreiben wir den Übergang vom RIM ins ressourcen-spezifische Modell anhand der IDEAL Informationssystemarchitektur.

/*Appunti: 
Hier wird kurz die Entwicklugn skizziert 
- von den identifzierten objetken zu den Porzessen, zu den Fähigkeiten 
- immer wieder wurde der Einfluss der Teilnehmer der Joint Venture zur Customer Journey 
- in der Gruppe immer geschaut, ob die einzelne erarbeitete Modelle zueinander passen - oder ob korrekturen 

#frage([1. struktur: 1 Schritt pro Übung, dann 4x die Phasen, jedes mal mit Screenshot?])

pro Ebene - nur da was geändert hat 
die Granularität ist: 
+ CJ 
+ RIM Version 1 
+ RIM VERSION 2
+ RSM 

Wir verlassen das Tagebuch-Aufbau - und gehen hin zu einem logischen, fliessender Text, dem GFbAU folgend. 
*/

== Erste Iteration: Identifikation der Geschäftsobjekte <head-identifikation-der-bos>
In dieser Iteration haben wir die wesentlichen Geschäftsobjekte sowie die, für die alle Phasen in der Customer Journey, relevanten Zustände identifiziert und definiert. 
Für die Darstellung der Zustände verwenden wir das Symbol *Business Event*, siehe @fig-notation-archimate-symbole.
Die Geschäftsobjekte selber konnten wir anhand der Szenarios, welche sich aus der Customer Journey ergeben, identifizieren.
Im weiteren Diskurs und mit fortschreitender Entwicklung des Modells wurden allerdings auch weitere Geschäftsobjekte identifiziert oder bestehende verworfen.
Die folgende Abbildung zeigt, wie wir Geschäftsobjekte durch die Zerlegung der Custoner Journey in Szenarios, identifiziert haben.

#figure(
  image("../assets/jan/BOs-aus-Szenario-Customer-Journey.svg", width: 100%),
  caption: ["Geschäftsobjekte in der Customer Journey identifizieren"]
) <fig-bo-aus-szenarios-customer-journey>

=== Kundenkonto (Registrierung)

#autor-dvbern("Beitrag von Jan Sohnemann, DVBern", inhalt: [])
TBC

#frage([*Von Jan*: Warum führen wir an dieser Stelle schon alle Zustände mit ein? Ich habe mich in der Einleitung etwas schwer getan, dieses Vorgehen zu begründen. Die Zustände ergeben sich ja erst aus den Geschäftstransaktionen (GTZ). Ich würde mich hier lieber rein auf die BOs konzentrieren und die Zustände dann in der jeweils besprochenen Phase einführen, wenn die GTZ eingeführt werden z.B. in @fig-gtz-registrierung. ])

=== [LEER] Unternehmen


=== [LEER] Bewilligung 

=== Finanzierung
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Auf Objektebene bewusst nicht ausmodelliert (analog zu den übrigen Geschäftsobjekten). Fachlich relevant wären Betrag, Laufzeit, Kondition/Zinssatz und Verwendungszweck.],

      [Zustände],
      [neu, angefordert, unvollständig, vollständig, angenommen, abgelehnt, abgebrochen.

      Lebenszyklus: von #emph[neu] über #emph[angefordert] zur inhaltlichen Prüfung; bei fehlenden Angaben #emph[unvollständig], nach Nachreichung #emph[vollständig]; abschliessend #emph[angenommen] oder #emph[abgelehnt]. #emph[abgebrochen] beendet den Fall vorzeitig.
      /*Vorschlag: Für die graphische Aufbereitung der Zustandsübergänge, vgl. @ig-GTZ-finanzierung. */],

      [Beziehungen],
      [- #emph[Gründungsvorhaben] ist mit der Finanzierung assoziiert (löst das Gesuch aus).
      - Die Finanzierung ist mit der #emph[Bewilligung] assoziiert (Bewilligungsstand als Voraussetzung).
      - Das #emph[Unternehmen] ist mit der Finanzierung assoziiert (Empfänger der Mittel).
      - Zugriff durch alle vier Geschäftstransaktionen: #emph[Finanzierung vorbereiten], #emph[Finanzierung anfordern], #emph[Finanzierung prüfen] und #emph[Finanzierung zusagen]. Die letzte greift zusätzlich auf das #emph[Gründungsvorhaben] zu, dessen Zustand sie auf #emph[finanziert] setzt (siehe @tbl-GT-finanzierung-erhalten).],
    )
  ]
) <tbl-GO-Finanzierung>

=== Lieferantenkonto

Das Lieferantenkonto ist ein Geschäftsobjekt, das die Beziehung zwischen dem Gastronomiebetrieb und seinen Lieferanten abbildet. Es enthält Informationen über die Lieferanten, die Konditionen der Zusammenarbeit und den Status der Geschäftsbeziehung. Das Lieferantenkonto ist entscheidend für die effiziente Abwicklung von Bestellungen und die Verwaltung von Lieferantenbeziehungen.

#figure(
image("../assets/GOLieferantenkonto.svg", width: 50%),
caption: [Geschäftsobjekt Lieferantenkonto und dessen Zustände]
) <fig-GOLieferantenkonto>

#figure(
  caption: [Geschäftsobjekt Lieferantenkonto],
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Lieferantenkonto],

      [Definition / Zweck],
      [Beziehung zwischen dem Gastronomiebetrieb und seinen Lieferanten],

      [Zustände],
      [pendent, aktiv, inaktiv, gelöscht],

      [Beziehungen],
      [Das Lieferantenkonto ist mit den Geschäftsobjekten *Bestellung* und *Gastronomiebetrieb* assoziiert.],
    )
  ]
) <tbl-GO-Lieferantenkonto>

=== Gründungsvorhaben

#autor-dvbern("Beitrag von Jan Sohnemann, DVBern", inhalt: [TBC!])

Das naheliegendste und auch umfangreichste Geschäftsobjekt, dass sich aus der Betrachtung der Customer Journey ergeben hat, ist das *Gründungsvorhaben*.
Dieses Objekt ist in den ersten vier Phasen der Customer Journey von Relevanz und seine Entstehung liegt in der ersten Phase, der *Orientierung*.

#figure(
image("../assets/GOGruendungsvorhaben.svg", width: 50%),
caption: [Geschäftsobjekt Gründungsvorhaben und dessen Zustände]
) <fig-GOGruendungsvorhaben>


#figure(
  caption: [Geschäftsobjekt Gründungsvorhaben],
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Gründungsvorhaben],

      [Definition / Zweck],
      [/*ich habe noch 2 Screenshots gemacht, als Jan das Kozept erklärte. sie sind in den Assets, GVH_1.png und GVH_2.png (bitte löschen, falls ihr diese nicht braucht */
      Das Gründungsvorhaben speichert und persistiert die Resultate der verschiedenen Phase oder Szenarien der Customer Journey des Kunden.],


      [Attribute],
      [ ],

      [Zustände],
      [initiiert, orientiert, registriert, bewilligt, finanziert, realisiert, abgebrochen
        
        /*#frage([
an alle: ich finde, das Objekt Gründungsvorhaben soll auch ABGEBROCHEN werden können - es fehlt der entsprechende Zustand.

Antwot: ja) 
])*/],

      [Beziehungen],
      [ ],
    )
  ]
) <tbl-GO-Gründungsvorhaben>

== [titel tbd] Zweite Iteration: Zustände und Geschäftstransaktionen oder die Identifikation des relevanten Verhaltens
/*#frage([an alle: wie findet ihr mein Vorschlag für die Dokumentation der Geschäftstransaktionen und Zustände? ist es ok, immer dasselbe Objekt als in- und output zu haben (bspw. bei bewilligung)])*/

Wir dokumentieren die Identifikation von Zuständen und Geschäftstransaktionen pro Szenario, um die Lesbarkeit zu erhalten.
Die entsprechenden Geschäftsprozesse sind ebenfalls modelliert, auch wenn sie später erklärt werden.
Die Szenarien sind in @sec-szenarien-customer-journey beschrieben und werden einzeln aufbereitet. 
#fuehrung([
*Geschäftsobjekte* 

Aus der Geschichte werden die groben Geschäftsobjekte sowie die Beziehungen zwischen den Geschäftsobjekten identifiziert, die in einer dematerialisierten Umsetzung der Geschichte noch Relevanz haben.

Ein Geschäftsobjekt kapselt statische Struktur des RIM. Ein Geschäftsobjekt beschreibt einen zentral wesentlichen Teil des Kontexts einer Unternehmung und abstrahiert vollständig von den Ressourcen der Unternehmung (Dematerialisierung) und dessen Verhalten.

*Zustände:* Zu jedem Geschäftsobjekt werden seine Zustände identifiziert.

*Geschäftstransaktionen:* Entlang der Geschichte werden die Geschäftstransaktionen mit ihren Inputs und Output (Geschäftsobjekte) identifiziert. 
Sowohl bei Input und Output wird darauf geachtet, dass diese inklusive ihre Zustände (bzw. zugehörige Ereignisse) bezeichnet werden. @Spichiger2026GFbUA /*S. 54*/
])

=== Vorgehen

#frage([*Von Jan*: Wir haben im letzten Kapitel alle BOs mit ihren Zuständen eingeführt. Im Nachgang zu erklären, wie wir überhaupt auf diese BOs gekommen sind finde ich zu spät. Dieses Kapitel fände ich in der Einleitung von @head-identifikation-der-bos besser aufgehoben. Ich dort eine Einleitung geschrieben, bevor ich dieses Kapitel gesehen habe. Ich lasse jetzt erstmal beides stehen.])

Um Geschäftsobjekte zu identifizieren hat sich die Gruppe mit der Struktur von Amiras Customer Journey auseinandergesetzt.
Dabei liessen sich Nomen wie "Gründung", "Finanzierung", "Kundenkonto" - diese wurden als Prototypen für mögliche Geschäftsobjekte festgehalten. 

 #figure(
  image("../assets/Customer Journey View.svg", width: 40%),
  caption: [Archimate Modell der Customer Journey von Amira und erste Iteration für die Identifikation der Geschäftsobjekte]
) <fig-customer-journey-view>

=== Modell der identifizierten Objekte

#stolperstein([

Brauchen wir ein Objekt Webseite? Das Modellieren nach RIM fordert Disziplin im identifizieren von Objekten, die als Ressourcen (Teil vom RSM) gelten. Diese werden erst im RSM modelliert. 
  
])

Folgendes Archimate Modell der Geschäftsobjekte von GastroStart, die von der Gruppe identifiziert wurden. 

#figure(
  image("../assets/GO diagram.svg", width: 80%),
  caption: [Geschäftsobjekt Kundenkonto und dessen Zustände]
) <fig-IdentifizierteGeschaefstobjetke>

#design-entscheid([

Es wurde verzichtet, das Objekt Person zu modellieren. 
Die Behandlung von personenbezogenen Invarianten wie Domizil in der Schweiz oder Besitz des Wirtepatentes als Voraussetzung für die Gründung des Unternehmens und für den Erhalt der Betriebsbewilligung würden den Rahmen dieser Arbeit sprengen.

])

=== Amira orientiert sich

#autor-dvbern("Beitrag von Jan Sohnemann, DVBern", inhalt: [])

Was bringt potenzielle Kunden auf eine Plattform wie GastroStart? Am Anfang steht sicherlich der Wunsch, einen Gastronomiebetrieb zu gründen.
Zu diesem Wunsch gehören viele Eigenschaften, zum Beispiel die Art des Betriebs: Handelt es sich um ein Cateringunternehmen, um ein Café oder um eine Bar, in der auch alkoholische Getränke serviert werden?
Die GründerInnen haben dabei vielleicht zunächst nur ihre Betriebszeiten und ihr Wunschklientel vor Augen.
Allerdings hat diese Entscheidung auch regulatorische Auswirkungen, die sich an verschiedenen Standorten unterschiedlich auswirken können.
Von entscheidender Bedeutung ist also auch, wo der Betrieb stattfindet.
Alle Eigenschaften, die mit der Betriebsgründung zusammenhängen, fassen wir im ressourcenunabhängigen Modell im Geschäftsobjekt *Gründungsvorhaben* zusammen.
Das Gründungsvorhaben wird in der ersten Phase, Orientierung, entscheidend geprägt und spielt in den folgenden Phasen die zentrale Rolle.

Im ressourcenunabhängigen Modell nach Archimate sind die Eigenschaften der Geschäftsobjekte zunächst nicht von Bedeutung. Wir beginnen stattdessen mit der Betrachtung der Zustände, die ein Geschäftsobjekt annimmt, und welche Transaktionen einen Zustandswechsel hervorrufen.

Der Auslöser der Customer Journey ist das Gründungsvorhaben. Indem die GründerInnen die Plattform GastroStart betreten, ist ihr Gründungsvorhaben aus Sicht des Systems *initiiert*. 
Diesem Zustand folgt die Geschäftstransaktion *Anforderungen ermitteln*. 
Diese Anforderungen ergeben sich aus den Eigenschaften des Gründungsvorhabens, wie zum Beispiel:
- Personalien der BetriebsinhaberInnen
- Betriebs-Typ (Catering, Café, Bar usw.)
- Ort der Betriebsstätte
- gegebenenfalls vorhandene Zertifikate und Bewilligungen

Welche Anforderungen jeweils gelten, wird vom *Kantonsanforderungskatalog* bestimmt, dessen fester Bestandteil die *digitale Regelmatrix* ist. 
Die Voraussetzungen für Küchenbetrieb oder Alkoholausschank können sich kantonal unterscheiden, ebenso die Art und Ausstattung der Betriebsstätte: 
In Wohngebieten gelten oftmals strengere Auflagen für Lärm- und Geruchsvermeidung als beispielsweise in Industriegebieten. 
Die digitale Regelmatrix verknüpft die Eigenschaften des Gründungsvorhabens mit den jeweiligen kantonalen Anforderungen.
Im Rahmen der Geschäftstransaktion *Anforderungen ermitteln* wird mit Hilfe der Regelmatrix und des kantonalen Anforderungskatalogs das Geschäftsobjekt *Bewilligungsübersicht* erstellt. 
Dieses Objekt enthält alle für das erfasste Gründungsvorhaben geltenden Auflagen und weitere, für eine erfolgreiche Bewilligung wichtige Hinweise.

Mit dem erfolgreichen Abschliessen der Geschäftstransaktion *Anforderungen ermitteln* wechselt das Gründungsvorhaben in den Zustand *orientiert*. 
Die GründerInnen haben damit alle Informationen, die sie brauchen, um das Bewilligungsverfahren erfolgreich zu durchlaufen.

Die folgende Abbildung stellt die Zusammenhänge der Geschäftsobjekte, Zustände und Transaktionen im ressourcenunabhängigen Modell nach Archimate dar. 
Die hier beschriebene Variante liest sich als Happy Path — also die erfolgreiche Erstellung einer Bewilligungsübersicht —, auch wenn der hier verwendete Zielzustand *orientiert* Raum für Variationen lässt. 
Sicherlich ist nicht jedes Gründungsvorhaben realisierbar, und der hier beschriebene Prozess kann durchaus komplexer werden. 
Dass das Gründungsvorhaben nicht realisierbar ist, ist allerdings auch eine Art Orientierung.

Die folgende Abbildung stellt die Geschäftstransaktion mit ihren Verknüpfungen im Archimate Modell.

#figure(
  image("../assets/jan/Zustandsübergänge des Gründungsvorhabens in Phase 1 - Orientierung.svg", width: 100%),
  caption: [Zustandsübergänge des Gründungsvorhabens in Phase 1: Orientierung]
) <fig-GTZ-orientierung>

=== Amira registriert sich bei GastroStart

#autor-dvbern("Beitrag von Jan Sohnemann, DVBern", inhalt: [])

Der Gründungsprozess lässt sich höchstwahrscheinlich nicht in einer Session abschliessen. 
Nachdem die GründerInnen mit dem Abschluss der ersten Phase eine Übersicht zu ihren Rechten, Pflichten und Möglichkeiten haben, werden sie in den meisten Fällen Gesuche stellen müssen.
Das heisst, sie werden Formulare ausfüllen und als Anträge einreichen müssen. 
Diese Anträge haben eine Bearbeitungsdauer, die sich in den meisten Fällen über mindestens einige Tage erstreckt. 
Manche GründerInnen werden wahrscheinlich auch Kenntnisse nachweisen und sich dafür möglicherweise sogar schulen lassen müssen. Damit GründerInnen den Prozess auf GastroStart nicht bei jeder Sitzung von vorn beginnen müssen, macht es Sinn, ihr Gründungsvorhaben und dessen aktuellen Stand mit einem Konto zu verknüpfen. 
Über ihr Konto können sich alle GastroStart-Benutzenden authentifizieren und Aktualisierungen am Gründungsprozess vornehmen oder einsehen.

#design-entscheid([
  Wir haben uns die Frage gestellt, ob wir das Objekt "Kunde" auch zusätzlich modellieren sollen. 
  Wir sind zum Schluss gekommen, dass das Geschäftsobjekt Kundenkonto alle Informationen zum Kunden enthält, weshalb letzteres nicht separat / zusätzlich geführt werden muss.
])

Wir betrachten im folgenden Modell im Wesentlichen das Geschäftsobjekt Kundenkonto und den Geschäftsprozess *Kundenkonto verwalten*, der sich in drei Geschäftstransaktionen unterteilt:
- Konto anlegen
- Konto löschen
- Konto aktualisieren

Die drei Transaktionen sind unabhängig voneinander, mit der Ausnahme, dass Löschen und Aktualisieren ein bestehendes Konto voraussetzen. 
Das Kundenkonto dient einerseits der Authentifizierung, der Autorisierung, der Personalisierung und der Verknüpfung mit dem Gründungsvorhaben. 
Die dafür notwendigen Eigenschaften werden in den Geschäftstransaktionen *Konto anlegen* und *Konto aktualisieren* definiert. 
Ein Beispiel für eine Aktualisierung könnte die Änderung der Postanschrift oder Telefonnummer des Gründers oder der Gründerin sein.

Die folgende Tabelle definiert das Geschäftsobjekt Kundenkonto und zeigt expemparische Attribute, sowie seine Zustände und Beziehungen.

#figure(
  caption: [Geschäftsobjekt Kundenkonto],
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Kundenkonto],

      [Definition / Zweck],
      [Zugangsberechtigung eines Kunden (oder: Benutzer) im System „GastroStart“. Dient der Identifizierung einer Person, ihres Betriebs (oder Betriebe) und aller, für die in diesem System abgebildeten Prozesse, notwendigen Dokumente und Daten. ],

      [Attribute],
      [E-Mailadresse, Passwort, gegebenenfalls 2. Faktor],

      [Zustände],
      [aktiv, inaktiv, aktualisiert, registriert],

      [Beziehungen],
      [Gründungsvorhaben],
    )
  ]
) <tbl-GO-Kundenkonto>

Das Löschen eines Kundenkontos darf nicht in jedem Fall zu dessen Verschwinden führen. Erst wenn alle Geschäftstransaktionen, die mit diesem Konto in Verbindung stehen, abgeschlossen sind, ist eine endgültige Löschung möglich — und auch nur dann, wenn ausstehende Verbindlichkeiten der GründerInnen auch ausserhalb der Plattform beglichen werden können. 
Das Löschen eines Kundenkontos versetzt dieses also im Rahmen dieses Modells zunächst nur in den Zustand *inaktiv*, was bedeutet, dass bereits gestartete Transaktionen abgebrochen werden können, wenn möglich, und keine neuen Transaktionen gestartet werden können.

Dass die Geschäftstransaktion *Konto aktualisieren* das Kundenkonto in einen entsprechenden Zustand überführt, kann in vielen Fällen sinnvoll sein: 
Laufende Prozesse oder Transaktionen müssen unter Umständen über diese Zustandsänderung informiert werden. 
Nehmen wir zum Beispiel wieder die Änderung der Postanschrift: Wahrscheinlich werden sich nicht alle Informationsaustauschprozesse digitalisieren lassen, und eine zuständige Behörde sollte in diesen Fällen für den Schriftverkehr über die Änderung der Postanschrift informiert werden.

Die folgende Abbildung stellt den Prozess *Kundenkonto verwalten* im Archimate Modell dar.

#figure(
  image("../assets/jan/Zustandsübergänge des Kundenkontos in Phase 2 - Sich registrieren.svg", width: 100%),
  caption: [Zustandsübergänge des Gründungsvorhabens in Phase 1: Orientierung]
) <fig-gtz-registrierung>

#design-entscheid([
  Wir haben uns die Frage gestellt, ob wir das Objekt "Kunde" auch zusätzlich modellieren sollen. 
  Wir sind zum Schluss gekommen, dass das Geschäftsobjekt Kundenkonto alle Informationen zum Kunden enthält, weshalb letzteres nicht separat / zusätzlich geführt werden muss.
])

#figure(
  caption: [Geschäftstransaktionen: Prozess «sich registrieren»],
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

      [Konto anlegen],
      [Die GründerIn erfasst ihre Angaben und legt ein Kundenkonto an, das mit ihrem Gründungsvorhaben verknüpft wird.],
      [– → aktiv],

      [Konto aktualisieren],
      [Die GründerIn passt ihre Kontoangaben an (z. B. Postanschrift, Telefonnummer). Betroffene Prozesse oder Behörden werden über die Änderung informiert.],
      [aktiv → aktualisiert],

      [Konto löschen],
      [Das Konto wird deaktiviert, sobald alle damit verbundenen Geschäftstransaktionen abgeschlossen und ausstehende Verbindlichkeiten beglichen sind. Bereits gestartete Transaktionen können abgebrochen werden, neue können nicht mehr gestartet werden.],
      [aktiv → inaktiv],
    )
  ]
) <tbl-GT-sich-registrieren>

=== Amira gründet ihr Unternehmen 

Amira möchte für den Betrieb des Caterings eine Gesellschaft mit beschränkter Haftung (GmbH) oder eine Aktiengesellschaft (AG) gründen, um sich und ihre Familie finanziell vor einem möglichen Misserfolg ihres Unternehmens zu schützen. 
GastroStart hat Amira hingewiesen, dass eine GmbH sich besonders für kleinere und mittlere Unternehmen eignet. Sie ist einfacher und günstiger zu gründen und deshalb für viele Familienbetriebe oder Restaurants eine gute Wahl.
Die GmbH wir es ihr ermöglichen, zwischen Privatvermögen und Geschäft zu trennen - was im Falle des Eintritts von unvorhergesehenen Risiken wie Haftungsfälle oder Überschuldung zu einer Einschränkung der finanziellen Auswirkungen bringen wird. 

Nach der initialen Orientierung und Registrierung auf GastroStart wurden die Wünsche von Amira auf der Plattform festgehalten. 
Wie beim Ausfüllen der Steuererklärung bietet GastroStart eine Anleitung zur Vorbereitung der notwendigen Dokumentation, sodass die Notariatskosten möglichst tief gehalten werden können. 
Dazu gehören Angaben wie der gewünschte Firmennamen, den Sitz und Adresse der Firma, persönliche Informationen zu den Anteilhabenden, die Einzahlung des Gründungskapitals, die Formulierung von Statuten und Lieferung von Identifikationsdokumenten. 

Alles, was Amira Schritt für Schritt vorbereitet wird entsprechend im Gründungsvorhaben festgehalten - respektive kann dort hochgeladen und dokumentiert werden. 
So stehen alle Informationen in GastroStart zur Verfügung und können jederzeit inhaltlich und formell validiert werden. 
Wenn die Checkliste für die Gründung des *Unternehmens* erfolgreich durchgearbeitet worden ist, kann Amira ein Termin beim Notar abmachen und dort die nötigen offiziellen Schritte: die öffentliche Beurkundung durch den Notar und die darauffolgende Anmeldung beim kantonalen Handelsregister. 
Diese Schritte sind notwendig, damit das Unternehmen überhaupt rechtlich existiert und als solches von den Behörden und Wirtschaftspartner anerkannt werden kann, beispielsweise um eine Betriebsbewilligung und eine Finanzierung zu erhalten. 

Die folgende Abbildung stellt die Zusammenhänge der Geschäftsobjekte, Zustände und Transaktionen im ressourcenunabhängigen Modell nach Archimate dar. 
Die abgebildete Variante erwähnt noch die Möglichkeiten des Abbruches der Firmengründung durch Amira oder dass die kantonale Behörde den Eintrag ins Handelsregister nicht vornimmt. 


 #figure(
  image("../assets/GTZ Amira gründet ihr Unternehmen.svg", width: 100%),
  caption: [Geschäftstransaktionen und Zustände - Szenario Amira gründet ihr Unternehmen]
) <fig-GTZ-Amira-gründet>

Nachfolgend wird auf die einzelnen Elemente der Grafik erklärt:

1. *Geschäftsobjekt und Zustände*: 
#figure(
  caption: [Geschäftsobjekt Unternehmen],
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Unternehmen],

      [Definition / Zweck],
      [
        Repräsentiert die zu gründende resp. gegründete juristische Person, an der Amiras Gründungsvorhaben ausgerichtet ist.
        Das Geschäftsobjekt enthält die wesentlichen Stammdaten der Unternehmung. 
        Der Gründungsverlauf selbst wird nicht als Inhalt abgebildet, sondern ist über die Zustände des Objekts nachzuvollziehen.
       /* Die Gründung einer juristischen Person setzt voraus, dass mindestens ein Vertreter Wohnsitz in der Schweiz hat. */
       Die juristische Person ist Empfängerin der Betriebsbewilligung. 
      ],

      [Attribute],
      [Auf Ebene Geschäftsobjekt nicht ausmodelliert. Fachlich relevant wären jedoch: 
      + Auf die eine Seite Informationen wie Rechtsform, Firmenname, Sitz / Domizil, Zweck, Kapital.
      + Auf der anderen Seite Identifikatoren für die Interaktion zu den verschiedenen öffentlich-rechtlichen Akteure auf kantonale und Bundesebene wie Unternehmens-ID, Mehrwertsteuer-Nummer, AHV-Nummer, Nummer der Unfallversicherungspolice (SUVA oder private Versicherung).
      
        _(nur Stammdaten; zugehörige Dokumente wie Handelsregistereintrag oder Bewilligung sind eigene Objekte, siehe Beziehungen)_
      ],

      [Zustände],
      [neu, beurkundet, eingereicht, unvollständig, angenommen, abgelehnt, im Handelsregister eingetragen, abgebrochen.
      
      Lebenszyklus: von _neu_ über _beurkundet_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung die Status _angenommen_ und _im Handelsregister eingetragen_ erreicht werden. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist. 
      Für die grafische Aufbereitung der Zustandsübergänge, vgl. @fig-GTZ-Amira-gründet.],

      [Beziehungen],
      [
        - wird referenziert von *Gründungsvorhaben* (wobei die Gründung der juristischen Person nicht zwingend notwendig ist)
        - steht in Beziehung zu 
         - *Kundenkonto*: als Objekt des Gründungsvorhabens
         - *Bewilligung*: als Empfänger
         - *Lieferantenkonto* als Kunde und Debitor von Transgourmet
         - und *Finanzierung*: als Empfänger der Mittel
        - Zugriff über die Geschäftstransaktionen 
          - Gründungsdokumentation vorbereiten, Eintrag im Handelsregister beantragen, Antrag prüfen, im Handelsregister eintragen und Unterlagen nachreichen (siehe @tbl-GT-Unternehmen-gründen). 
      ],
    
    )
  ]
) <tbl-GO-Unternehmen>

/*
#figure(
image("../assets/GOUnternehmen.svg", width: 50%),
caption: [Geschäftsobjekt Unternehmen und dessen Zustände]
) <fig-GOUnternehmen>
*/

/*
#figure(
  caption: [Geschäftsobjekt Unternehmen],
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Unternehmen],

      [Definition / Zweck],
      [
        Repräsentiert die zu gründende resp. gegründete juristische Person, an der Amiras Gründungsvorhaben ausgerichtet ist.
        Das Geschäftsobjekt enthält die wesentlichen Stammdaten der Unternehmung. 
        Der Gründungsverlauf selbst wird nicht als Inhalt abgebildet, sondern ist über die Zustände des Objekts nachzuvollziehen.
       /* Die Gründung einer juristischen Person setzt voraus, dass mindestens ein Vertreter Wohnsitz in der Schweiz hat. */
       Die juristische Person ist Empfängerin der Betriebsbewilligung. 
      ],

      [Attribute],
      [Auf Ebene Geschäftsobjekt nicht ausmodelliert. Fachlich relevant wären jedoch: 
      + Auf die eine Seite Informationen wie Rechtsform, Firmenname, Sitz / Domizil, Zweck, Kapital.
      + Auf der anderen Seite Identifikatoren für die Interaktion zu den verschiedenen öffentlich-rechtlichen Akteure auf kantonale und Bundesebene wie Unternehmens-ID, Mehrwertsteuer-Nummer, AHV-Nummer, Nummer der Unfallversicherungspolice (SUVA oder private Versicherung).
    
        _(nur Stammdaten; zugehörige Dokumente wie Handelsregistereintrag oder Bewilligung sind eigene Objekte, siehe Beziehungen)_
      ],

      [Beziehungen],
      [
        - wird referenziert von *Gründungsvorhaben* (wobei die Gründung der juristischen Person nicht zwingend notwendig ist)
        - steht in Beziehung zu 
         - *Kundenkonto*: als Objekt des Gründungsvorhabens
         - *Bewilligung*: als Empfänger
         - *Lieferantenkonto* als Kunde und Debitor von Transgourmet
         - und *Finanzierung*: als Empfänger der Mittel
        - Zugriff über die Geschäftstransaktionen 
          - Gründungsdokumentation vorbereiten, Eintrag im Handelsregister beantragen, Antrag prüfen, im Handelsregister eintragen und Unterlagen nachreichen (siehe @tbl-GT-Unternehmen-gründen). 
      ],
    
    )
  ]
) <tbl-GO-Unternehmen>

+ *Zustände*: neu, beurkundet, eingereicht, unvollständig, angenommen, abgelehnt, im Handelsregister eingetragen, abgebrochen.

+ *Lebenszyklus*: von _neu_ über _beurkundet_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung die Status _angenommen_ und _im Handelsregister eingetragen_ erreicht werden. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist. 
*/

2. *Geschäftstransaktionen*: 
Das Geschäftsobjekt Unternehmen durchläuft mehrere Transaktionen: 
- In einer ersten Phase ist Amira in Führung: sie _bereitet_  mit der Hilfe von Informationen und Fachfunktionen auf GastroStart die _Unterlagen_ für die Gründung der "Food Affair GmbH _vor_. Nach der öffentlichen Beurkundung _beantragt_ sie den _Eintrag im Handelsregister_ für ihre GmbH. 
- Danach ist der Ball bei den Behörden: das kantonale Handelsregisteramt _prüft den Antrag_ auf Vollständigkeit, _lehnt es ab_ oder _nimmt es an_ und _trägt die GmbH im Handelsregister ein_. 

#figure(
  caption: [Geschäftstransaktionen: Prozess "Unternehmen gründen"],
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

      [Gründungs-dokumentation vorbereiten], [Amira erstellt die für die Gründung notwendigen Dokumente und sammelt die notwendigen Beilagen  und bringt diese physisch beim Notar vorbei und beauftragt diesen mit der Gründung der GmbH. Sie zahlt das Gründungskapital ein.], [neu → beurkundet],
      [Eintrag im Handelsregister beantragen], [Amira meldet ihre GmbH über ihren Notar beim Handelsregisteramt des Kantons, in dem die GmbH ihr Sitz hat.], [beurkundet → eingereicht],
      [Prüfung durch Handelsregister (abwarten)], [ Das Handelsregisteramt prüft den Antrag prüft den Antrag formell und entscheidet über das weitere Vorgehen.
       ], [eingereicht → angenommen / abgelehnt / unvollständig],
      [Im Handelsregister eintragen], [Das Handelregisteramt teilt Amira mit, dass der Eintrag im Register erfolgt ist], [angenommen → im Handelsregister eingetragen],
    )
  ]
) <tbl-GT-Unternehmen-gründen>


=== Amira erhält die Bewilligung

Nach der Gründung ihrer GmbH, die übrigens "Amiras' FoodAffairs GmbH" heisst, kann unsere Heldin den nächsten Hürdenlauf vornehmen. 
So wie mit der Gründung des Unternehmens bereits erfolgt, unterstützt GastroStart Amira dabei, alle Unterlagen, Bestätigungen und Nachweise vorzubereiten oder einzuholen, die für die Erteilung der Betriebsbewilligung durch die zuständige Behörde am gewählten Standort gefordert sind. 

GastroStart gibt Amira über jedes Lieferobjekt Auskunft, zeigt auf, wo welcher Nachweis einholt werden kann.
Dank GastroStart kann Amira der Sinn hinter jeder behördlichen Anforderung nachvollziehen, und die motiviert sie bei der zeitaufwändigen Zusammenstellung. Denn die Anforderungen an die Erteilung der Betriebsbewilligung dienen dem Schutz der Gäste, denn die Vorschriften decken Bereiche ab wie Hygiene und Lebensmittelsicherheit, Bau- und Brandschutz und nicht zuletzt die persönliche Eignung von Amira für die Führung des Caterings. 

Bemerkung: Eigentlich ist nicht Amira die Empfängerin der Betriebsbewilligung für das Catering, sondern diese wird ihrer FoodAffairs GmbH ausgestellt.

Die folgende Abbildung stellt die Zusammenhänge der Geschäftsobjekte, Zustände und Transaktionen im ressourcenunabhängigen Modell nach Archimate dar. 

 #figure(
  image("../assets/GTZ Amira erhält die Bewilligung.svg", width: 100%),
  caption: [Geschäftstransaktionen und Zustände - Szenario "Amira erhält die Bewilligung"]
) <fig-GTZ-Amira-bewilligung>

Nachfolgend wird auf die einzelnen Elemente der Grafik erklärt:

1. *Geschäftsobjekt und Zustände*:
/*#figure(
image("../assets/GOBewilligung.svg", width: 50%),
caption: [Geschäftsobjekt Bewilligung und dessen Zustände]
) <fig-GOBewilligung>
*/

#figure(
  caption: [Geschäftsobjekt Bewilligung],
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Bewilligung],

      [Definition / Zweck],
      [Stellt ein behördlicher "Vertrag" dar, welcher einer natürlichen oder juristischen Person (_in casu_ dem Unternehmen von Amira) erteilt werden kann.
      Die Erteilung der Bewilligung setzt je nach Kanton ein Fähigkeitsausweis voraus. In Kanton Fribourg muss mindestens eine Person im Betrieb ein Wirtepatent besitzen.],

      [Attribute],
      [/*REDEwendung von Adrian übernehmen*/fachlich relevante Informationen zum Geschäftsobjekt sind: Typ (mit oder ohne Alkoholausschank), unterliegendes Wirtepatent (insbesondere dessen territoriale Gültigkeit), Standort bzw. Lokal, Datum Bewilligungsbeginn, erteilende Behörde, Datum der Anmeldung bei der kantonalen Lebensmittelbehörde bzw. -labor, Hygienekonzept],

      [Zustände],
      [neu, in Vorbereitung, eingereicht, unvollständig, abgelehnt, erteilt, abgebrochen. 
      
      Lebenszyklus: von _neu_ über _in Vorbereitung_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung der Status _erteilt_ erreicht wird. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist.
      Für die grafische Aufbereitung der Zustandsübergänge, vgl. @fig-GTZ-Amira-bewilligung. 

      Andere Zustände wie erloschen, entzogen, sistiert, sind für die abgebildete Customer Journey nicht relevant.],
      [Beziehungen],
      [- wird referenziert von *Gründungsvorhaben* // sagt man das so? ist das korrekt?
        - steht in Beziehung zu *Unternehmen* als Adressat
        - Zugriff über die Geschäftstransaktionen 
          - Bewilligungsantrag vorbereiten, Bewilligungsantrag einreichen, Bewilligungsantrag vervollständigen, Antrag prüfen, Verfügung mitteilen (siehe @tbl-GT-Bewilligung). ],
    )
  ]
) <tbl-GO-Bewilligung>

/*
#figure(
  caption: [Geschäftsobjekt Bewilligung],
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
        text(fill: white, weight: "bold", size: 0.95em)[Angabe],
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
      [Bewilligung],

      [Definition / Zweck],
      [Stellt ein behördlicher "Vertrag" dar, welcher einer natürlichen oder juristischen Person (_in casu_ dem Unternehmen von Amira) erteilt werden kann.
      Die Erteilung der Bewilligung setzt je nach Kanton ein Fähigkeitsausweis voraus. In Kanton Fribourg muss mindestens eine Person im Betrieb ein Wirtepatent besitzen.],

[Attribute],
      [/*REDEwendung von Adrian übernehmen*/fachlich relevante Informationen zum Geschäftsobjekt sind: Typ (mit oder ohne Alkoholausschank), unterliegendes Wirtepatent (insbesondere dessen territoriale Gültigkeit), Standort bzw. Lokal, Datum Bewilligungsbeginn, erteilende Behörde, Datum der Anmeldung bei der kantonalen Lebensmittelbehörde bzw. -labor, Hygienekonzept],

      [Beziehungen],
      [- wird referenziert von *Gründungsvorhaben* // sagt man das so? ist das korrekt?
        - steht in Beziehung zu *Unternehmen* als Adressat
        - Zugriff über die Geschäftstransaktionen 
          - Bewilligungsantrag vorbereiten, Bewilligungsantrag einreichen, Bewilligungsantrag vervollständigen, Antrag prüfen, Verfügung mitteilen (siehe @tbl-GT-Bewilligung). ],
    )
  ]
) <tbl-GO-Bewilligung>

+ *Zustände*: neu, in Vorbereitung, eingereicht, unvollständig, abgelehnt, erteilt, abgebrochen. 

+ *Lebenszyklus*: von _neu_ über _in Vorbereitung_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung der Status _erteilt_ erreicht wird. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist.

Andere Zustände wie erloschen, entzogen, sistiert, sind für die abgebildete Customer Journey nicht relevant.

#design-entscheid([Wir haben uns entschieden, die Frage um das Schicksal des Objekts "Bewilligung" im Fall der Löschung des Benutzerprofils von Amira offenzulassen.])

#figure(
image("../assets/ZustandGOBewilligung-2.svg", width: 60%),
caption: [Zustandsdiagramm des Geschäftsobjekt Bewilligung]
) <fig-GOBewilligung>
*/

#design-entscheid([Wir haben uns entschieden, die Frage um das Schicksal des Objekts "Bewilligung" im Fall der Löschung des Benutzerprofils von Amira offenzulassen.])
 
 
 2. *Geschäftstransaktionen*:
Amira möchte beantragt im Namen ihres Unternehmens die Bewilligung für den Betrieb von Catering.
Das Geschäftsobjekt Bewilligung durchläuft mehrere Transaktionen: 
- In einer ersten Phase ist Amira in Führung: sie _bereitet_  mit der Hilfe der Informationen auf Gastrostart die _Unterlagen_ für den Bewilligungsantrag _vor_. Wenn sie alle Unterlagen gesammelt hat, _reicht_ sie den _Bewilligungsantrag_ bei der zuständigen Behörde _ein_. 
- Danach ist der Ball bei den Behörden: die Behörde _prüft den Antrag_ auf Vollständigkeit, _lehnt es ab_ oder _erteilt_ der Food Affair GmbH die Betriebsbewilligung. 



#figure(
  caption: [Geschäftstransaktionen: "Bewilligung erhalten"],
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
        text(fill: white, weight: "bold", size: 0.95em)[Geschäfts-\ transaktion],
        text(fill: white, weight: "bold", size: 0.95em)[Beschreibung],
       text(fill: white, weight: "bold", size: 0.95em)[Zustands\u{00AD}übergang],
      )
    ]
    #set par(justify: false)
    #table(
      columns: (3.8cm, 1fr, 3.2cm),
      inset: (x: 10pt, y: 7pt),
      stroke: (x: none, y: 0.5pt + luma(232)),
      fill: (x, y) => if calc.odd(y) { luma(250) } else { white },
      align: (left, left, left),

      [Bewilligungsantrag vorbereiten],
      [Amira erfasst die erforderlichen Angaben und Unterlagen für den Bewilligungsantrag.],
      [neu → in Vorbereitung],

      [Bewilligungsantrag einreichen],
      [Der vorbereitete Antrag wird bei der zuständigen Behörde eingereicht. Ab hier ist kein eigenständiger Rückzug mehr möglich.],
      [in Vorbereitung → eingereicht],

      [Bewilligungsantrag vervollständigen],
      [Amira reicht die von der Behörde nachgeforderten Unterlagen nach, damit die Prüfung fortgesetzt werden kann.],
      [unvollständig → in Vorbereitung],

      [Antrag prüfen],
      [Die Behörde prüft den Antrag formell und inhaltlich und entscheidet über das weitere Vorgehen.],
      [eingereicht → erteilt / abgelehnt / unvollständig],

      [Verfügung mitteilen],
      [Die Behörde teilt Amira das Ergebnis der Prüfung als Verfügung mit.],
      [erteilt / abgelehnt],
    )
  ]
) <tbl-GT-Bewilligung>


/*Amira erhält eine Finanzierung*/

=== Amira erhält eine Finanzierung
Nachdem Amira die Betriebsbewilligung erhalten hat, benötigt sie Kapital für die Erstanschaffungen. In dieser Phase übernimmt FINNOFLEET: Amira stellt über GastroStart ein Finanzierungsgesuch, das anhand ihrer Angaben und einer Bonitätsprüfung beurteilt wird. Das Geschäftsobjekt #emph[Finanzierung] durchläuft dabei vier Geschäftstransaktionen. Die letzte davon überschreitet die Objektgrenze: Sie schliesst den Finanzierungsfall ab und versetzt das #emph[Gründungsvorhaben] in den Zustand #emph[finanziert].

+ Zustände der Finanzierung: neu, angefordert, unvollständig, vollständig, angenommen, abgelehnt, abgebrochen (siehe @tbl-GO-Finanzierung).
+ Zustand des Gründungsvorhabens: finanziert (siehe #ref(<tbl-GO-Gründungsvorhaben>)).
+ Geschäftstransaktionen: Finanzierung vorbereiten, Finanzierung anfordern, Finanzierung prüfen, Finanzierung zusagen.

#figure(
  image("../assets/GTZ Amira erhält eine Finanzierung.svg", width: 100%),
  caption: [Geschäftstransaktionen der Phase «Amira erhält eine Finanzierung»]
) <fig-GTZ-finanzierung>

#figure(
  caption: [Geschäftstransaktionen der Phase «Amira erhält eine Finanzierung»],
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
      [FINNOFLEET führt die Bonitätsprüfung durch und entscheidet über das Gesuch. Bei fehlenden Nachweisen wird der Fall als unvollständig zurückgewiesen; andernfalls wird er angenommen oder abgelehnt.],
      [angefordert → angenommen / abgelehnt / unvollständig],

      [Finanzierung zusagen],
      [FINNOFLEET sagt die angenommene Finanzierung verbindlich zu, eröffnet das Geschäftskonto und stellt die IBAN bereit. Die Transaktion greift auf beide Objekte zu: sie schliesst den Finanzierungsfall ab und setzt den Zustand #emph[finanziert] auf dem #emph[Gründungsvorhaben].],
      [angenommen → finanziert (Gründungsvorhaben)],
    )
  ]
) <tbl-GT-finanzierung-erhalten>

=== Amira wird Kunde bei Transgourmet

#figure(
  image("../assets/Phase 5 - Kunde bei Transgourmet.svg", width: 100%),
  caption: [Geschäftstransaktionen des Szenarios «Amira wird Kunde bei Transgourmet»]
) <fig-GTZ-kunde-bei-transgourmet>

#figure(
  caption: [Geschäftstransaktionen: Prozess «Kunde bei Transgourmet werden»],
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

      [ Gastrobetrieb erfassen ], [ Das Gründungsvorhaben ist als Gastrobetrieb realisiert ], [ -> aktiv Gastrobetrieb ],
      [ Lieferantenkonto beantragen ], [ Die Geschäftsbeziehung zum Lieferanten wird aufgebaut ], [ -> pendent Lieferantenkonto ],
      [ Lieferantenkonto eröffnen ], [ Die Geschäftsbeziehung zum Lieferanten ist aufgebaut ], [ pendent -> aktiv Lieferantenkonto ],
      [ Bestellung aufgeben ], [ Die erste Bestellung wird aufgegeben ], [ erfasst -> gesendet Bestellung ],
      [ Wareneingang erfassen ], [ Der erwarteteWareneingang wird erfasst ], [ -> offen Wareneingang ],
    )
  ]
) <tbl-GT-Kunde-bei-Transgourmet>

=== Reflexion

 #figure(
  image("../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg", width: 80%),
  caption: [Archimate Modell der Customer Journey von Amira]
) <fig-customer-journey-view>

#stolperstein([
  Die Kundensicht ständig zu behalten und Abstand vom eigenen Fachbereich zu halten ist den Gefährten nicht immer gelungen. 
  ])

Eine anfängliche Identifikation der Geschäftsobjekte führte die Gruppe zu einer umfangreicheren Liste.
Physische Artefakte wie "Bewilligung", "Liefervertrag" oder "kantonales Formular" schienen uns vorerst sehr sinnvoll und notwendig. 
In einer frühen Phase war es besonders schwierig, die reine Kundensicht einzunehmen - und führte dazu, dass beispielsweise zwischen Bewilligungsantrag und die erteilte Bewilligung (Verfügung) unterschieden wurde.

Nachofolgende Tabelle enthält eine Zusammenfassung der anfänglichen Objekte: 

#figure(
  caption: [Business-Object-Inventar: GastroStart — nach Kernel Type],
  block(width: 100%, breakable: true)[
    #set text(size: 7.5pt)
    #table(
      columns: (1.9cm, 1fr),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left, left),
      [*Kernel Type*], [*Business Objects*],
      [Contract],     [Gewerbebewilligung · Alkoholbewilligung · Handelsregistereintrag · Kreditantrag · Liefervertrag (Neukunde)],
      [Data Object],  [Bonitätsprüfung],
      [Document],     [Kantonsanforderungskatalog ·Bewilligungsantrag · Bewilligungsübersicht · Identitätsnachweis · Anmeldung Lebensmittelkontrolle · Kantonales Formular · Bestellung],
      [Entity],       [Betriebstyp-Profil · Gründungsprofil · Nutzerkonto · Geschäftskonto (IBAN) · Lieferantenkonto],
      [Event],        [Bewilligungsstatus],
    )
  ]
) <tbl-business-objects-grouped>

Die in den Übungen gestellte Frage "Was bleibt, wenn Ihr Unternehmen dematerialisiert wird? Alles wird zur Information, was Information werden kann. 
Was bleibt physisch vorhanden, was verschwindet?" 


/*#figure(
  caption: [Business-Object-Inventar: GastroStart],
  block(width: 100%, breakable: true)[
    #set text(size: 7.5pt)
    #table(
      columns: (3.3cm, 1.9cm),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left, left),
      [*Business Object*], [*Kernel Type*],
      [Kantonsanforderungskatalog],    [Document],
      [Unternehmen],                    [Entity],
      [Bewilligungsantrag],              [Document],
      [Bewilligungsübersicht],          [Document],
      [eID-Identitätsnachweis],         [Document],
      [Gründungsprofil],               [Entity],
      [Nutzerkonto],                   [Entity],
      [Gewerbebewilligung],            [Contract],
      [Lebensmittelkontroll-Anmeldung],[Document],
      [Alkoholbewilligung],            [Contract],
      [Handelsregistereintrag],        [Contract],
      [Bewilligungsstatus],            [Event],
      [Kantonales Formular],           [Document],
      [Bonitätsprüfung],              [Data Object],
      [Geschäftskonto (IBAN)],         [Entity],
      [Kreditantrag],                  [Contract],
      [Lieferantenkonto],              [Entity],
      [Bestellung],                    [Document],
      [Liefervertrag (Neukunde)],      [Contract],
    )
  ]
) <tbl-business-objects-kurzform>
*/

#stolperstein([

In dieser Phase wurde mehrmals die Modellierungsebene verfehlt.
Schwierigkeiten bat es, Abstand von der gewohnte Implementierungsebene zu halten - und Transaktionen nicht wie eine Benutzerführung auf einem Applikations-Frontend zu modellieren. 

])

+ *zu "kleine" Objekte:* in einer frühen Phase wurden Bestellung und Bestellbestätigung als separate Objekte modelliert - anstatt auf die Sichtbarkeit und Einsehbarkeit des Zustands aufzubauen. 
/*Zustände sind absolut und für alle Beteiligten sichtbar - eine separat modellierte  Bestätigung braucht es nicht. 
*/

 #figure(
  image("../assets/reflektion.png", width: 80%),
  caption: [Archimate Modell einer frühen Modellierungsphase]
) <fig-reflektion_transgourmet>

+ *getrennte Objekte* in einer ebenfalls frühen Phase wurde zwischen zwei Objekten, "Betriebsbewilligungsantrag" und "Betriebsbewilligung" unterscheidet. Dabei benötigt die abstrakte Modellierung nur ein Geschäftsobjekt: die Betriebsbewilligung bleibt bestehen, ihr Zustand gibt Auskunft darauf, ob der "Vertrag" mit der Behörde bereits abgeschlossen ist (Zustand "erteilt") oder eben noch nicht (Zustande "beantragt").

#figure(
  image("../assets/Betriebsbewilligung beantragen - verfügen.png", width: 80%),
  caption: [Archimate Modell einer frühen Modellierungsphase von "Betriebsbewilligung erhalten"]
) <fig-obs-bewilligung-erhalten>


== Dritte Iteration: Geschäftsprozesse und Vollständigkeit des bisherigen Modells

#fuehrung([

Geschäftstransaktionen, die inhaltlich zusammenhängen, werden zu *Geschäftsprozessen* aggregiert.
Auf der Basis der In- und Outputs der Geschäftstransaktionen werden für jeden Geschäftsprozess seine *Abhängigkeiten zu Geschäftsobjekten* identifiziert.
@Spichiger2026GFbUA

])

=== Geschäftsprozesse für die Orientierung auf der Webseite von Gastrostart

Während der Orientierung auf der Webseite von GastroStart sind keine Geschäftsprozesse zu identifizieren, da die Orientierung auf der Webseite keine Geschäftstransaktionen beinhaltet. Die Orientierung dient der Informationsbeschaffung und der Vorbereitung von Geschäftstransaktionen, die in den nachfolgenden Phasen stattfinden.

=== Geschäftsprozess für die Registrierung bei Gastrostart

#todo-action([\@ Jan, bitte nachführen])
1. Geschäftsprozesse 
2. Abhängigkeiten von Geschäftsobjekten 

=== Geschäftsprozess: Unternehmen gründen

#figure(
  image("../assets/GP+GF Amira gründet ihr Unternehmen.svg", width: 100%),
  caption: [Geschäftsprozesse - Szenario Amira gründet ihr Unternehmen]
) <GPGF_Amira_gründet_Unternehmen>

1. Geschäftsprozesse 

Handelsregistereintrag erhalten 
wichtig, weil der Unternehmen erst dann überhaupt existiert und als solches auch Handlungs- und Geschäftsfähig ist! 

Unternehmen bei Behörde anmelden 

2. Abhängigkeiten von Geschäftsobjekten 

=== Geschäftsprozess Bewilligung erhalten

1. Geschäftsprozesse 
2. Abhängigkeiten von Geschäftsobjekten 

=== Geschäftsprozess Finanzierung erhalten

#figure(
  image("../assets/GP Amira erhält eine Finanzierung.svg", width: 100%),
  caption: [Geschäftsprozesse - Szenario Amira erhält eine Finanzierung]
) <GP_Amira_erhaelt_Finanzierung>

1. Geschäftsprozesse

Die vier Geschäftstransaktionen der Phase (siehe @tbl-GT-finanzierung-erhalten) aggregieren zu zwei Geschäftsprozessen. Die Trennlinie liegt dort, wo die Verantwortung wechselt: solange Amira ihr Gesuch aufbaut und einreicht, liegt der Fall bei ihr; ab der Beurteilung liegt er bei FINNOFLEET.

Finanzierung initiieren
umfasst die Geschäftstransaktionen #emph[Finanzierung vorbereiten] und #emph[Finanzierung anfordern]. Der Prozess führt das Geschäftsobjekt #emph[Finanzierung] von #emph[neu] über #emph[vollständig] nach #emph[angefordert] und endet mit der Übergabe des Gesuchs an FINNOFLEET. Wichtig ist die Schleife über #emph[unvollständig]: fehlende Nachweise führen zurück in die Vorbereitung, ohne dass der Fall verloren geht; #emph[abgebrochen] beendet ihn vorzeitig. Dieser Prozess gehört fachlich zu GastroStart, weil hier die Kundeninteraktion stattfindet.

Finanzierung erhalten
umfasst die Geschäftstransaktionen #emph[Finanzierung prüfen] und #emph[Finanzierung zusagen]. Der Prozess führt die Finanzierung von #emph[angefordert] nach #emph[angenommen] --- oder nach #emph[abgelehnt], respektive bei fehlenden Nachweisen zurück nach #emph[unvollständig]. Mit der Zusage wechselt der Zustand die Objektgrenze: nicht die Finanzierung, sondern das #emph[Gründungsvorhaben] wird #emph[finanziert]. Er ist der eigentliche Beitrag von FINNOFLEET zum Joint Venture und der Punkt, an dem aus Amiras Gründungsvorhaben ein finanziertes Unternehmen wird. Beide Prozesse zusammen realisieren die Geschäftsfähigkeit #emph[Gründungsvorhaben finanzieren], die im Abschnitt «Geschäftsfähigkeiten Finanzierung erhalten» in Teilfähigkeiten zerlegt wird.

2. Abhängigkeiten von Geschäftsobjekten

- #emph[Finanzierung] --- das zentrale Objekt beider Prozesse: alle vier Geschäftstransaktionen greifen darauf zu, und die Zustände des Objekts sind die Fortschrittsanzeige des Gesamtprozesses (siehe @tbl-GO-Finanzierung).
- #emph[Gründungsvorhaben] --- fachlicher Auslöser und Empfänger des Prozessergebnisses: die abschliessende Transaktion #emph[Finanzierung zusagen] greift auch auf dieses Objekt zu und versetzt es in den Zustand #emph[finanziert]. Sie ist damit die einzige Transaktion der Phase, die auf zwei Geschäftsobjekte wirkt.
- Indirekt, über das Objektmodell der Finanzierung: #emph[Bewilligung] als Voraussetzung (ohne Betriebsbewilligung kein Gesuch) und #emph[Unternehmen] als Empfänger der Mittel und Inhaber des Geschäftskontos.

=== Geschäftsprozesse Kunde bei Transgourmet werden

1. Geschäftsprozesse 

Über die Geschäftsobjekte #emph[Lieferantenkonto] und #emph[Bestellung] werden die Geschäftstransaktionen in diesem Szenario zu zwei Geschäftsprozessen aggregiert:
- Lieferantenkonto beantragen und eröffnen
- Bestellung aufgeben und Wareneingang erfassen

2. Abhängigkeiten von Geschäftsobjekten 

Diese Geschäftsprozesse bilden das letze Szenario der Customer Journey ab. Eine erfolgreiche Realisation des Gründungsvorhabens von Amira ist die Voraussetzung.

== Alles zusammenbauen: End-to-End Prozess: Onboarding Gastrounternehmens
#frage([\@ alle: einverstanden? note to self: mit Swimmlanes und diese prozessbausteine abbilden])

== Vierte Iteration: Geschäftsfähigkeiten und Abhängigkeiten untereinander

#fuehrung([Geschäftsfähigkeiten bilden eine stabile, redundanzfreie Baumstruktur der funktionalen Dekomposition einer Unternehmung. Sie abstrahieren von jeglichen Ressourcen, werden aber von diesen unterstützt. Geschäftsfähigkeiten sind in sich stark zusammenhängend während sie mit andern Geschäftsfähigkeiten lose gekoppelt sind. @Spichiger2026GFbUA])

=== Geschäftsfähigkeiten für die Orientierung auf der Webseite von Gastrostart

Die Geschäftsfähigkeit, die im Szenario *Orientierung auf der Webseite von Gastrostart* tragend wird, wurde als *GastroStart vorstellen* identifiziert. Sie bildet die Grundlage für die Entscheidung, ob Amira ihr Gründungsvorhaben über GastroStart realisieren möchte.

=== Geschäftsfähigkeiten für die Registrierung bei Gastrostart

1. Identitätsverwaltung 
• Der Benutzer legt Kennung und Credentials fest.
• Vergabe und Verwaltung einer eindeutigen Benutzerkennung.
• Festlegung und sichere Speicherung von Passwort / MFA.
• Überprüfung der Identität bei späteren Anmeldungen.

2. Zugangsverwaltung
• Steuerung, wer auf welche Plattformressourcen zugreifen darf. 
• Aktivierung des Benutzerkontos (z. B. E-Mail-Verifikation).
• Vergabe von Rollen (Gründer, Mentor, Investor).

3. Profilmanagement
• Der Benutzer erstellt ein Profil seines Gründungsvorhabens. 
• Aufnahme von Stammdaten zum Gründer und Vorhaben
• Dokumentation von Idee, Branche, Phase des Start-ups
• Spätere Änderung und Aktualisierung des Profils.

4. Datenvalidierung
• Sicherstellung der Qualität und Vollständigkeit der eingegebenen Daten. 
• Prüfung auf gültige E-Mail, Kennwortregeln etc.
• Pflichtfelder im Gründungsprofil
• Erkennung bereits vorhandener Kennunge

=== Geschäftsfähigkeiten der Behördeninteraktion: Unternehmen gründen und Bewilligung erhalten

#figure(
  image("../assets/GF Behördeninteration.svg", width: 80%),
  caption: [Archimate Modell der Geschäftsfähigkeiten der Behördeninteraktion]
) <fig-GF_Behördeninteraktion>

=== Geschäftsfähigkeiten Finanzierung erhalten

Die übergeordnete Geschäftsfähigkeit lautet *Gründungsvorhaben finanzieren*. Sie wird im Joint Venture arbeitsteilig getragen: FINNOFLEET verantwortet den Finanzierungskern --- Prüfung, Entscheid und Kontobereitstellung ---, während die kundenzugewandte Antragserfassung bei GastroStart liegt. Die Fähigkeit zerfällt in vier Teilfähigkeiten:

1. Finanzierungsantrag-Management
• Erfassung des Finanzierungsgesuchs mit Betrag, Verwendungszweck und Laufzeit.
• Verwaltung der erforderlichen Unterlagen (Businessplan, Kostenaufstellung, Bewilligungsnachweis).
• Vollständigkeitsprüfung und Nachforderung fehlender Angaben.

2. Bonitätsprüfung
• Automatisierte Beurteilung der Kreditwürdigkeit auf Basis der Antragsdaten.
• Scoring nach definierten Kriterien (u. a. Einkommenssicherheit, Risikoprofil).
• Bereitstellung eines nachvollziehbaren Prüfergebnisses.

3. Kreditentscheidung
• Ableitung von Zusage oder Absage aus dem Prüfergebnis.
• Festlegung der Konditionen (Zinssatz, Laufzeit) bei Zusage.
• Begründung des Entscheids in verständlicher Sprache.

4. Konto- und IBAN-Bereitstellung
• Eröffnung des Geschäftskontos nach positivem Entscheid.
• Vergabe der IBAN als Grundlage für den späteren Zahlungsverkehr.

*Zuordnung zu den Geschäftsprozessen.* Teilfähigkeit 1 stützt den Prozess *Finanzierung initiieren* und liegt bei GastroStart, weil dort die Kundeninteraktion stattfindet. Die Teilfähigkeiten 2 bis 4 stützen den Prozess *Finanzierung erhalten* und liegen damit bei FINNOFLEET (siehe @GP_Amira_erhaelt_Finanzierung).

Die letzten beiden Punkte von Teilfähigkeit 3 --- verständliche Begründung und Verweis auf Förderprogramme --- leiten sich aus der Chance des Szenarios #emph[Amira erhält eine Finanzierung] ab (siehe @tbl-szenario-finanzierung) und beschreiben einen Soll-Zustand. Bewusst nicht als eigene Geschäftsfähigkeit geführt wird die Kommunikation dieses Entscheids: Wie das Ergebnis Amira präsentiert wird, ist eine Frage der Kanäle und Interaktionskomponenten und gehört damit ins RSM, nicht in die ressourcenunabhängige Fähigkeitsstruktur.

// Optionale Grafik: bei Bedarf ein Capability-View "Gründungsvorhaben finanzieren"
// in Archi anlegen (vier Teilfähigkeiten, Composition), als assets/GF_Finanzierung.svg
// exportieren und als #figure einfügen (analog zu "GF Behördeninteration.svg").

=== Geschäftsfähigkeiten Kunde bei Transgourmet werden

Die Geschäftsfähigkeit die im Szenario *Kunde bei Transgourmet werden* tragend werden, wurden als *Lieferantenkonto* und *Bestellung* identifiziert.
Das Einordnen gelingt am Besten anhand der Geschäftstransaktionen, wie sie in der Phase *Amira wird Kunde bei Transgourmet* beschrieben sind (siehe @tbl-GT-Kunde-bei-Transgourmet). Die Geschäftstransaktionen werden zu zwei Geschäftsprozessen aggregiert, die wiederum die beiden Geschäftsfähigkeiten stützen.

1. Lieferantenkonto

Ein erfolgreicher Gastronomiebetrieb benötigt ein Lieferantenkonto, um Waren zu beziehen. Die Geschäftsfähigkeit *Lieferantenkonto* umfasst die Eröffnung und Verwaltung dieses Kontos. Sie wird durch die Geschäftsprozesse *Lieferantenkonto beantragen* und *Lieferantenkonto eröffnen* unterstützt.

2. Bestellung

Die Geschäftsfähigkeit *Bestellung* umfasst die Erfassung und Verwaltung von Bestellungen beim Lieferanten. Die Geschäftsprozesse *Bestellung aufgeben* und *Wareneingang erfassen* sind Teil der *Bestellung* Geschäftsfähigkeit.

/*
== Business-Object-Analyse <sec-business-objects>
#todo-action([wir übernehmen Gründungsvorhaben + die Objetke von Adrian])

Wie kommen wir auf die 5 Objekten? 
Objekte finden und den Weg dazu danch erklären 
was ist Entity? Und die Phase dazu - reicht 1 BObject dafür? danach die Statuses 

Das Journey Mapping wurde zu einer Business-Object-Analyse erweitert, die dem von @normann2001 eingeführten und von @tercek2015 weiterentwickelten Dematerialisierungs-Framework folgt.
Das Framework bewertet Informationsartefakte entlang vier Dimensionen: _Liquidität_ (wie frei das Objekt über organisatorische Grenzen hinweg fliessen kann), _Unbundling_ (ob es von seinem physischen Träger getrennt werden kann), _Dichte_ (Wertkonzentration pro Informationseinheit) und _Vaporisierungspotenzial_ (Grad, in dem das Objekt vollständig in einen digitalen Service dematerialisiert werden kann).

Über die fünf Journey-Phasen hinweg wurden 18 Business Objects identifiziert, klassifiziert nach ArchiMate-Kerneltyp, Eigentümerschaft und aktuellem Dematerialisierungsgrad.

#figure(
  caption: [Business-Object-Inventar: GastroStart],
  block(width: 100%, breakable: true)[
    #set text(size: 7.5pt)
    #table(
      columns: (0.5cm, 3.3cm, 1.9cm, 1.1cm, 2.4cm, 1.8cm, 1fr),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (center, left, left, center, left, center, left),

      [*\#*], [*Business Object*], [*Kernel Type*], [*Ph.*], [*Owner*], [*Dematerialisierung*], [*Bemerkungen*],

      [1],  [Kantonsanforderungskatalog],   [Document],    [1], [DV Bern],        [95 %],  [Vollständig digitale Regelmatrix; Pflegerisiko bei Gesetzesänderung],
      [2],  [Betriebstyp-Profil],           [Entity],      [1], [DV Bern],        [100 %], [Kerndatenobjekt; Basis für alle nachgelagerten Prozesse],
      [3],  [Bewilligungsübersicht],         [Document],    [1], [DV Bern],        [60 %],  [Vollständigkeit hängt von der kantonalen Datenqualität ab],
      [4],  [eID-Identitätsnachweis],        [Document],    [2], [Bundeskanzlei],  [100 %], [Vollständig digital; Risiko: Nutzende ohne eID],
      [5],  [Gründungsprofil],              [Entity],      [2], [DV Bern],        [100 %], [Persistentes Plattform-Objekt],
      [6],  [Nutzerkonto],                  [Entity],      [2], [DV Bern],        [100 %], [eID-verknüpft; ermöglicht Prozesswiederaufnahme],
      [7],  [Gewerbebewilligung],           [Contract],    [3], [Kanton],         [55 %],  [Kantonsabhängig; ZH digital, VS analog],
      [8],  [Lebensmittelkontroll-Anmeldung],[Document],   [3], [Kanton],         [45 %],  [Teilweise postalisch; hohes Risiko eines Medienbruchs],
      [9],  [Alkoholbewilligung],           [Contract],    [3], [Kanton],         [30 %],  [Verlangt häufig physische Präsenz – höchstes analoges Risiko],
      [10], [Handelsregistereintrag],       [Contract],    [3], [Bund/Kanton],    [85 %],  [Weitgehend digital über Zefix/EHRA],
      [11], [Bewilligungsstatus],           [Event],       [3], [DV Bern],        [65 %],  [Digital im Portal; Quelldaten oft manuell],
      [12], [Kantonales Formular],          [Document],    [3], [Kanton],         [25 %],  [Grösste Dematerialisierungslücke in der Journey],
      [13], [Bonitätsprüfung],             [Data Object], [4], [FINNOFLEET],     [100 %], [Vollständig automatisiert; Risiko: intransparentes Ergebnis],
      [14], [Geschäftskonto (IBAN)],        [Entity],      [4], [FINNOFLEET],     [100 %], [Sofortige digitale Ausstellung über Banking-API],
      [15], [Kreditantrag],                [Contract],    [4], [FINNOFLEET],     [70 %],  [Weitgehend digital; Unterschrift allenfalls physisch],
      [16], [Lieferantenkonto],            [Entity],      [5], [Transgourmet],   [100 %], [Vollständig digital über Katalog-API],
      [17], [Bestellung],                  [Document],    [5], [Transgourmet],   [100 %], [Vollständig digitaler Bestellfluss],
      [18], [Liefervertrag (Neukunde)],    [Contract],    [5], [Transgourmet],   [65 %],  [Rahmenvertrag; Risiko physischer Unterschrift],
    )
  ]
) <tbl-business-objects>

Von den 18 Objekten sind 10 vollständig dematerialisiert (≥ 80 %), 6 sind hybrid (40–79 %) und 2 bleiben weitgehend analog (< 40 %).
Beide analogen Objekte sind in Phase 3 konzentriert und liegen im Eigentum kantonaler Behörden – was bestätigt, dass die regulatorische Fragmentierung die primäre architektonische Einschränkung der Journey ist und nicht ein Versagen im Prozessdesign.

Im ArchiMate-Modell werden Business Objects über _Access_-Beziehungen (lesend oder schreibend) mit Business Processes verknüpft, wodurch ihre Eigentümerschaft und ihre Zustandsübergänge schichtenübergreifend nachvollziehbar werden.
*/

= Das Inside-Out-Mapping: Realisierung der Enterprise Architecture
#frage([Giovanna hat nun eine neue Version des Kapitels entworfen, die für alle passt. Working Assumption: der Unternehmen, das beschrieben werden muss, ist GastroStart, NICHT das eigene! ])

Dieser Kapitel enthält die separaten Ausführungen der jeweiligen Autoren der Gruppenarbeit zum aktuellen Operating Models des eigenen Ursprungsbetriebs und des Joint Ventures GastroStart. Es kann sein, dass die Autoren zu jeweiligen, unterschiedlichen Schlüsse bezüglich der Gestaltung des Operating Models des Joint Ventures kommen. Dies ist so gewollt.  

== Operating-Model-Einordnung nach Ross, Weill und Robertson für Transgourmet

#autor-transgourmet("Beitrag von Jakob Albrecht", inhalt: [Belieferung von Gastronomiebetrieben durch Transgourmet im Rahmen des Joint Ventures GastroStart mit Fokus auf die Integration von Prozessen und Daten],)

Bevor die Customer Journey auf Capabilities und Systeme heruntergebrochen wird, ist eine grundlegende Einordnung nötig: Welches Operating Model liegt Transgourmet zugrunde?
Ross, Weill und Robertson unterscheiden vier Operating Models entlang der beiden Achsen Standardisierung der Geschäftsprozesse und Integration der Daten @ross2006enterprise.
Aus dieser Klassifikation leitet sich ab, wie viel Integration eine Architektur tragen muss und wo Autonomie zulässig bleibt.

#figure(
  caption: [Operating-Model-Matrix nach Ross, Weill und Robertson @ross2006enterprise[Abb. 2-1, S. 30] mit Verortung der Transgourmet-B2B-Belieferung (Unification) und der übergreifenden Customer Journey (Federation). Matrix #sym.copyright 2005 MIT Sloan Center for Information Systems Research, mit Genehmigung verwendet.],
  image("../assets/operating_model_matrix_mit_federation_layer.svg", width: 92%),
) <fig-operating-model-matrix-with-federation-layer>

- *Ebene Transgourmet B2B-Belieferung — Unification*: Innerhalb von Transgourmet sind sowohl Prozesse als auch Daten hoch integriert und zentralisiert. Kunden-, Sortiments-, Preis-, Bestands-, Bestell- und Lieferdaten werden geteilt, die Kernprozesse (Bestellung, Disposition, Lieferung, Fakturierung) sind standardisiert, und ein zentrales System bedient diese Kanäle.

- *Ebene Customer Journey — Federation*: Für die akteursübergreifende Sicht existiert keine Entsprechung im Ross/W/R-Schema; die Klassifikation adressiert Ebenen *innerhalb* einer Organisation (Enterprise, Division, Business Unit), nicht autonome Akteure. Die beteiligten Akteure (Gründer, Behörde, Finanzpartner, Transgourmet) sind autonom und betreiben ihre eigenen Systeme. Eine geteilte Datenhaltung über die Akteursgrenzen hinweg ist nicht vorgesehen. Die Durchgängigkeit der Journey entsteht, wo möglich, über standardisierten Kontrakte: das GastroStart-Portal koordiniert die Gründungsphasen über eCH-konforme Schnittstellen zu Behörden und Finanzpartner. Transgourmet wird über EDIFACT/GS1-Kontrakte für Bestellungen und Lieferantungen angebunden. Die Integration der Daten ist auf die Schnittstellen beschränkt, die Prozesse sind nicht standardisiert, und die Systeme sind autonom.

== ArchiMate-Modell des Ist-Zustands von Transgourmet


Die konsolidierte Sicht auf den Ist-Zustand der Transgourmet-B2B-Belieferung wurde als ArchiMate-Modell über die drei Schichten Business, Application und Technology erstellt @opengroup2019archimate.
Das Modell macht das Unification-Operating-Model aus @fig-operating-model-matrix-with-federation-layer konkret sichtbar.

#figure(
  caption: [ArchiMate-Ist-Zustand der Transgourmet-B2B-Belieferung über Business-, Application- und Technology-Schicht],
  image("../assets/ea_ist_archimate_transgourmet_b2b.svg", width: 78%),
) <fig-archimate-ist>

Die Schichten lesen sich wie folgt:

- *Business Layer*: Der externe B2B-Kunde (Gastronomiebetrieb) interagiert über EDIFACT/GS1 mit der Prozesskette Bestellung (ORDERS, ORDRSP) → Disposition (Tour, Kommissionierung) → Lieferung (DESADV, RECADV) → Fakturierung (INVOIC, APERAK). Die zentralen Geschäftsobjekte sind Kunde, Sortiment, Bestellung, Lieferung und Faktura.
- *Application Layer*: Der B2B-Shop (Web-Portal, Bestellaufnahme) und das EDI-Gateway (EDIFACT-Verarbeitung) bilden die Schnittstellen nach aussen; realisiert werden die Geschäftsfunktionen jedoch durch ein zentrales Dispo-/ERP-System als monolithisches Kernsystem, das Auftragsverwaltung, Stammdaten, Logistik und Faktura in einer Lösung bündelt.
- *Technology Layer*: Das Kernsystem wird von einem Application-Server (VM-Hosting) getragen und auf einem Datenbank-Server (RDBMS, zentrale Daten) gehostet.

Die entscheidende architektonische Beobachtung: Der monolithische Dispo-/ERP-Kern realisiert sämtliche Geschäftsfunktionen ohne Anti-Corruption Layer (ACL) und ohne Schnitt in Self-Contained Systems (SCS) @bass2012.

== OM für DV Bern 
#autor-dvbern("Beitrag von Jan Sohnemann, DVBern", inhalt: [])

DVBern ist ein IT-Dienstleister ca. 200 Mitarbeitern an einem Standort. 
Das Hauptgeschäft ist Individual-Softwareentwicklung und Hauptkunden sind öffentliche Verwaltungen. 
Neben Geschäftsführung, Finanzen, HR, Gebäude- und Material-Managemant sind die Abteilungen zur Erbringung der Kundenleistungen nach Sektoren eingeteilt wie z.B.: 
Care & Education, Gesundheit und Steuern. 
Diese Abteilungen können sich Kunden teilen, z.B. die Stadt Luzern oder den Kanton Bern und es kann auch Schittstellen zwischen den Applikation geben, die verschiedene Abteilungen für verschiedene Kunden bereitstellen. 
Alle Abteilungen sind Kunden der Abteilung IT-Servives und die Prozesse sind hier weitesgehend für alle Abteilungen standardisiert. 
Die IT-Services stellen nicht nur Arbeitsgeräte zur Verfügung, sondern sichern auch den Betrieb von intern oder extern gehosteten Kundenanwendugen. 
Davon und von einigen, wenigen Vorgaben und Best Practices abgesehen haben die Abteilungen weitesgehend Autonomie.

Es gibt also wenig Geschäftsprozess-Standardisierung, aber dort wo es standardisierte Prozesse gibt, sind diese meist sehr stark integriert. 
Ich würde DVBern im Operating Model unter «Koordination» einordnen. 
Für die Customer Journey «Gastro Start» macht das auch Sinn. DVBern spielt hier eine Schlüsselrolle bei der Integration verschiedener Services. 
Ein gewisses Rahmenwerk bei der Erbringung von Software-Dienstleistungen ist unabdingbar, insbesondere bei der Zusammenarbeit mit öffentlichen Verwaltungen, wo  Complience und Verfügbarkeit eine grosse Rolle spielen. 
Andererseits benötigen Inidividuallösungen auch Freiheitsgrade, damit schnell auf Unvohersehbarkeiten reagiert werden kann.

== Operating Model für FINNOFLEET

#autor-finnofleet("Beitrag von Adrian Anghel, FINNOFLEET", inhalt: [
  FINNOFLEET bringt in GastroStart die Finanzierung ein --- einen einzigen,
  spezialisierten Schritt der Customer Journey, der aber über jeden Kanal
  hinweg als eine durchgängige Kundenerfahrung erbracht werden muss.

  Damit stellt sich zuerst die Frage, wo dieser Schritt sein Operating Model
  überhaupt hat: im Softwarehaus, das das Produkt baut, oder im Institut, das
  es betreibt.
])

Betrachtet wird nicht das Softwarehaus FINNOFLEET, sondern das Operating Model, das sein Produkt beim Kunden durchsetzt: die Kreditanbahnung einer Bank mit *ELA Kredit*. Diese Perspektive ist die für GastroStart relevante, denn genau diese Fähigkeit bringt FINNOFLEET als Finanzierungspartner in das Joint Venture ein (siehe @GP_Amira_erhaelt_Finanzierung).

=== Ist-Zustand: Standardisierung der Prozesse und Integration der Daten

*Integration der Daten --- hoch.* ELA Kredit ist um ein zentrales Backend als Single Source of Truth gebaut; die Daten werden konsolidiert und über alle Kanäle hinweg verfügbar gehalten. Dieselben Kunden- und Antragsdaten fliessen von der Beratung in Vorprüfung, Scoring und Entscheiddossier und weiter in die umliegenden Systeme (Kernbankensystem, Auskunfteien, Bewertungsdaten). Ein Antrag entspricht einem gemeinsamen Datenfall über Kanäle und Funktionen hinweg.

*Standardisierung der Geschäftsprozesse --- hoch.* Das Produkt erzwingt einen strukturierten Anbahnungsprozess für jeden Falltyp --- Neugeschäft, Refinanzierung, Mutation und Verlängerung, für Privat- und Firmenkunden --- unter einheitlichen regulatorischen Regeln (Richtlinien der SBVg, Anforderungen der FINMA). Schnittstellen werden einmal angebunden und systemweit genutzt, was redundante Daten und inkonsistente Prozessvarianten vermeidet.

Der Ist-Zustand entlang der Journey ist somit ein standardisierter Omnichannel-Anbahnungsprozess auf einem gemeinsamen Datenkern, der bewusst in die bestehenden Kernsysteme der Bank integriert wird --- und diese nicht ersetzt.

=== Wahl des Operating Models: Unification

#fuehrung([When organizational units are tightly integrated around a standardized set of processes, companies benefit from a *Unification* model. Companies applying this model find little benefit in business unit autonomy. They maximize efficiencies and customer services by presenting integrated data and driving variability out of business processes. @ross2006enterprise[S. 37 f.]])

Der Fall fällt damit unter das Operating Model *Unification*. Die drei übrigen Quadranten wurden geprüft und verworfen:

#figure(
  caption: [Prüfung der vier Operating Models nach Ross, Weill und Robertson @ross2006enterprise für die Kreditanbahnung mit ELA Kredit],
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
        columns: (3.4cm, 1fr),
        gutter: 10pt,
        text(fill: white, weight: "bold", size: 0.95em)[Operating Model],
        text(fill: white, weight: "bold", size: 0.95em)[Beurteilung],
      )
    ]
    #set par(justify: false)
    #table(
      columns: (3.4cm, 1fr),
      inset: (x: 10pt, y: 7pt),
      stroke: (x: none, y: 0.5pt + luma(232)),
      fill: (x, y) => if calc.even(y) { luma(250) } else { white },
      align: (left, left),

      [Diversification],
      [Verworfen. Wenige gemeinsame Kunden, unabhängige Transaktionen, kaum Datenstandards --- das Gegenteil eines Omnichannel-Single-Source-of-Truth.],

      [Replication],
      [Verworfen. Standardisiert, aber mit lokal gehaltenen Daten je isolierter Einheit oder Filiale. ELA Kredit zentralisiert die Daten in einem Backend, die Kanäle sind daher nicht datenisoliert.],

      [Coordination],
      [Verworfen. Würde passen, wenn die Kanäle Kundendaten teilten, aber unterschiedliche Anbahnungsprozesse führten. ELA Kredit führt einen standardisierten Prozess, damit ist Coordination zu locker.],

      [Unification],
      [*Gewählt.* Ein Prozess, ein Datenkern, zentral gesetzte Regeln.],
    )
  ]
) <tbl-OM-quadranten-ela>

Die Begründung ist unmittelbar an die Rolle in der Customer Journey gebunden:

- Die Bank besetzt einen einzigen spezialisierten Schritt --- die Kreditanbahnung ---, muss ihn aber über alle Kanäle hinweg als eine konsistente Kundenerfahrung liefern. Diese geteilte Erfahrung verlangt hohe Integration.
- Jeder Anbahnungsfall folgt unabhängig von Kanal und Produktvariante demselben regulierten Prozess und Datenmodell, was hohe Standardisierung verlangt.
- Hohe Integration und hohe Standardisierung zusammen ergeben den Unification-Quadranten.

_Anmerkung zum Architekturstil:_ ELA Kredit setzt auf eine lose gekoppelte Architektur, in der Komponenten unabhängig arbeiten und dennoch intelligent vernetzt bleiben. Die lose technische Kopplung schwächt die Einordnung nicht ab: Auf der Ebene der Geschäftsprozesse und Daten bleibt es Unification (geteilte Daten, standardisierter Prozess): die lose Kopplung ist lediglich der Implementierungsstil, der das Modell flexibel hält.

#figure(
  caption: [Merkmale des Unification-Modells nach Ross, Weill und Robertson @ross2006enterprise[Abb. 2-1, S. 30] --- übersetzt --- und ihre Ausprägung im Fall der Kreditanbahnung mit ELA Kredit. Merkmale #sym.copyright 2005 MIT Sloan Center for Information Systems Research, mit Genehmigung verwendet.],
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
        columns: (1fr, 1fr),
        gutter: 10pt,
        text(fill: white, weight: "bold", size: 0.95em)[Merkmal (Matrix)],
        text(fill: white, weight: "bold", size: 0.95em)[Ausprägung im Fall],
      )
    ]
    #set par(justify: false)
    #table(
      columns: (1fr, 1fr),
      inset: (x: 10pt, y: 7pt),
      stroke: (x: none, y: 0.5pt + luma(232)),
      fill: (x, y) => if calc.even(y) { luma(250) } else { white },
      align: (left, left),

      [Kunden und Lieferanten können lokal oder global sein],
      [Privat- und Firmenkunden werden über alle Kanäle konsistent bedient],

      [Global integrierte Geschäftsprozesse, häufig gestützt auf Enterprise-Systeme],
      [Ein Anbahnungsprozess, integriert über Filiale, Beraterarbeitsplatz und Online-Portal, auf Unternehmenssoftware],

      [Geschäftseinheiten mit ähnlichen oder überlappenden Tätigkeiten],
      [Alle Kanäle erfüllen dieselbe Anbahnungsfunktion --- überlappend, nicht getrennt],

      [Zentralisierte Führung, häufig mit Funktions-, Prozess- und Geschäftseinheitsmatrizen],
      [Der Prozess wird zentral unter einem Operating Model geführt],

      [Prozessverantwortliche auf oberer Ebene entwerfen standardisierte Prozesse],
      [Ein strukturierter Anbahnungsprozess für alle Falltypen (Neugeschäft, Refinanzierung, Mutation, Verlängerung)],

      [Zentral vorgegebene Datenbanken],
      [Zentrales Backend als Single Source of Truth; Schnittstellen einmal angebunden und systemweit genutzt],

      [IT-Entscheide werden zentral getroffen],
      [Architektur, Schnittstellen (Finnova/Avaloq, CRIF/ZEK, IAZI/Terravis) und Regelwerke (SBVg/FINMA) werden zentral verantwortet],
    )
  ]
) <tbl-OM-unification-merkmale>

=== Enterprise Architecture zur getroffenen Wahl

Die folgende Architektur zeigt ELA Kredit konkret. Die Kanäle gehören der Bank und bringen keine eigene Prozesslogik mit: Sie rufen dieselben APIs auf. Dahinter liegen der standardisierte Anbahnungsprozess und ein zentrales Backend als Single Source of Truth, das in die bestehenden Systeme der Bank integriert ist und diese nicht ersetzt --- alles unter einem einzigen regulatorischen Regelwerk.

#figure(
  image("../assets/EA_ELA_Kredit_Unification.svg", width: 92%),
  caption: [Enterprise Architecture der Kreditanbahnung mit ELA Kredit: Die Kanäle der Bank treffen an einer gemeinsamen API-Grenze auf denselben standardisierten Anbahnungsprozess (Standardisierungsachse) und dasselbe zentrale Backend (Integrationsachse). Die Bestandssysteme sind bidirektional angebunden, nicht ersetzt; die Governance spannt sich über alle Schichten.],
) <fig-EA-ela-kredit>

Von oben nach unten gelesen:

- *Kanalschicht*: Alle Eintrittspunkte rufen dieselbe API-Oberfläche auf, statt je eigene Abläufe zu implementieren --- die Omnichannel-Front der Customer Journey. Genau darin liegt die Standardisierung: Ein Kanal kann gar keine abweichende Prozessvariante bilden, weil er keine eigene Logik besitzt.
- *Prozessschicht*: Ein standardisierter Anbahnungs-Workflow (Beratung → Antrag → Vorprüfung → Entscheidvorbereitung), identisch über Kanäle und Produktvarianten hinweg --- die Standardisierungsachse.
- *Zentrales Backend*: Der Single Source of Truth; jeder Aufruf liest und schreibt denselben Fall in Echtzeit, unabhängig davon, aus welchem Kanal er kommt; Schnittstellen werden einmal angebunden und wiederverwendet --- die Integrationsachse. Dieser geteilte Kern ist es, der das Modell zu Unification macht.
- *Integrationsschicht*: ELA Kredit ersetzt die Kernsysteme nicht, sondern dockt an Finnova/Avaloq, CRIF/ZEK, IAZI/Terravis und Dokumentensysteme an --- die Anbahnung als ein spezialisiertes Modul, verdrahtet in die weitere Banklandschaft.
- *Governance*: Ein regulatorisches Regelwerk (SBVg/FINMA) über den gesamten Prozess --- der Ausdruck hoher Standardisierung auf Führungsebene.

Weil ELA Kredit ausschliesslich die Anbahnung abdeckt, konzentriert sich der architektonische Wert im geteilten Backend und im standardisierten, über APIs konsumierten Prozess. Die Bank erbringt einen einzigen spezialisierten Schritt der Journey --- aber sie erbringt ihn als vereinheitlichten Single-Source-of-Truth-Prozess und nicht als Kanalsilos. Genau das ist das Unification-Operating-Model.

Auf der Ebene des Joint Ventures gilt diese Einordnung nicht: GastroStart verbindet autonome Partner ohne geteilte Prozesse und fällt deshalb unter *Coordination* --- diese Ebene wird im folgenden Abschnitt eingeordnet. Unification gilt innerhalb des Finanzierungsbeitrags, Coordination zwischen den Partnern; die Grenze zwischen den beiden Modellen verläuft genau an der API, über die FINNOFLEET seine Fähigkeit in die Journey einbringt.

== Einordnung von GastroStart und der Akteure des öffentlichen Wesens in das Operating System nach Ross/Weill et al.

#autor-verwaltung("Beitrag von Giovanna Beier, Bundeskanzlei", inhalt: [
  Mit ihrem Versprechen, die Kunden erfolgreich bei der Gründung ihres
  Gastrounternehmens zu unterstützen - von der Einschreibung auf die Plattform
  über die Firmengründung (inkl. Finanzierung) bis zur ersten Lieferung durch
  Transgourmet - übernimmt GastroStart eine sehr komplexe Aufgabe.

  Die "Sorglosigkeit", die GastroStart verspricht, ist Architektureigenschaft
  und Dienstleistung von GastroStart zugleich.
])
=== Einordnung von GastroStart in das Operating System nach Ross / Weill et al.

GastroStart ist aus einem engen Schulterschluss unter drei Partner aus der Privatwirtschaft entstanden: DV Bern, FINNOFLEET und Transgourmet. 
Da GastroStart von der extrem positiven Dynamik und Zusammenarbeit unter den Partner profitiert. 
Die Daten der Kunden sowie die Teilschritte der Customer Journey, die von den Partnern abgedeckt werden, werden zentral im Geschäftsobjekt "Gründungsvorhaben" gespeichert. 
In diesem Sinne ist auf der einen Seite von einer ausgeprägten Datenintegration auszugehen - wobei GastroStart und jeder Partner seine fachspezifischen Prozesse beibehält. Dies erlaubt es auch GastroStart auf jeder neuen Fallkonstellation individuell einzugehen - sei es, weil die Kunden nur einen Teil der Customer Journey von Amira erleben - oder aber Bedürfnisse haben, die sich bei einem bereits laufenden Betrieb herauskristallisiert haben und ganz andere (nicht abgebildete) Bereiche von GastroStart beanspruchen.

Folgt man den Rat der Literatur, so findet man folgende Passage: 
#fuehrung([*Coordination* calls for high levels of integration but little standardization of processes. Business units in a Coordination company share one or more of the following: customers, products, suppliers, and partners. The benefits of integration can include integrated customer service, cross-selling, and transparency across supply chain processes. @ross2006enterprise
])

Gastrostart fällt somit unter dem sog. Operating Model "Coordination". 
Durch die hohe, clevere Datenintegration unter den aktiven Partner erlebt Amira eine "Façade" die weitgehende einheitlich und frei von Medienbrüchen ist, ähnlich wie wenn sie im Kundenbereich eines grossen Anbieters von Fernmeldediensten Unification-Modells aussieht. 
Das hinter dem User Interface jedoch ein verschiedene, ad-hoc-Prozesse laufen könnten, bekommt Amira nur teilweise mit. 

Wo sind diese Brüche?
Die Systeme und "Produkte", resp. Dienstleistungen der öffentlichen Verwaltung - unter anderem um die Eintragung ihrer GmbH ins kantonale Handelsregister und um die Erteilung der Betriebsbewilligung - werden aus Sicht der Customer Journey und von GastroStart als externe Systemen, die Artefakten mit hoheitlicher Wirkung erzeugen, betrachtet. 
Dies ist so, da grundsätzlich nur der Staat für solche Handlungen verantwortlich ist und sein darf. 
Dritte und Private Unternehmen dürfen nur beim Vorhandensein einer Delegationsnorm im Namen einer Behörde handeln. 
Da GastroStart ein privates Unternehmen ist, kann es nicht den Eintrag ins Handelsregister vornehmen oder die Betriebsbewilligung für Amiras GmbH erteilen.

=== Einordnung der Schweizer öffentlichen Verwaltung in das Operating System nach Ross / Weill 

Das öffentliche Wesen in der Schweiz ist föderalistisch organisiert und spielt sich auf drei politischen (und verwaltungstechnischen) Ebenen ab - dies beeinflusst stark die Interaktionen mit den Betroffenen. 

Diese drei Ebenen müssen getrennt betrachtet und eingeordnet werden: 

+ *Bundesebene*: ist bei Diversification einzordnune. Das ist nicht überraschend, sondern strukturell angelegt: das Departementrinzip sowie die Gesetzgebung geben den Departementen und Ämtern eigene Vollzugsautonomie für ihre Kernaufgaben. Ist nichts anderes vorgesehen, ist eine Zusammenarbeit nicht erlaubt. Das ist politisch-rechtlich gewollte Dezentralisierung. Eine "dünne" zentrale Schicht basierend u.A. auf Standarddiensten, Produkte- und Prozessstandards und architektonischen Richtlinien erlaubt eine gewisse Interoperabilität und die Schaffung von Datenökosysteme. 

#figure(
  image("../assets/EABund.png", width: 92%),
  caption: [Grobe Skizze der aktuellen Unternehmensarchitektur der Bundesverwaltung, unterteilt - von oben nach unten - in "Kernaufgabenbereiche", "übergreifenden Aufgaben" und "aufgabenneutralen IKT-Grundleistungen".],
) <fig-EA-Bund>

+ *Kantonale Ebene*: ist ebenfalls bei Diversification einzuordnen - 26-mal wiederholte Diversification. Die Einhaltung eines allfälligen obligatorischen gesetzlichen Minimums sowie die teil freiwillige Übernahme von eCH Standards erlauben eine ansatzweise Interoperabilität mit den anderen Ebenen. 
+ *Gemeindeebene*: Die Gemeinde gehört ebenfalls in die Diversification. Gemeinden differenzieren sich stark von einander - innerhalb desselben Kantons mit eigenen, oft analoge Prozesse. Und nochmals von Kanton zu Kanton kommen der Gemeinden unterschiedliche Zuständigkeiten zu  (Baubewilligung, Lärmschutz, Ortsplanung, punktuelle Bewilligungen). 

=== Abbildung des öffentlichen Wesens im Kontext von GastroStart <sec-Verwaltung-GastroSTart-EARolle>
Das öffentliche Wesen nimmt nur indirekt eine Rolle im Unternehmen GastroStart.
Aus der Perspektive von Amira und ihrer Customer Journey bildet das öffentliche Wesen mit seinen Vorschriften eine Hürde, die überwunden werden muss. Die jeweilige Staatsebene stellt oft eine Sammlung an Regulatorien und Vorgaben dar, welche Amira von ihrem Traum trennt. 

Es ist nicht sinnvoll, das öffentliche Wesen - respektive dessen jeweiligen Systemen in GastroStartc zu integrieren - sondern werden als externe Systeme und bewusste "Absprünge" weg von GastroStart prozedural wie technisch in den betroffenen Customer Journeys implementieren. 

 

== Feedback Jarchow 
+ Digitalisierung 
+ Integration und STandardisierung - je nach Gebiet (Autos, Karten) fortgeschritten 
+ es geht darum, ob man eine ist, soll oder zielarchitektur beschreibt 
+ Bund soll zu unification streben 
+ Widerspruch von Operating Model und Behörden (kein OM)
+ wer daten standardisiert hat die macht
+ Standards sind am Aufkommen

== Einarbeitung Feedback 

Wie modellieren: 

+ Il «partner pubblico» non è un'organizzazione che siede nella JV, è un layer di interoperabilità: interfacce standardizzate (eCH-0258 per lo scambio dati), governate dalla DVS, consumate da GastroStart dall'esterno. La frammentazione (26 Kantone × 2110 Gemeinden) sparisce dietro questo layer nella misura in cui gli standard arrivano — e oggi ci arrivano su base volontaria. In ArchiMate ti servono Application Interfaces/Services esposti dal lato autorità e consumati da GastroStart, con gli standard eCH come Contract/Requirement. I punti d'aggancio concreti li hai già nel tuo §4:, Nutzerkonto (AGOV, il login unico delle autorità), Handelsregistereintrag (Zefix/EHRA).
  
    Betreibungsregisterauszug / Automatizzare la fornitura di allegati - Vertrauensinfrastruktur che fornisce i documenti validi e certificati. 
Modelli GastroStart contro questi Basisdienste.

+ Ricordi il *contrasto imposte-vs-servizi* che avevamo costruito? Ora si chiude con una precisione quasi imbarazzante. Le imposte funzionano grazie a uno strumento vincolante (StHG, Art. 128/46 BV). I servizi alle imprese non ce l'hanno → oggi solo eCH volontario → la frammentazione trapela (il tuo stesso §4 lo mostra: Bewilligungen cantonali al 30–55%, «grösste Dematerialisierungslücke» nei formulari cantonali). E lo strumento vincolante mancante? Lo stanno decidendo adesso. Alla fine del 2025 Bundesrat e KdK hanno adottato il Zielbild della futura collaborazione federale, prendendo una decisione di principio per sviluppare la DVS verso una piattaforma politica con definizione vincolante degli standard. La Rahmenvereinbarung prevedeva che entro il 2026 fossero sottoposte ai Träger le basi decisionali per uno sviluppo della DVS incentrato su una definizione degli standard vincolante per tutti e tre i livelli statali — e l'evaluazione del 2024 aveva mostrato che il potenziale non è ancora sfruttato, in particolare nella promozione dell'interoperabilità e nella costruzione di infrastrutture e servizi di base condivisi @dvs_organisation_2022, @dvs_organisation_2022

+ "was wäre wenn": la sovranità cantonale (Art. 3 BV) e il fatto che gli atti sovrani non si possono delegare a una JV privata sono il terreno che stai analizzando. Falsificarlo nell'Ist rende il modello non mappabile su eCH e DVS — esattamente il timore che esprimi.

+ Lösung: *Zielzustand*
  + «Angenommen, es gäbe ein eServices-Harmonisierungsgesetz analog zum StHG — wie verschiebt sich das Operating Model der öffentlichen Akteure?» 





*incapsulabilità: *

digitalieierung pro capability 


--> eCH-0258:  

hai eCH-0258 nel materiale di progetto. Ma è pensato per attori che stanno dentro il perimetro delle autorità. Un consorzio privato non ci si può agganciare, non perché manchi la tecnologia, ma perché l'accesso all'infrastruttura di scambio è esso stesso condizionato dallo statuto di diritto pubblico.

Lo standard dichiara fuori perimetro sia l'autorizzazione e l'autenticazione, sia il tipo di integrazione, che va concordato tra i partner. Cioè: eCH-0258 normalizza il formato dei messaggi, ma non dice chi può collegarsi.
Esempi: e-doc / passar 

distinguo: prestazioni già offerte e "incapsulatili" come IVA, AVS, --> qui potrei scrivere che in un futuro non troppo lontano, queste prestazioni potranno essere incapsulabili perché disponibili tramite interfaccia (ech-0258) tra gastrostart e l'erogatore della prestazione. dentro a gastrostart, amira riceve una conferma "ufficiale" (non so se ci sono già esempi per un'interfaccia di questo tipo)

nella mia visione (che si baserà su una finzione di un futuro con una base legale adatta e operabile), portali come gastrostart potranno incapsulare servizi come l'annuncio AVS/AI e IVA. risolvo con la finzione.
conferma ufficiale: 
lavorerò sempre e ancora con finzione, sia legale che tecnica (per esempio ci doteremo di una tecnologia che permette di tracciare l'autenticità degli atti che passano attraverso l'interfaccia)
aggiunta alla finzione: l'utente sarà messo in condizione di fare un controllo sull'ufficialità dell'interfaccia - ci sono degli esempi per questo? come risolvere l'aspetto della fiducia dell'utente?

*strategia dvs*
Il BBl 2024 45 (Strategia DVS), cap. 5.2, dice che gli standard aperti devono garantire che le prestazioni amministrative digitali siano in futuro integrabili anche in piattaforme di servizio di operatori privati. È intenzione federale dichiarata. La tua visione non è una finzione a livello di politica: è politica già scritta, senza strumento. E il cap. 5.3 descrive l'infrastruttura di fiducia con Basisregister e Vertrauensregister, utilizzabile da enti pubblici e imprese per emettere e verificare attestati elettronici.

Il *registro di fiducia* è una capability nuova, e cade dritta nella casella in alto a destra della tabella: va unificata e non è incapsulabile. Chi lo tiene deve essere pubblico, e l'esclusione di un operatore è un atto d'autorità. Quindi anche la tua finzione più permissiva — un privato che veicola atti ufficiali — non elimina il sovrano: lo sposta. Non è un dettaglio, è un rafforzamento del tuo argomento. Il coordinamento volontario non può nemmeno produrre il registro che renderebbe credibile il coordinamento volontario.

 *meccanismo*
ti chiedi come l'utente possa controllare l'ufficialità dell'interfaccia. Il modello svizzero risponde invertendo la domanda: l'app mostra chiaramente quale organizzazione sta facendo la richiesta di dati e se questa è classificata come affidabile nel registro ufficiale della Confederazione. Cioè: l'ancora di fiducia non sta nel portale privato, sta in un componente statale che risiede presso l'utente. GastroStart non deve essere creduta. Deve solo essere riconoscibile da qualcosa che l'utente ha già e di cui si fida.


Il *registro di fiducia* è una capability nuova, e cade dritta nella casella in alto a destra della tabella: va unificata e non è incapsulabile. Chi lo tiene deve essere pubblico, e l'esclusione di un operatore è un atto d'autorità. Quindi anche la tua finzione più permissiva — un privato che veicola atti ufficiali — non elimina il sovrano: lo sposta. Non è un dettaglio, è un rafforzamento del tuo argomento. Il coordinamento volontario non può nemmeno produrre il registro che renderebbe credibile il coordinamento volontario.

= Gedanken zum RSM (Goal: User Experience)
== Ablauforganisation 
== Rollen
== Arbeitsplatz
== Kanäle
- Web 
- Mobile first?
== Interaktionskomponenten 
- Human Interfaces (HMI
- Arbeitsplatz berücksichtigen
- Machine to Machine (MMI)
