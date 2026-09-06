// ── Chapter 4 : EA Realization  ───────────────────
#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern, mit-lead
)
#pagebreak()
= Die Realisierung des Resource Independent Model
/*in Anlehnung an Kapitel 3.4.5. vom Spichiger-Skript*/
== Allgemeines

Dieser Teil der Arbeit bildet der Kern der Überlegungen der Gruppe. 
Die Verfolgung der durch die Übungen vorgegebenen Arbeitsschritte haben uns bis zur höchsten Abstraktionsstufe unseres Unternehmens geführt. 
Jeder Entwicklungsschritt bezieht sich auf einem Auftrag (Übung) und folgt der Empfehlung zur Erarbeitung des RIM, die im Skript @Spichiger2026GFbUA, S. 53 ff. beschrieben ist. 
Die Modellierung erfolgt mit Archimate.

#todo-action([nachfolgende Sätze ändern um folgendes zu spigeln: 
1. Geschäftobjete, Zustände und Transaktionen werden unter 4.2. behandelt. 
2. Geschäftsprozesse und - fähigkeiten unter 4.3 ])

Die folgenden Kapitel orientieren sich wie gehabt an den fünf Szenarien der Customer Journey.
Zunächst beschreiben wir die wesentlichen Geschäftsobjekte und ihre möglichen Zustände, die in der jeweiligen Phase die entscheidende Rolle spielen.
Anschliessend erweitern wir das Modell um Geschäftstransaktionen und die Beziehungen der Geschäftsobjekte zu diesen und untereinander.
Weiter werden die Geschäftstransaktion zu Geschäftsprozessen zusammengeführt und schliesslich die wesentlichen Geschäftsfähigkeiten der jeweiligen Prozesse identifiziert und in das Modell integriert.
Im letzten Kapitel der Modellentwicklung beschreiben wir den Übergang vom RIM ins ressourcenspezifische Modell anhand der IDEAL Informationssystemarchitektur.

== Geschäftsobjekte und die Identifikation deren relevanten Verhaltens (statt: Geschäftsobjekte und Geschäftstransaktionen)
=== Vorgehen 

#fuehrung([
*Geschäftsobjekte:* Aus der Geschichte werden die groben Geschäftsobjekte sowie die Beziehungen zwischen den Geschäftsobjekten identifiziert, die in einer dematerialisierten Umsetzung der Geschichte noch Relevanz haben.
Ein Geschäftsobjekt kapselt statische Struktur des RIM. Ein Geschäftsobjekt beschreibt einen zentral wesentlichen Teil des Kontexts einer Unternehmung und abstrahiert vollständig von den Ressourcen der Unternehmung (Dematerialisierung) und dessen Verhalten.

*Zustände:* Zu jedem Geschäftsobjekt werden seine Zustände identifiziert.

*Geschäftstransaktionen:* Entlang der Geschichte werden die Geschäftstransaktionen mit ihren Inputs und Output (Geschäftsobjekte) identifiziert. 
Sowohl bei Input und Output wird darauf geachtet, dass diese inklusive ihre Zustände (bzw. zugehörige Ereignisse) bezeichnet werden. @Spichiger2026GFbUA /*S. 54*/
])


In diesem ersten Teil der Realisierung des ressourcenunabhängigen Modells identifizieren wir die relevanten Geschäftsobjekte und dokumentieren deren Zustände und Geschäftstransaktionen pro Szenario, um die Lesbarkeit zu erhalten.
Die entsprechenden Geschäftsprozesse sind ebenfalls modelliert, auch wenn sie später erklärt werden.
Die Szenarien sind in @sec-szenarien-customer-journey beschrieben und werden einzeln aufbereitet. 

=== Identifizierte Geschäftsobjekte
Um Geschäftsobjekte zu identifizieren hat sich die Gruppe mit der Struktur von Amiras Customer Journey auseinandergesetzt.
Die Customer Journey haben wir in Szenarios aufgeteilt und in jedem Szenario ist ein Arbeitsschritt, der sich von anderen Arbeitsschritten abgrenzen lässt.
Arbeitsschritte resultieren in Ergebnissen oder bauen auf ihnen auf. Das Szenario: "Eine Quereinsteigerin möchte ein Unternehmen gründen.", baut also auf einem Gründungsvorhaben auf und resultiert idealerweise in einem Unternehmen. 
Diese Ergebnisse dieses Vorgehen bilden die Grundlage für mögliche Geschäftsobjekte.
Die folgende Abbildung zeigt ein mögliches Ergebnis aus dieser Vorgehensweise.






 #figure(
  image("../assets/Customer Journey View.svg", width: 60%),
  caption: [Archimate Modell der Customer Journey von Amira und erste Iteration für die Identifikation der Geschäftsobjekte]
) <fig-customer-journey-view>

In den nächsten Abschnitten folgen wir das empfohlene Vorgehen und beschreiben für jedes Szenario das Geschäftsobjekt, seine Zustände sowie die Transaktionen, die diese hervorrufen:

Im ressourcenunabhängigen Modell (RIM) nach Archimate sind die Eigenschaften der Geschäftsobjekte zunächst nicht von Bedeutung. 
Wir beginnen stattdessen mit der Betrachtung der Zustände, die ein Geschäftsobjekt annimmt, und welche Transaktionen einen Zustandswechsel hervorrufen. 
Die nächsten Abschnitte  beschreiben ein entsprechendes RIM für die Szenarien der Customer Journey,



=== Modell der identifizierten Objekte

#frage([wo packen wir dieses Modell hin? ist es hier an der richtigen stelle?])

Folgendes Archimate Modell der Geschäftsobjekte von GastroStart, die von der Gruppe identifiziert wurden. 

#figure(
  image("../assets/GO diagram.svg", width: 80%),
  caption: [Geschäftsobjekt Kundenkonto und dessen Zustände]
) <fig-IdentifizierteGeschaefstobjetke>

#design-entscheid([

Es wurde verzichtet, das Objekt Person zu modellieren. 
Die Behandlung von personenbezogenen Invarianten wie Domizil in der Schweiz oder Besitz des Wirtepatentes als Voraussetzung für die Gründung des Unternehmens und für den Erhalt der Betriebsbewilligung würden den Rahmen dieser Arbeit sprengen.

])

#frage([können wir diesen Absatz weglassen?])
Die Szenarios lassen sich Geschäftstransaktionen darstellen. Geschäftstransaktionen werden durch Zustände von Geschäftsobjekten ausgelöst und sie verändern die Zustände der gleichen oder anderer Geschäftsobjekte.
In der Modellierung verwenden wir zur Darstellung der Beziehnung "löst aus" immer die "Auslöser-Beziehung", die vom Zustand zur Geschäftstransaktion zeigt, beziehungsweise von der Geschäftstransaktion zum Zustand, wenn dieser das Resultat der Transaktion ist.
Für die Darstellung der Zustände verwenden wir das Symbol *Business Event*.
In der Modellierung verwenden wir für die Zugriffsbeziehung von Geschäftsobjekt nach Zustand immer die "lesende" Variante. Dabei zeigt der Pfeil vom Geschäftsobjekt zum Zusand.

=== Amira orientiert sich <head-phase1-orientierung-1>

#autor-dvbern("Beitrag von Jan Sohnemann, DV Bern", inhalt: [])

In @head-scenarios-orientation haben wir einen Einstieg in die erste Phase der Customer Journey beschrieben. Hier wollen wir den Ablauf der Phase nun vollständig beschreiben.

Was bringt potenzielle Kunden auf eine Plattform wie GastroStart? 
Am Anfang steht sicherlich der Wunsch, einen Gastronomiebetrieb zu gründen.
Zu diesem Wunsch gehören viele Eigenschaften, zum Beispiel die Art des Betriebs: 
Handelt es sich um ein Cateringunternehmen, um ein Café oder um eine Bar, in der auch alkoholische Getränke serviert werden?
Die GründerInnen haben dabei vielleicht zunächst nur ihre Betriebszeiten und ihr Wunschklientel vor Augen.
Allerdings hat diese Entscheidung auch regulatorische Auswirkungen, die sich an verschiedenen Standorten unterschiedlich auswirken können.
Von entscheidender Bedeutung ist also auch, wo der Betrieb stattfindet.
Alle Eigenschaften, die mit der Betriebsgründung zusammenhängen, fassen wir im ressourcenunabhängigen Modell im Geschäftsobjekt *Gründungsvorhaben* zusammen.
Das Gründungsvorhaben wird in der ersten Phase, Orientierung, entscheidend geprägt und spielt in den folgenden Phasen die zentrale Rolle.

Der Auslöser der Customer Journey ist das Gründungsvorhaben. 
Indem die GründerInnen die Plattform GastroStart betreten, ist ihr Gründungsvorhaben aus Sicht des Systems *initiiert*. 
Nachdem die GründerInnen sich in einer Einführung mit der Plattform vertraut gemacht haben - das kann Text, ein Einführungsvideo oder ein Chat-Bot sein; 
wir lassen das an dieser stelle offen - ist ihre erste Aktion, den Standort für ihr Gründungsvorhaben zu wählen. 
Diese Aktion wird durch die Geschäftstransaktion *Standort festlegen* realisiert.
Im Anschluss wechselt das Gründungsvorhaben in den Zustand *lokalisiert*.
Ausserdem wird durch das Festlegen des Standortes auf Basis einer digitalen Regelmatrix das Geschäftsobjekt *Kantonsanforderungskatalog* definiert.
Dieser Katalog beschreibt alle, für die Realisierung des Gründungsvorhabens, zu erfüllenden Kriterien, den gewählten Standort betreffend.
Diese Kriterien können z.B. erforderliche Bewilligungen, einzuhaltende Auflagen oder nachzuweistende Kenntnisse und Fähigkeiten sein und sie entstammen dem Geschäftsobjekt *digitale Regelmatrix*. 
Man kann sich dieses Objekt wie eine Tabelle vorstellen: Jede Spalte repräsentiert einen Standort (Kanton) und jede Zeile repräsentiert ein zu erfüllendes Kriterium.
Eine Zelle mit dem Wert "1" oder "true", bzw. "wahr" bedeutet, dass das durch die Zelle, mit dem Standort verknüpfte Kriterium, bei einem Gründungsvorhaben relevant ist.
Mit dem erfolgreichen Abschliessen der Geschäftstransaktion *Anforderungen ermitteln* wechselt das Gründungsvorhaben in den Zustand *orientiert*.
Zusätzlich wird das Geschäftsobjekt *Bewilligungsübersicht* erstellt, das Teil einer Komposition mit dem Gründungsvorhaben ist. 
Diese Übersicht enthält alle, Kriterien, die für eine Betriebsgenehmigung zu erfüllen sind.
Die GründerInnen haben damit alle Informationen, die sie brauchen, um das Bewilligungsverfahren erfolgreich zu durchlaufen.

#figure(
  image("../assets/jan/Zustandsübergänge des Gründungsvorhabens in Phase 1 - Orientierung v2.0.svg", width: 100%),
  caption: [Zustandsübergänge des Gründungsvorhabens im Szenario "Orientierung"]
) <fig-GTZ-orientierung>

Die hier beschriebene Variante liest sich als Happy Path — also die erfolgreiche Erstellung einer Bewilligungsübersicht —, auch wenn der hier verwendete Zielzustand *orientiert* Raum für Variationen lässt. 
Sicherlich ist nicht jedes Gründungsvorhaben realisierbar, und der hier beschriebene Prozess kann durchaus komplexer werden. 
Dass das Gründungsvorhaben nicht realisierbar ist, ist allerdings auch eine Art Orientierung.
Wie im zweiten Absatz dieses Abschnitts angemerkt, spielt das Gründungsvorhaben in allen Phasen der Customer Journey eine entscheiden Rolle.
Die folgende Tabelle fasst die wesentlichen Kriterien für dieses wichtige Geschäftsobjekt zusammen.
Für ein besseres Verständnis wurden hier auch einige Attribute (im Text auch als "Eigenschaften" bezeichnet) angegeben.
Die hier aufgezählten Zustände sind vollständig für alle Phasen der Customer Journey und auch wenn deren Einfürung noch offen ist, tragen sie an dieser Stelle aus unserer Sicht zum Verständnis bei.

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
      Das Gründungsvorhaben ist ein Objekt, das alle für das Vorhaben relevanten Eigenschaften verwaltet. 
      Dieses Objekt hat in unterschiedlichen Phasen der Customer Journey unterschiedliche Zustände und entsprechend kommen in späteren Phasen weitere Eigenschaften hinzu.
      ],


      [Attribute],
      [Beispiele: Standort, Angebot, Inhaber, Öffnungszeiten],

      [Zustände],
      [initiiert, orientiert, registriert, bewilligt, finanziert, realisiert, abgebrochen],

      [Beziehungen],
      [Bewilligungsübersicht],
    )
  ]
) <tbl-GO-Gründungsvorhaben>

Und schliessich geben wir in der nächsten Tabelle einen Überblick über die hier erwähnten Geschäftstransaktion. Bei der Auflistung der Zustandsübergänge beschränken wir uns auf die Zustände des Gründungsvorhabens.

#figure(
  caption: [Geschäftstransaktionen: Prozess «sich orientieren],
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

      [Standort festlegen],
      [Die GründerIn legt den Standort ihres Gründungsvorhabens fest. Im Rahmen dieser Arbeit sind diese Standorte die 26 Schweizer Kantone.],
      [initiiert → lokalisiert],

      [Anforderungen ermitteln],
      [Aus dem Kantonsanforderungskatalog, der durch die Standortfestlegung bestimmt wird, werden die, für das jeweilige Gründungsvorhaben wesentlichen Kriterien ermittelt.],
      [lokalisiert → orientiert]
    )
  ]
) <tbl-GT-sich-registrieren>

=== Amirta registriert sich <head-phase2-registrierung>

#autor-dvbern("Beitrag von Jan Sohnemann, DV Bern", inhalt: [])


Der Gründungsprozess lässt sich höchstwahrscheinlich nicht in einer Sitzung abschliessen. 
Nachdem die GründerInnen mit dem Abschluss der ersten Phase eine Übersicht zu ihren Rechten, Pflichten und Möglichkeiten haben, werden sie in den meisten Fällen Gesuche stellen müssen.
Das heisst, sie werden Formulare ausfüllen und als Anträge einreichen müssen. 
Diese Anträge können eine Bearbeitungsdauer haben, die sich über Tage oder gar Wochen erstreckt. 
Manche GründerInnen werden wahrscheinlich auch Kenntnisse nachweisen und sich diese zunächst erarbeiten müssen. 
Damit GründerInnen den Prozess auf GastroStart nicht bei jeder Sitzung von vorn beginnen müssen, macht es Sinn, ihr Gründungsvorhaben und dessen aktuellen Stand mit einem Konto zu verknüpfen. 
Über ihr Konto können sich alle GastroStart-Benutzenden authentifizieren und Aktualisierungen am Gründungsprozess vornehmen oder einsehen.

Wir betrachten im folgenden Modell im Wesentlichen das Geschäftsobjekt Kundenkonto, das durch drei Geschäftstransaktionen geprägt wird:
- Konto anlegen
- Konto löschen
- Konto aktualisieren

Die drei Transaktionen sind unabhängig voneinander, mit der Ausnahme, dass Löschen und Aktualisieren ein bestehendes Konto voraussetzen. 
Das Kundenkonto dient einerseits der Authentifizierung, der Autorisierung, der Personalisierung und der Verknüpfung mit dem Gründungsvorhaben. 
Diese Verknüpfung ist eine Aggregation. 
Wie im ersten Absatz dieses Abschnitts erklärt, dient das Kundenkonto in erster Linie dem Speichern des Gründungsvorhabens.
Wird das Kundenkonto gelöscht, lässt sich das Gründungsvorhaben niemandem mehr zuordnen und kann ebendfalls entfernt werden.
Wir kommen weiter unten im Text noch mal auf das Löschen des Kundenkontos zu sprechen.
Das Kundenkonto wird in den Geschäftstransaktionen *Konto anlegen* und *Konto aktualisieren* definiert. 
Ein Beispiel für eine Aktualisierung könnte die Änderung der Postanschrift oder Telefonnummer des Gründers oder der Gründerin sein.

Die folgende Tabelle definiert das Geschäftsobjekt Kundenkonto und zeigt expemparische Attribute, sowie seine Zustände und Beziehungen.
Die Tabelle entspricht dem Aufbau der Tabelle: @tbl-GO-Gründungsvorhaben aus Abschnitt @head-phase1-orientierung-1.

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
Das Löschen eines Kundenkontos versetzt dieses also im Rahmen dieses Modells zunächst nur in den Zustand *inaktiv*, was bedeutet, dass bereits gestartete Transaktionen abgebrochen werden können - wenn möglich, und dass keine neuen Transaktionen gestartet werden können.

Dass die Geschäftstransaktion *Konto aktualisieren* das Kundenkonto in einen neuen Zustand überführt (*aktualisiert*), kann in vielen Fällen sinnvoll sein: 
Laufende Prozesse oder Transaktionen müssen unter Umständen über diese Zustandsänderung informiert werden. 
Nehmen wir zum Beispiel wieder die Änderung der Postanschrift: Wahrscheinlich werden sich nicht alle Informationsaustauschprozesse digitalisieren lassen, und eine zuständige Behörde sollte in diesen Fällen für den Schriftverkehr über die Änderung der Postanschrift informiert werden.

Die folgende @fig-gtz-registrierung stellt den Prozess *Kundenkonto verwalten* im Archimate Modell dar.
Aber auch in einem voll digitalisierten System ist dieser Zustand sinnvoll, z.B. wenn dieses System einer Event-orientierten Architektur folgt.
Wann dieser Zustand (*aktualisiert*) endet, darüber sprechen wir in diesem Abschnitt nicht.
Wir weisen hier lediglich darauf hin, dass Abhängigkeiten zu diesem Zustand systemabhängig gegebenenfalls präziser definiert werden muss.

Die ausschliessliche Verwaltung des Kundenkontos erfüllt noch keinen Zweck. 
Diesen Zweck haben wir im ersten Absatz diesen Abschnitts beschrieben: Authenfizierung.
Für die Authentifizierung haben wir dem Modell in @fig-gtz-registrierung noch zwei weitere Geschäftstransaktionen hinzugefügt:
*Kunde anmelden* und *Kunde abmelden*.
Beide Transaktionen versetzen das Kundenkonto in einen entsprechenden Zustand.
Diese Zustände sind relevant, weil sie das Verhalten der sie auslösenden Geschäftstransaktion beeinflussen.
So wird die Transaktion *Kunde anmelden* nicht zur Eingabe von Benutzername und Passwort führen, wenn der Kunde bereits angemeldet ist.
Idealerweise ist diese Transaktion für ein angemeldetes Kundenkonto gar nicht erreichbar.
Dafür muss das System den Zustand des Kundenkontos allerdings kennen.

Die folgende @fig-gtz-registrierung zeigt das Geschäftsobjekt *Kundenkonto* und seine Beziehungen im RMI nach Archimate.

#figure(
  image("../assets/jan/Zustandsübergänge des Kundenkontos in Phase 2 - Sich registrieren.svg", width: 100%),
  caption: [Zustandsübergänge des Kundenkontos im Szenario "Sich registrieren"]
) <fig-gtz-registrierung>

Die folgende Tabelle fasst die hier erwähnten Geschäftstransaktion noch einmal zusammen.

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
      [Die GründerIn legt ein Kundenkonto an, mit dem sie auf der Plattform identifiziert und autorisiert werden kann. Das Kundenkonto wird mit ihrem Gründungsvorhaben verknüpft.],
      [– → registriert],

      [Konto aktualisieren],
      [Die GründerIn aktualisiert ihre persönlichen oder Zugangsdaten (z. B. Postanschrift, E-Mailadresse, Passwort).],
      [registriert → aktualisiert],

      [Konto löschen],
      [Das Konto wird deaktiviert. Bereits gestartete Transaktionen können abgebrochen werden, wenn möglich. Neue Transaktionen können nicht mehr gestartet werden.],
      [
        registriert → inaktiv,
        aktualisiert → inaktiv
      ],
      [Kunde anmelden],
      [Der Benutzer, hier der/die GründerIn als Kunde, identifiziert sich gegenüber der Plattform (durch Eingabe von Benutzername und Passwort z.B.) und wird vom System autorisiert.],
      [
        abgemeldet → angemeldet
      ],
      [Kunde abmelden],
      [Der Benutzer, hier der/die GründerIn als Kunde, beendet seine Sitzung auf der Plattform. Zugriffe auf das Kundenkonto sind in dieser Benutzerrolle ohne erneute Anmeldung nicht mehr möglich.],
      [
        angemeldet → abgemeldet
      ],
    )
  ]
) <tbl-GT-sich-registrieren>

#design-entscheid([
  Wir haben uns die Frage gestellt, ob wir das Objekt "Kunde" auch zusätzlich modellieren sollen. 
  Wir sind zum Schluss gekommen, dass das Geschäftsobjekt Kundenkonto alle Informationen zum Kunden enthält, weshalb letzteres nicht separat / zusätzlich geführt werden muss.
])


=== Geschäftsobjekt Unternehmen, seine Zustände und sein Verhalten <sec-go-gt-unternehmen-gründen>
Im @sec-cj-unternehmen-gründen wurde das Szenario der Unternehmensgründung vorgestellt. 
Nun wird dieses Szenario anhand des ihm zugrundeliegende Geschäftsobjekt näher beschrieben. 

Viele Unternehmer, die in der Gastronomie starten möchten, wollen eine Gesellschaft mit beschränkter Haftung (GmbH) oder eine Aktiengesellschaft (AG) gründen, um sich und ihre Familien finanziell vor einem möglichen Misserfolg ihres Unternehmens zu schützen. 
GastroStart weist die Besucher während des Orientierungsprozesses auf die Möglichkeit hin, eine juristische Person als Trägerschaft für das Gastrounternehmen zu schaffen. /*Eine GmbH eignet sich besonders für kleinere und mittlere Unternehmen. Sie ist einfacher und günstiger zu gründen und deshalb für viele Familienbetriebe oder Restaurants eine gute Wahl.*/

Wie beim Ausfüllen der Steuererklärung bietet GastroStart eine Anleitung zur Vorbereitung der notwendigen Dokumentation, sodass die Notariatskosten möglichst tief gehalten werden können. Die Angaben, um den User durch den Ablauf zu führen sind in der Bewilligungsübersicht gespeichert (se. @fig-GTZ-orientierung).
/*Dazu gehören Angaben wie der gewünschte Firmennamen, den Sitz und Adresse der Firma, persönliche Informationen zu den Anteilhabenden, die Einzahlung des Gründungskapitals, die Formulierung von Statuten und Lieferung von Identifikationsdokumenten. */


#frage([\@ Cheffen: stimmt die folgende Aussage?])
_Alles, was der Benutzer Schritt für Schritt vorbereitet wird entsprechend im Gründungsvorhaben festgehalten - respektive kann dort hochgeladen und dokumentiert werden. _
So stehen alle Informationen in GastroStart zur Verfügung und können jederzeit inhaltlich und formell validiert werden. 
Wenn die Checkliste für die Gründung des *Unternehmens* erfolgreich durchgearbeitet worden ist, kann der Benutzer ein Termin beim Notar abmachen und dort die nötigen offiziellen Schritte vornehmen: die öffentliche Beurkundung durch den Notar und der Antrag um Eintrag ins kantonale Handelsregister. 
Diese Schritte sind notwendig, damit das Unternehmen überhaupt rechtlich existiert und als solches von den Behörden und Wirtschaftspartner anerkannt werden kann, beispielsweise um eine Betriebsbewilligung und eine Finanzierung zu erhalten. 

Die folgende @fig-GTZ-Amira-gründet stellt die Zusammenhänge der Geschäftsobjekte, Zustände und Transaktionen im ressourcenunabhängigen Modell nach Archimate dar. 


 #figure(
  image("../assets/GTZ Amira gründet ihr Unternehmen.svg", width: 100%),
  caption: [Geschäftstransaktionen und Zustände - Szenario Unternehmen Gründen]
) <fig-GTZ-Amira-gründet>

Nachfolgend wird auf die einzelnen Elemente der Grafik eingegangen, wobei die Beschreibung sich auf das Happy Path konzentriert. Die Möglichkeiten des Abbruches der Firmengründung durch die GründerInnen oder dass die kantonale Behörde den Eintrag ins Handelsregister nicht vornimmt, werden nicht näher beschrieben.  

==== Geschäftsobjekt und Zustände 
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


==== Geschäftstransaktionen
Das Geschäftsobjekt Unternehmen durchläuft mehrere Transaktionen: 
- In einer ersten Phase ist der Benutzer in Führung: er _bereitet_  mit der Hilfe von Informationen und Fachfunktionen auf GastroStart die _Unterlagen_ für die Gründung der juristischen Person  _vor_. Nach der öffentlichen Beurkundung kann den _Eintrag im Handelsregister beantragt_ werden. 
- Danach ist der Ball bei den Behörden: das kantonale Handelsregisteramt _prüft den Antrag_ auf Vollständigkeit, _lehnt es ab_ oder _nimmt es an_ und _trägt die juristische Person im Handelsregister ein_. 

Die folgende @tbl-GT-Unternehmen-gründen fasst diese Punkte zusammen:

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

      [Gründungs-dokumentation vorbereiten], [Der Benutzer erstellt die für die Gründung notwendigen Dokumente, sammelt die notwendigen Beilagen  und bringt diese physisch beim Notar vorbei und beauftragt diesen mit der Gründung der Firma. Der Benutzer zahlt das Gründungskapital ein.], [neu → beurkundet],
      [Eintrag im Handelsregister beantragen], [Der Benutzer meldet seine Firma über den Notar beim Handelsregisteramt.], [beurkundet → eingereicht],
      [Prüfung durch Handelsregister (abwarten)], [ Das Handelsregisteramt prüft den Antrag prüft den Antrag formell und entscheidet über das weitere Vorgehen.
       ], [eingereicht → angenommen / abgelehnt / unvollständig],
      [Im Handelsregister eintragen], [Das Handelregisteramt teilt mit, dass der Eintrag im Register erfolgt ist], [angenommen → im Handelsregister eingetragen],
    )
  ]
) <tbl-GT-Unternehmen-gründen>


=== Geschäftsobjekt Bewilligung, seine Zustände und sein Verhalten
verweis: @fig-GTZ-orientierung

Nach der Gründung der juristischen Person, zum Beispiel eine GmbH, kann der Benutzer den nächsten Hürdenlauf vornehmen: So wie mit der Gründung des Unternehmens bereits erfolgt, unterstützt GastroStart seine Kunden dabei, alle Unterlagen, Bestätigungen und Nachweise vorzubereiten oder einzuholen, die für die Erteilung der Betriebsbewilligung durch die zuständige Behörde am gewählten Standort erforderlich sind. 

GastroStart gibt  über jedes Lieferobjekt Auskunft, zeigt auf, wo welcher Nachweis einholt werden kann.
Dank GastroStart können die Benutzer der Sinn hinter jeder behördlichen Anforderung nachvollziehen, und die motiviert sie bei der zeitaufwändigen Zusammenstellung. Denn die Anforderungen an die Erteilung der Betriebsbewilligung dienen dem Schutz der Gäste, denn die Vorschriften decken Bereiche ab wie Hygiene und Lebensmittelsicherheit, Bau- und Brandschutz und nicht zuletzt die persönliche Eignung des Antragsstellers für die Führung des Caterings. 

Bemerkung: Eigentlich ist nicht der Benutzer Empfänger der Betriebsbewilligung für das Catering, sondern diese wird der Firma  ausgestellt.

Die folgende Abbildung stellt die Zusammenhänge der Geschäftsobjekte, Zustände und Transaktionen im ressourcenunabhängigen Modell nach Archimate dar. 

 #figure(
  image("../assets/GTZ Amira erhält die Bewilligung.svg", width: 100%),
  caption: [Geschäftstransaktionen und Zustände - Szenario "Bewilligung erhalten"]
) <fig-GTZ-Amira-bewilligung>

Nachfolgend wird auf die einzelnen Elemente der Grafik erklärt:

==== Geschäftsobjekt und Zustände
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


#design-entscheid([Wir haben uns entschieden, die Frage um das Schicksal des Objekts "Bewilligung" im Fall der Löschung des Benutzerprofils von Amira offenzulassen.])
 
 
 ==== Geschäftstransaktionen
Der Benutzer beantragt im Namen des Unternehmens die Bewilligung für den Catering-Betrieb.
Das Geschäftsobjekt Bewilligung durchläuft mehrere Transaktionen: 
- In einer ersten Phase ist der Benutzer in Führung: er _bereitet_  mit der Hilfe der Informationen auf GastroStart die _Unterlagen_ für den Bewilligungsantrag _vor_. Wenn sie alle Unterlagen gesammelt hat, _reicht_ er den _Bewilligungsantrag_ bei der zuständigen Behörde _ein_. 
- Danach ist der Ball bei den Behörden: die Behörde _prüft den Antrag_ auf Vollständigkeit, _lehnt es ab_ oder _erteilt_ der Food Affair GmbH die Betriebsbewilligung. 

Die folgende @tbl-GT-Bewilligung fasst diese Punkte zusammen:


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
      [Der Antragssteller erfasst die erforderlichen Angaben und Unterlagen für den Bewilligungsantrag.],
      [neu → in Vorbereitung],

      [Bewilligungsantrag einreichen],
      [Der vorbereitete Antrag wird bei der zuständigen Behörde eingereicht. Ab hier ist kein eigenständiger Rückzug mehr möglich.],
      [in Vorbereitung → eingereicht],

      [Bewilligungsantrag vervollständigen],
      [Der Antragssteller reicht die von der Behörde nachgeforderten Unterlagen nach, damit die Prüfung fortgesetzt werden kann.],
      [unvollständig → in Vorbereitung],

      [Antrag prüfen],
      [Die Behörde prüft den Antrag formell und inhaltlich und entscheidet über das weitere Vorgehen.],
      [eingereicht → erteilt / abgelehnt / unvollständig],

      [Verfügung mitteilen],
      [Die Behörde teilt dem Antragssteller das Ergebnis der Prüfung als Verfügung mit.],
      [erteilt / abgelehnt],
    )
  ]
) <tbl-GT-Bewilligung>


/*Amira erhält eine Finanzierung*/

=== Amira erhält eine Finanzierung

#todo-action([entschuldige adi, aber ich musste ein Kapitel auflösten und hierhin kopieren. ich habe ein kommentar im Quelltext hinterlassen von wo bis wo ich übernommen habe. ])

Nachdem Amira die Betriebsbewilligung erhalten hat, benötigt sie Kapital für die Erstanschaffungen. In dieser Phase übernimmt FINNOFLEET: Amira stellt über GastroStart ein Finanzierungsgesuch, das anhand ihrer Angaben und einer Bonitätsprüfung beurteilt wird. Das Geschäftsobjekt #emph[Finanzierung] durchläuft dabei vier Geschäftstransaktionen. Die letzte davon überschreitet die Objektgrenze: Sie schliesst den Finanzierungsfall ab und versetzt das #emph[Gründungsvorhaben] in den Zustand #emph[finanziert].

/*hier beginnt der kopierte Teil*/
Das Geschäftsobjekt *Finanzierung* bündelt sämtliche Informationen rund um Amiras Finanzierungsgesuch --- von der Anfrage über die Bonitätsprüfung durch FINNOFLEET bis zum Kreditentscheid. Es ist das informationstragende Artefakt, das den Finanzierungsfall durch seinen Lebenszyklus führt und die Zustandsübergänge dokumentiert.
/*
#figure(
image("../assets/GOFinanzierung.svg", width: 50%),
caption: [Geschäftsobjekt Finanzierung und dessen Zustände]
) <fig-GOFinanzierung>
*/

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
/*hier endet der kopierte Teil*/

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

#todo-action([Jakob: bitte vervollständigen - bspw. so wie Adi mit der Registrierung])

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


== Abstraktion: Geschäftsprozesse und Geschäftsfähigkeiten

Auf den folgenden Seiten wollen die die Modelle aus den letzten Abschnitten noch einmal aufgreifen und um Geschäftsfähigkeiten erweitern. 
Damit vervollständigen wir unser RIM und bilden die Grundlage für den Einstieg ins ressourcenspezifische Modell (RSM). 
Die Identifikation der Geschäftsfähigkeiten spielt dabei die wesentliche Rolle, denn sie befähigen uns unsere Dienstleistung - oder allgemeiner: Die vorgenommene Wertschöpfung zu erbringen.
Neben den Geschäftsfähigkeiten werden die Leser in den folgenden Modellen auch die, sich aus den Geschäftstransaktionen ergebenen Geschäftsprozesse wiederfinden.


#fuehrung([
Geschäftstransaktionen, die inhaltlich zusammenhängen, werden zu *Geschäftsprozessen* aggregiert.
Auf der Basis der In- und Outputs der Geschäftstransaktionen werden für jeden Geschäftsprozess seine *Abhängigkeiten zu Geschäftsobjekten* identifiziert.
@Spichiger2026GFbUA
])

=== Geschäftsprozesse und Geschäftsfähigkeiten für die Orientierung des Gründungsvorhabens

#autor-dvbern("Beitrag von Jan Sohnemann, DV Bern", inhalt: [])

Greifen wir noch einmal das Modell in @fig-GTZ-orientierung aus @head-phase1-orientierung-1 auf. Bei der Orientierung sollte das Gründungsvorhaben definiert und die zur Realisierung notwendigen Schritte identifiziert werden. 
Realisierung heisst im Rahmen der Orientierung "Bewilligung", also die, durch die zuständigen Behörden erteilte Erlaubnis, den Betrieb aufnehmen zu dürfen.
Eine Bewilligung ist noch kein Garant für ein erfolgreiches Unternehmen.
Diesem Aspekt können wir uns im Rahmen dieser Arbeit aber nicht vollumfänglich widmen.
Die zur Bewilligung notwendigen Schritte - wir bezeichnen sie im folgenden als "Bewilligungskriterien" - ergeben sich aus dem Wissen heraus, welche das sind.
Dieses Wissen muss erarbeitet und gepflegt werden. Das erfordert Ressourcen und resultiert in einer Fähigkeit, nämlich *Regulatorisches Wissen*.
Dieses Wissen ist in den Geschäftsobjekten *Digitale Regelmatrix* und *Kantonsanforderungskatalog* abgelegt.
Da nicht alle Bewilligungskriterien für jedes Gründungsvorhaben relevant sind, ist es für die GründerInnen vorteilhaft, ihren konkreten Bedarf zu kennen.
Diesen Bedarf aus allen möglichen Bewilligungskriterien ermitteln zu können resultiert in einer weiteren Geschäftsfähigkeit, nämlich *Bewilligungsbedarf*.
Und schliesslich muss dieser Bedarf so aufbereitet werden, dass die GründerInnen ihn problemlos erfüllen können.
Der ganze Prozess resultiert also in der Geschäftsfähigkeit *Gründungsorientierung*.
Das kling zunächst abstakt und man könnte argumentieren, dass die zuvor genannten Geschäftsfähigkeiten *Regulatorisches Wissen* und *Bewilligungsbedarf* in dieser Fähigkeit vereint werden können.
Wir würden argumentieren, dass das Bereitstellen dieser Orientierung, als das für den Kunden (Gründer/in) sichtbare Ergebnis, von besonderer Bedeutung ist und besonderer Aufmerksamkeit bedarf.
Man könnte den Kunden an dieser Stelle entwerder die - wie in @head-phase1-orientierung-1 beschrieben - ausgefüllte Regelmatrix überlassen.
Unser Fokus wäre allerdings, diese Matix in eine Form zu übersetzten, die ein geringes Risko der Überforderung hat, die beherrschbar und ermutigend erscheint.
Wir wollen schliesslich möglichst viele Kunden durch alle Phasen der Customer Jouney auf unserer Plattform begleiten.
Das zu realisieren, verbirgt sich also hinter der Geschäftsfähigkeit *Gründungsorientierung*.

In @fig-bp-and-bc-phase1 sind neben der Einführung der Geschäftsfähigkeiten auch die beiden Geschäftstransaktion *Standort festlegen* und *Anforderungen ermitteln* in einem Geschäftsprozess aggregiert.
Diesen Prozess haben wir naheliegenderweise *Gründungsvorhaben orientieren* genannt. 

#figure(
  image("../assets/jan/Geschäftsfähigkeiten in Phase 1 - Orientierung.svg", width: 100%),
  caption: [Geschäftsfähigkeiten in Phase 1: Orientierung"]
) <fig-bp-and-bc-phase1>

=== Geschäftsprozesse und Geschäftsfähigkeiten für die Benutzer-Registrierung bei GastroStart

#autor-dvbern("Beitrag von Jan Sohnemann, DV Bern", inhalt: [])

In @head-phase2-registrierung haben wir den Zweck der Einführung eines Kundenkontos beschrieben und in @fig-gtz-registrierung die Zustandsübergänge dieses Geschäftsobjektes erörtert. 
Wir haben ausserdem die drei Geschäftstransaktionen *Konto anlegen*, *Konto aktualisieren* und *Konto löschen* identifiziert, welche Einfluss auf das Kundenkonto nehmen.
Hier wollen wir nun die Geschäftsfähigkeiten identifizieren, die sich aus den Erklärungen in @head-phase2-registrierung ergeben.
Zunächst aggregrieren wir die drei oben genannten Geschäftstransaktionen in einem Geschäftsprozess: *Kundenkonto verwalten*.
Dieser Prozess erfordert eine langfristige Speicherung sensibler Daten, wie zum Beispiel Name und Adresse und Zugangsdaten der Benutzer unserer Plattform.
Diese Daten sind besonders schützenswert und erfordern einen entsprechenden Umgang. 
Und dieser Umgang erfordert besondere Fähigkeiten.
Da wir uns hier noch im RIM befinden, möchten wir nicht zu sehr in Detail gehen, aber zwei Beispiele seinen hier genannt: 
- Verschlüsselung sensibler Daten bei der Übertragung.
- Schützen sensibler Daten vor unberechtigtem Zugriff.
Schützenswerte, beziehungsweise sensible Daten fassen wir unter dem Begriff "Kundendaten" zusammen.
Und die für den Umgang mit diesen notwendige Geschäftsfähigkeit nennen wir *Kundendaten*.

Das letzte Beispiel, das Schützen der Daten, führt uns zu einer weiteren Geschäftsfähigkeit.
Wenn wir unberechtige Zugriffe verhindern wollen, wie setzen wir das um?
Dafür gibt verschiedene Möglichkeiten und diese zu kennen und gegeneinander abzuwägen, um eine für unseren Kontext geignete Methode zu finden, erfordert ebenfalls besondere Fähigkeiten.
Die Voraussetzung zu deren Erfüllung ist wieder das Kundenkonto.
Dieses enthält Daten, die nur seine Besitzer kennen sollten (zum Beispiel Benutzername & Passwort).
Mit diesen Daten wird eine Authentifizierung möglich.
Die Benutzer melden sich damit am System an und bestätigen mit diesem geschützten Wissen ihre Identität.
In @fig-gtz-registrierung haben wir zu diesem Zweck die beiden Geschäftstransaktion *Kunde anmelden* und *Kunde abmelden* vorgestellt.
Diese haben wir hier in @fig-bp-and-bc-phase2 in dem Geschäftsprozess *Kundensession verwalten* aggregiert.
Die Kundensession ist die Möglichkeit des authentifizierten Benutzers, das System seiner Autorität entsprechend zu benutzen.
Und zwar in der Zeit von seiner Anmeldung bis zu seiner Abmeldung.
Autorität bedeutet hier eine definierte Anzahl von Rechten auszuüben.
So haben z.B. alle GründerInnen das Recht ihre Gründungsvorhaben abzubrechen.
GründerInnen sind aber nicht die einzigen Benutzer des Systems.
Ein Mitarbeiter der Verwaltung, der das Ergebnis eines Bewillungungsverfahrens für ein Gründungsvorhaben eintägt, darf dieses nicht abbrechen.
Alle Benutzer dürfen ihr eigenes Passwort zurücksetzen.
Aber nur ein Systemadministrator darf das Passwort für andere Benutzer zurücksetzen.
Die Fähigkeiten sicherzustellen, dass Authenfizierung und Autorisierung sicher funktionieren, haben wir in der Geschäftsfähigkeit *Authentifizierung und Autorisierung* zusammengefasst.

Die folgende Abbildung zeigt wie die in diesem Abschnitt besprochenen Prozesse und Fähigkeiten in das RMI nach Archimate eingebettet sind.

#figure(
  image("../assets/jan/Geschäftsfähigkeiten in Phase 2 - Sich registrieren.svg", width: 100%),
  caption: [Geschäftsfähigkeiten in Phase 2: Sich registrieren"]
) <fig-bp-and-bc-phase2>

=== Geschäftsprozesse und Geschäftsfähigkeiten für die  Unternehmensgründung
#autor-verwaltung([Beitrag von Giovanna Beier])
In  @sec-go-gt-unternehmen-gründen wurde das zentrale Geschäftsobjekt für das Szenario "Unternehmen Gründen" beschrieben - samt seinen Zuständen und die dazugehörenden Geschäftstransaktionen (se. @fig-GTZ-Amira-gründet). 
Unterstehende @GPGF_Amira_gründet_Unternehmen stellt die Zusammenhänge zwischen Geschäftsprozesse, Geschäftsobjekten und Geschäftsfähigkeiten im ressourcenunabhängigen Modell nach Archimate dar. 

#figure(
  image("../assets/GP+GF Amira gründet ihr Unternehmen.svg", width: 100%),
  caption: [Geschäftsprozesse und Geschäftsfähigkeiten - Szenario "Unternehmensgründung"]
) <GPGF_Amira_gründet_Unternehmen>

Nachfolgend wird auf die neu hinzugekommene Elemente - Geschäftsprozesse und Geschäftsfähigkeiten - näher eingegangen

==== Geschäftsprozesse
Die Geschäftstransaktionen werden in zwei Geschäftsprozesse aggregiert, nämlich *Handelsregistereintrag erhalten* und *Unternehmen [bei Behörden] anmelden*.
Die Unterscheidung in zwei Geschäftsprozesse ist hier der Tatsache zuzuweisen, dass jeder Prozess ein eigenständiges Ziel verfolgt. 
Der erste Geschäftsprozess "Eintrag im Handelsregister erhalten" hat zum Ziel, das Unternehmen ins Leben zu rufen und als solches auch Handlungs- und Geschäftsfähig zu machen. Dieser Prozess ist zwingend notwendig, damit das Unternehmen agieren kann.
Der zweite Prozess "Unternehmen bei Behörden anmelden" hat zum Ziel, das gegründete Unternehmen bei verschiedenen Stellen der kantonalen und eidgenössischen Verwaltung "bekannt" zu machen - u.A. um zum Schutze der zukünftigen Angestellten (Anmeldung bei der kantonalen Ausgleichsstelle) oder um die Mehrwertsteuerpflicht zu konkretisieren (Anmeldung bei der eidgenössischen Steuerverwaltung). 
Diese Anmeldungen erfolgen nicht automatisch, sondern bedarf einer Entscheidung der GründerInnen.
Dieser Prozess ist nur dann notwendig, wenn das Unternehmen seine wirtschaftliche Aktivität aufnimmt, was auch Ziel der Kunden der Plattform ist. 
Aus diesem Grund forciert der abgebildete Prozess die GründerInnen dazu, diese Anmeldungen vorzunehmen - auch, um den Zugang zur Finanzierung zu ermöglichen. 

==== Abhängigkeiten von Geschäftsobjekten 
- #emph[Unternehmen] --- das zentrale Objekt beider Prozesse: alle Geschäftstransaktionen greifen darauf zu, und die Zustände des Objekts sind die Fortschrittsanzeige des Gesamtprozesses (siehe @tbl-GO-unternehmen).
- #emph[Gründungsvorhaben] --- fachlicher Auslöser und Empfänger des Prozessergebnisses: die abschliessende Transaktion #emph[Finanzierung zusagen] greift auch auf dieses Objekt zu und versetzt es in den Zustand #emph[finanziert]. Sie ist damit die einzige Transaktion der Phase, die auf zwei Geschäftsobjekte wirkt.
- Indirekt, über das Objektmodell der Finanzierung: #emph[Bewilligung] als Voraussetzung (ohne Betriebsbewilligung kein Gesuch) und #emph[Unternehmen] als Empfänger der Mittel und Inhaber des Geschäftskontos.


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

=== Geschäftsfähigkeiten für die Orientierung auf der Webseite von GastroStart

Die Geschäftsfähigkeit, die im Szenario *Orientierung auf der Webseite von GastroStart* tragend wird, wurde als *GastroStart vorstellen* identifiziert. Sie bildet die Grundlage für die Entscheidung, ob Amira ihr Gründungsvorhaben über GastroStart realisieren möchte.

=== Geschäftsfähigkeiten für die Registrierung bei GastroStart

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
#todo-action([sorry, my bad: can you merge this chapter with the one about "Geschäftsprozesse" in the section above?])

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

#autor-transgourmet("Beitrag von Jakob Albrecht", inhalt: [Belieferung von Gastronomiebetrieben durch Transgourmet im Rahmen des Joint Ventures GastroStart],)

Bevor die aus der Customer Journey resultierten Geschäftsfähigkeiten auf Applikationslandschaft heruntergebrochen wird, ist eine grundlegende Einordnung nötig: Welches Operating Model liegt Transgourmet zugrunde und welchen Einfluss hat dies auf die Enterprise Architektur des Joint Ventures GastroStart?

Ross, Weill und Robertson unterscheiden vier Operating Models entlang der beiden Achsen Standardisierung der Geschäftsprozesse und Integration der Daten @ross2006enterprise.
Aus dieser Klassifikation leitet sich ab, wie viel Integration eine Architektur tragen muss und wo Autonomie zulässig bleibt.

#figure(
  caption: [Operating-Model-Matrix nach Ross, Weill und Robertson @ross2006enterprise[Abb. 2-1, S. 30] mit Verortung der Transgourmet-B2B-Belieferung (Unification) und der übergreifenden Customer Journey (Federation). ],
  image("../assets/operating_model_matrix_mit_federation_layer.svg", width: 92%),
) <fig-operating-model-matrix-with-federation-layer>

- *Ebene Transgourmet B2B-Belieferung — Unification*: Innerhalb von Transgourmet sind sowohl Prozesse als auch Daten hoch integriert und zentralisiert. Kunden-, Sortiments-, Preis-, Bestands-, Bestell- und Lieferdaten werden geteilt, die Kernprozesse (Bestellung, Disposition, Lieferung, Fakturierung) sind standardisiert, und ein zentrales System bedient diese Kanäle.

- *Ebene Customer Journey — Federation*: Für die akteursübergreifende Sicht existiert keine Entsprechung im Ross/W/R-Schema; die Klassifikation adressiert Ebenen *innerhalb* einer Organisation (Enterprise, Division, Business Unit), nicht autonome Akteure. Dem entsprechend ist die Darstellung @fig-operating-model-matrix-with-federation-layer zweiteilig. Die beteiligten Akteure (Gründer, Behörde, Finanzpartner, Transgourmet) sind autonom und betreiben ihre eigenen Systeme. Eine geteilte Datenhaltung über die Akteursgrenzen hinweg ist nicht vorgesehen. Die Durchgängigkeit der Journey entsteht, wo möglich, über standardisierten Kontrakte: das GastroStart-Portal koordiniert die Gründungsphasen über eCH-konforme Schnittstellen zu Behörden und Finanzpartner. Transgourmet wird über EDIFACT/GS1-Kontrakte @gs1ch_2022_idealmessage_orders für Bestellungen angebunden. Die Integration der Daten ist auf die Schnittstellen beschränkt, die Prozesse sind nicht standardisiert, und die Systeme sind autonom.

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

#fuehrung([Das monolithische ERP-Kernsystem realisiert sämtliche Geschäftsfunktionen ohne Anti-Corruption Layer (ACL) und ohne Schnitt in Self-Contained Systems (SCS) @bass2012.

Bei Transgourmet ist ein Modernisierungsprojekt in der Umsetzung (Stand Sommer 2026), das genau diese Architekturprobleme adressiert und die Kernsysteme in SCS aufteilt, die durch ACLs isoliert kommunizieren.])

=== Domänenmodell: Bestellabwicklung im RSM mit Transgourmet als Lieferanten

Mit dem RSM werden die Anforderungen an die Anwendungslandschaft von GastroStart konkretisiert.
Hier mit dem Blick auf die *Bestellabwicklung* und Anbindung von Transgourmet als Lieferanten.

Die Geschäftstransaktion *Bestellung senden* wird im RSM bis auf Stufe Technologie heruntergebrochen, wo auf den GS1/EDIFACT-Standard für die elektronische Bestellung (ORDERS) verwiesen werden kann @gs1ch_2022_idealmessage_orders.

#figure(
  image("../assets/RSM-Bestellabwicklung.svg", width: 92%),
  caption: [RSM der Bestellabwicklung mit Anbindung von Transgourmet als Lieferanten],
) <fig-RSM-Bestellabwicklung>

Die Domänen GastroStart und Transgourmet werden über den Technologie Layer mit EDIFACT Order Sender und Empfänger verbunden, so dass die Bestellabwicklung über die Akteursgrenzen hinweg standardisiert ist (siehe @fig-RSM-Bestellabwicklung).


== Operating Model für DV Bern 
#autor-dvbern("Beitrag von Jan Sohnemann, DV Bern", inhalt: [])

DV Bern ist ein IT-Dienstleister ca. 200 Mitarbeitern an einem Standort. 
Das Hauptgeschäft ist Individual-Softwareentwicklung und Hauptkunden sind öffentliche Verwaltungen. 
Neben Geschäftsführung, Finanzen, HR, Gebäude- und Material-Managemant sind die Abteilungen zur Erbringung der Kundenleistungen nach Sektoren eingeteilt wie z.B.: 
Care & Education, Gesundheit und Steuern. 
Diese Abteilungen können sich Kunden teilen, z.B. die Stadt Luzern oder den Kanton Bern und es kann auch Schittstellen zwischen den Applikation geben, die verschiedene Abteilungen für verschiedene Kunden bereitstellen. 
Alle Abteilungen sind Kunden der Abteilung IT-Servives und die Prozesse sind hier weitesgehend für alle Abteilungen standardisiert. 
Die IT-Services stellen nicht nur Arbeitsgeräte zur Verfügung, sondern sichern auch den Betrieb von intern oder extern gehosteten Kundenanwendugen. 
Davon und von einigen, wenigen Vorgaben und Best Practices abgesehen haben die Abteilungen weitesgehend Autonomie.

Es gibt also wenig Geschäftsprozess-Standardisierung, aber dort wo es standardisierte Prozesse gibt, sind diese meist sehr stark integriert. 
Ich würde DV Bern im Operating Model unter «Koordination» einordnen. 
Für die Customer Journey «Gastro Start» macht das auch Sinn. DV Bern spielt hier eine Schlüsselrolle bei der Integration verschiedener Services. 
Ein gewisses Rahmenwerk bei der Erbringung von Software-Dienstleistungen ist unabdingbar, insbesondere bei der Zusammenarbeit mit öffentlichen Verwaltungen, wo  Complience und Verfügbarkeit eine grosse Rolle spielen. 
Andererseits benötigen Inidividuallösungen auch Freiheitsgrade, damit schnell auf Unvohersehbarkeiten reagiert werden kann.

=== Die Orientierung im RSM <sec-domaenenmodell-orientierung>

#autor-dvbern("Beitrag von Jan Sohnemann, DV Bern", inhalt: [])

Wir betrachten an dieser Stelle den Übergang vom RIM in das ressourcenspezifische Modell (RSM) für die Phase: Orientierung.
Das hier beschriebene, in @fig-RSM-orientierung dargestellte Modell basiert auf @fig-GTZ-orientierung, allerdings haben wir aus diesem, der Übersichtlichkeit halber nur noch Geschäftsprozess und Geschäftsobjekte übernommen.

Das RSM basiert auf der Applikationskomponente *Gründungsverwaltung*. Diese Komponente stellt wohldefinierte Verfahren für das Erstellen, Modifizieren und Löschen von Gründungsvorhaben.
Wir beschränken den Rahmen dieser Ausführungen wie in den Abschnitten zuvor auf das Erstellen von Gründungsvorhaben.
Für die Orientierung des Gründungsvorhabens benötigen wir zwei Applikationsfunktionen:
Die *Bedarfsermittlung* hat die Aufgabe den regulatorischen Bedarf zu ermitteln.
Dazu benötigt sie einerseits die dafür relevanten Informationen aus dem Datenobjekt *Gründungsvorhaben*, sowie die regulatorischen Kriterien aus dem Datenobjekt *Regelmatrix*.
Beide Objeke erfüllen den Zweck der von ihnen realisierten, gleichnamigen Geschäftsobjekte.
Diese haben wir in @head-phase1-orientierung-1 ausführlich beschrieben.
Die Bedarfsermittlung realisiert einen Service, den wir *Bewilligungsbedarfsermittung* genannt haben.
Dieser Service bietet über die Schnittstelle *Bewilligungs-API* zugriff auf die Applikationskomponente.
Die Applikationsfunktion *Anforderungsermittlung* hat die Aufgabe das Gründungsvorhaben zu definieren.
Diese Funktion realisiert den Applikationsservice *Gründungsorientierung*, der über die Schnittstelle *Orientierungs-API* Zugriff auf die Applikationskomponente gewährt.

Die Realisierung des Geschäftsobjektes *Bewilligungsübersicht* geschieht hier durch das Datenobjekt *Bewilligungsverfahren*.
Die Namensabweichung steht dafür, dass dieses Datenobjekt keine finale Liste ist, sondern später im Bewilligungsverfahren auch die Zustände einzelner Bewilligungen oder allgemeiner: Bewilligungskriterien, verfolgen soll. Das Kriterium "Wirtepatent" zum Beispiel könnte folgende Zustände haben:
- offen
- umsetzung
- erhalten
- eingereicht
- aktzeptiert

Die folgende Abbildung zeigt das RSM der Phase "Orientierung" und dessen Beziehungen zum RIM.

#figure(
  image("../assets/jan/Phase 1c - Orientierung - (RSM).svg", width: 100%),
  caption: [RSM der Phase «Amira orientiert sich»],
) <fig-RSM-orientierung>

=== Die Registrierung im RSM <sec-domaenenmodell-registrierung>
#autor-dvbern("Beitrag von Jan Sohnemann, DV Bern", inhalt: [])

Betrachten wir nun den Übergang vom RIM ins RSM für die Phase: Registrierung.
Das hier beschriebene, in @fig-RSM-registrierung dargestellte Modell basiert auf @fig-gtz-registrierung und auch hier haben wir, der Übersichtlichkeit halber nur noch Geschäftsprozesse und -objekte übernommen.

Oben im, in @fig-RSM-registrierung gezeigten Modell taucht wieder die Applikationskomponente *Gründungsverwaltung* auf, die wir im letzten Abschnitt (@sec-domaenenmodell-orientierung) eingeführt haben.
Wie in @head-phase2-registrierung beschrieben, wird das bei der Registrierung erstellte Kundenkonto mit dem zuvor definierten Gründungsvorhaben verknüpft.
Und diesen Vorgang realisieren wir mit dem Applikationsservice *Verknüpfungsdienst*, der über die Schnittstelle *Gründungs-API* Zugriff auf die Gründungsverwaltung ermöglicht.
Die Gründungs-API, sowie die beiden anderen Schnittstellen in diesem Modell sind einem Service names *API-Gateway* zugeordnet.
Dieser Service steht stellvertretend für alle Benutzer- und Service-Schnittstellen.
Das Gateway entscheidet welche Anfragen an das System, an welche Ressource weitergeleitet werden und ob diese Ressource öffentlich oder geschützt ist.
Für den Zugriff auf geschützte Ressourcen muss eine Authentifizierung und Autorisierung erfolgen, was hier im Modell durch die Applikationskomponente *IAM* (Identity Access Mananagemet) realisiert wird.
In @fig-RSM-registrierung ist diese mit zwei Schnittstellen ausgestattet, welche durch die Applikationsservices *Sitzungsdienst* einerseits und durch *Registriertungsdienst* andererseits realisiert werden.
Der Registierungsdienst ermöglich das Anlegen eines Kundenkontos und löst die Verknüpfung mit dem Gründungsvorhaben aus.
Der Sitzungsdienst dient der Verwaltung von Benutzer-Sessions und implementiert Funktionen wie Benutzer an- und abmelden.

Die folgende Abbildung zeigt das RSM der Phase "Registrierung" und dessen Beziehungen zum RIM.

#figure(
  image("../assets/jan/Phase 2c - Sich registieren (RSM).svg", width: 100%),
  caption: [RSM der Phase «Amira registriert sich»],
) <fig-RSM-registrierung>

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

=== Domänenmodell: die Finanzierung im RSM <sec-domaenenmodell-finanzierung>

Die bisherigen Abschnitte bleiben auf der Ebene des Operating Models und der Architekturschichten. Der letzte Schritt führt das RIM der Finanzierung in ein RSM über und beantwortet zwei Fragen: Welche Bausteine der Anwendungslandschaft realisieren die Geschäftstransaktionen der Phase, und wo genau verläuft die Grenze zwischen FINNOFLEET und GastroStart?

#figure(
  image("../assets/RSM Amira erhält eine Finanzierung.svg", width: 100%),
  caption: [RSM der Phase «Amira erhält eine Finanzierung»],
) <fig-RSM-finanzierung>

Das Modell ist in drei Ebenen zu lesen:

- *Unten das RIM, auf den Erfolgsfall verkürzt*: die vier Geschäftstransaktionen mit der Zustandskette der Finanzierung von #emph[neu] bis #emph[finanziert] sowie die beiden Geschäftsobjekte #emph[Finanzierung] und #emph[Gründungsvorhaben]. Die Rückläufe über #emph[unvollständig], #emph[abgelehnt] und #emph[abgebrochen] sind der Lesbarkeit zuliebe weggelassen; sie stehen vollständig in @fig-GTZ-finanzierung. Fachlich wird diese Ebene durch die Ressourcenzuordnung nicht angetastet --- das ist der Zweck der Trennung von RIM und RSM.
- *Oben zwei Domänen*: in der Domäne #emph[GastroStart] liegen die Komponenten #emph[Finanzierung] und #emph[Orientierung] mit ihren Datenobjekten #emph[Finanzierung] respektive #emph[Gründungsvorhaben]. Jede Komponente ist über eine gleichnamige Schnittstelle erreichbar, die dem Service #emph[AL- Finanzierung] beziehungsweise #emph[AL- Orientierung] zugewiesen ist. In der Domäne #emph[FINNOFLEET -- Partner] steht eine einzige Komponente, #emph[ELA Kredit], mit einer einzigen Schnittstelle: #emph[Tragbarkeit].
- *Dazwischen die Trace-Beziehungen*: die Services sind mit den Geschäftstransaktionen verbunden, die sie realisieren, die Datenobjekte mit den Geschäftsobjekten, deren Bestand sie führen. Sie sind die Nachweiskette zwischen den beiden Modellen und der Grund, warum sich zu jedem Element der Anwendungslandschaft die fachliche Herkunft angeben lässt.

Vier Beobachtungen tragen die Architekturaussage:

1. *Die Domänengrenze ist ein einzelnes Element.* FINNOFLEET erscheint in der Journey ausschliesslich über die Schnittstelle #emph[Tragbarkeit]. Alles, was der vorangehende Abschnitt als hoch standardisiert und hoch integriert beschreibt --- der Anbahnungsprozess, das zentrale Backend, die Anbindung der Bestandssysteme (siehe @fig-EA-ela-kredit) --- liegt hinter dieser einen Schnittstelle und ist von aussen nicht sichtbar.

2. *Integriert wird über Daten, nicht über Prozesse.* GastroStart meldet den Fall über die Schnittstelle #emph[Tragbarkeit] an und fragt anschliessend regelmässig nach dem Stand, bis die Prüfung abgeschlossen ist. Eine gemeinsame Prozesssteuerung über die Organisationsgrenze gibt es nicht: die Geschäftstransaktion #emph[Finanzierung prüfen] läuft auf der Partnerplattform von FINNOFLEET und nicht bei GastroStart.

3. *Ein Bestand, nicht zwei.* Das Geschäftsobjekt #emph[Finanzierung] hat im RSM genau einen Bestand: das Datenobjekt #emph[Finanzierung] in der Domäne GastroStart. Im organisationsübergreifenden Kontext könnte aus diesem einen Geschäftsobjekt durchaus mehr als ein Bestand entstehen --- dann wäre zu klären, welcher Partner den Fall führt und wie die Bestände abgeglichen werden. Hier fällt die Entscheidung bewusst anders: der Fall wird einmal geführt, FINNOFLEET greift über die Schnittstelle darauf zu und hält im Modell keine zweite Kopie. Wie viel das wert ist, zeigt der Rücklauf: weist die Prüfung das Gesuch als #emph[unvollständig] zurück, kehrt derselbe Fall in die Vorbereitung zurück und läuft die Kette erneut (siehe @fig-GTZ-finanzierung). Bei zwei Beständen wäre jeder dieser Rückläufe ein Abgleich zwischen den Partnern; bei einem Bestand ist er nur ein Zustandswechsel. Die interne Aktenführung von ELA Kredit ist Innensicht und in @fig-EA-ela-kredit dargestellt, nicht hier.

4. *Die Orientierung schliesst die Kette.* Das Datenobjekt #emph[Gründungsvorhaben] liegt in der Komponente #emph[Orientierung], und der Service #emph[AL- Orientierung] ist mit der Transaktion #emph[Finanzierung zusagen] verbunden --- jener Transaktion, die als einzige der Phase auf zwei Geschäftsobjekte wirkt und das Gründungsvorhaben auf #emph[finanziert] setzt (siehe @tbl-GT-finanzierung-erhalten). Der Zustandswechsel über die Objektgrenze ist damit im RSM an genau der Stelle wieder auffindbar, an der er im RIM entstanden ist.

Damit ist die Einordnung des vorangehenden Abschnitts nicht mehr nur behauptet, sondern am Modell ablesbar: Unification gilt innerhalb des Finanzierungsbeitrags, Coordination zwischen den Partnern --- und die Grenze zwischen den beiden Operating Models ist im Bild kein Bereich, sondern ein Element.

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

GastroStart fällt somit unter dem sog. Operating Model "Coordination". 
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

#pagebreak()
