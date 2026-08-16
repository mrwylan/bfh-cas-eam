// ── Chapter 4 : EA Realization  ───────────────────
#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung
= Die Realisierung des Resource Independent Model
/*in Anlehnung an Kapitel 3.4.5. vom Spichiger-Skript*/
== Allgemeines
Dieses Teil der Arbeit bildet der Kern der Überlegungen der Gruppe. 
Die Verfolgung der durch die Übungen vorgegebene Arbeitsschritte haben uns bis zur höchsten Abstraktionsstufe unseres Unternehmens geführt. 
Jeder Entwicklungsschritt bezieht sich auf einem Auftrag (Übung) und folgt die Empfehlung zur Erarbeitung des RIM, die im Skript @Spichiger2026GFbUA, S. 53 ff. beschrieben ist. 


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

== Erste Iteration: Identifikation der Geschäftsobjekte


#fuehrung([*Geschäftsobjekte* 

Aus der Geschichte werden die groben Geschäftsobjekte sowie die Beziehungen zwischen den Geschäftsobjekten identifiziert, die in einer dematerialisierten Umsetzung der Geschichte noch Relevanz haben.

Ein Geschäftsobjekt kapselt statische Struktur des RIM. Ein Geschäftsobjekt beschreibt einen zentral wesentlichen Teil des Kontexts einer Unternehmung und abstrahiert vollständig von den Ressourcen der Unternehmung (Dematerialisierung) und dessen Verhalten. @Spichiger2026GFbUA]) 

=== Vorgehen
Um Geschäftsobjekte zu identifizieren hat sich die Gruppe mit der Struktur von Amiras Customer Journey auseinandergesetzt.
Dabei liessen sich Nomen wie "Gründung", "Finanzierung", "Kundenkonto" - diese wurden als Prototypen für mögliche Geschäftsobjekte festgehalten. 

 #figure(
  image("../assets/Customer Journey View.svg", width: 40%),
  caption: [Archimate Modell der Customer Journey von Amira und erste Iteration für die Identifikation der Geschäftsobjekte]
) <fig-customer-journey-view>

=== Modell der identifizierten Objekte
Folgendes Archimate Modell der Geschäftsobjekte von GastroStart, die von der Gruppe identifiziert wurden. 


#figure(
  image("../assets/Domain Models - GO diagram.svg", width: 80%),
  caption: [Geschäftsobjekt Kundenkonto und dessen Zustände]
) <fig-IdentifizierteGeschaefstobjetke>

#frage([brauchen wir nicht das Objekt "Kunde"? Und Webseite?])


#design-entscheid([
Es wurde verzichtet, das Objekt Person zu modellieren. Die Behandlung von personenbezogenen Invarianten wie Domizil in der Schweiz oder Besitz des Wirtepatentes als Voraussetzung für die Gründung des Unternehmens und für den Erhalt der Betriebsbewilligung würden den Rahmen dieser Arbeit sprengen.

])
=== Kundenkonto (Registrierung)
#todo-action([\@ Jan: bitte allenfalls etwas ausführlicher beschreiben - bitte erklären, dass Kundenkonto für Kunde steht / dass wir Kunde nicht abbilden (gemiensame Entscheidung)])

#figure(
image("../assets/GOKundenkonto.svg", width: 50%),
caption: [Geschäftsobjekt Kundenkonto und dessen Zustände]
) <fig-GOKundenkonto>
#todo-action([\@Jan: Objektbeschreibung nachführen. SVG Screenshot einfügen. ])
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
      [wie bei Finanzierung ausfüllen],

      [Zustände],
      [aktiv, inaktiv, aktualisiert, registriert],

      [Beziehungen],
      [ ],
    )
  ]
) <tbl-GO-Kundenkonto>

#design-entscheid([
  Wir haben uns die Frage gestellt, ob wir das Objekt "Kunde" auch zusätzlich modellieren sollen. 
  Wir sind zum Schluss gekommen, dass das Geschäftsobjekt Kundenkonto alle Informationen zum Kunden enthält, weshalb letzteres nicht separat / zusätzlich geführt werden muss.
])


=== Unternehmen
#figure(
image("../assets/GOUnternehmen.svg", width: 50%),
caption: [Geschäftsobjekt Unternehmen und dessen Zustände]
) <fig-GOUnternehmen>

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
      

        
        #linebreak()
        _(nur Stammdaten; zugehörige Dokumente wie Handelsregistereintrag oder Bewilligung sind eigene Objekte, siehe Beziehungen)_
      ],

      [Zustände],
      [neu, beurkundet, eingereicht, unvollständig, angenommen, abgelehnt, im Handelsregister eingetragen, abgebrochen.
      
      Lebenszyklus: von _neu_ über _beurkundet_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung die Status _angenommen_ und _im Handelsregister eingetragen_ erreicht werden. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist.],

      [Beziehungen],
      [
        - wird referenziert von *Gründungsvorhaben* (wobei die Gründung der juristischen Person nicht zwingend notwendig ist)
        - steht in Beziehung zu 
         - *Kundenkonto*: _TBD_
         - *Bewilligung*: als Empfänger
         - *Lieferantenkonto* als Kunde und Debitor von Transgourmet
         - und *Finanzierung*: als Empfänger der Mittel
        - Zugriff über die Geschäftstransaktionen 
          - Gründungsdokumentation vorbereiten, Eintrag im Handelsregister beantragen, Antrag prüfen, im Handelsregister eintragen und Unterlagen nachreichen (siehe @tbl-GT-Unternehmen-gründen). 
      ],
    
    )
  ]
) <tbl-GO-Unternehmen>

=== Bewilligung 

#figure(
image("../assets/GOBewilligung.svg", width: 50%),
caption: [Geschäftsobjekt Bewilligung und dessen Zustände]
) <fig-GOBewilligung>
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
      [fachlich relevante Informationen zum Geschäftsobjekt sind: Typ (mit oder ohne Alkoholausschank), unterliegendes Wirtepatent (insbesondere dessen territoriale Gültigkeit), Standort bzw. Lokal, Datum Bewilligungsbeginn, erteilende Behörde, Datum der Anmeldung bei der kantonalen Lebensmittelbehörde bzw. -labor, Hygienekonzept],

      [Zustände],
      [neu, in Vorbereitung, eingereicht, unvollständig, abgelehnt, erteilt, abgebrochen. 
      
      Lebenszyklus: von _neu_ über _in Vorbereitung_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung der Status _erteilt_ erreicht wird. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist.

      Andere Zustände wie erloschen, entzogen, sistiert, sind für die Customer Journey nicht relevant.],

      [Beziehungen],
      [- wird referenziert von *Gründungsvorhaben* // sagt man das so? ist das korrekt?
        - steht in Beziehung zu *Unternehmen* als Adressat
        - Zugriff über die Geschäftstransaktionen 
          - Bewilligungsantrag vorbereiten, Bewilligungsantrag einreichen, Bewilligungsantrag vervollständigen, Antrag prüfen, Verfügung mitteilen (siehe @tbl-GT-Bewilligung). ],
    )
  ]
) <tbl-GO-Bewilligung>

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
      [Auf Objektebene bewusst nicht ausmodelliert (analog zu den übrigen Geschäftsobjekten). Fachlich relevant wären Betrag, Laufzeit, Kondition/Zinssatz und Verwendungszweck --- #emph[im Team zu bestätigen].],

      [Zustände],
      [neu, angefordert, unvollständig, vollständig, angenommen, abgelehnt, abgebrochen.

      Lebenszyklus: von #emph[neu] über #emph[angefordert] zur inhaltlichen Prüfung; bei fehlenden Angaben #emph[unvollständig], nach Nachreichung #emph[vollständig]; abschliessend #emph[angenommen] oder #emph[abgelehnt]. #emph[abgebrochen] beendet den Fall vorzeitig.],

      [Beziehungen],
      [- #emph[Gründungsvorhaben] ist mit der Finanzierung assoziiert (löst das Gesuch aus).
      - Die Finanzierung ist mit der #emph[Bewilligung] assoziiert (Bewilligungsstand als Voraussetzung).
      #frage([was wird finanziert? das Vorhaben, NICHT die firmengründung, korrekt?])
      - Das #emph[Unternehmen] ist mit der Finanzierung assoziiert (Empfänger der Mittel).
      - Zugriff durch die Geschäftstransaktionen #emph[Finanzierung anfordern], #emph[Finanzierung prüfen] und #emph[Finanzierung vorbereiten] (siehe @tbl-GT-finanzierung-erhalten).],
    )
  ]
) <tbl-GO-Finanzierung>

=== Lieferantenkonto
#todo-action([\@ Jakob: bitte allenfalls etwas ausführlicher beschreiben])
- properties: Unternehmen, Transgourmet
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
      [ ],

      [Attribute],
      [Löschen?],

      [Zustände],
      [ ],

      [Beziehungen],
      [ ],
    )
  ]
) <tbl-GO-Lieferantenkonto>

=== Gründungsvorhaben
#todo-action([\@ jan/jakob: könnt ihr bitte dieses Objekt beschreiben?])


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

=== Reflektion
#stolperstein([
  Die Kundensicht ständig zu behalten und Abstand vom eigenen Fachbereich zu halten ist den Gefährten nicht immer gelungen. 
  ])

  Eine anfängliche Identifikation der Geschäftsobjekte führte die Gruppe zu einer umfangreicheren Liste. Physische Artefakte wie "Bewilligung", "Liefervertrag" oder "kantonales Formular" schienen uns vorerst sehr sinnvoll und notwendig. 
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
== Zweite Iteration: Zustände und Geschäftstransaktionen oder die Identifikation des relevanten Verhaltens
#frage([an alle: wie findet ihr mein Vorschlag für die Dokumentation der Geschäftstransaktionen und Zustände? ist es ok, immer dasselbe Objekt als in- und output zu haben (bspw. bei bewilligung)])

Wir dokumentieren die Identifikation von Zuständen und Geschäftstransaktionen pro Szenario, um die Lesbarkeit zu erhalten.
Die entsprechenden Geschäftsprozesse sind ebenfalls modelliert, auch wenn sie später erklärt werden.
Die Szenarien sind in @sec-szenarien-customer-journey beschrieben und werden einzeln aufbereitet. 
#fuehrung([

*Zustände:* Zu jedem Geschäftsobjekt werden seine Zustände identifiziert.

*Geschäftstransaktionen:* Entlang der Geschichte werden die Geschäftstransaktionen mit ihren Inputs und Output (Geschäftsobjekte) identifiziert. 
Sowohl bei Input und Output wird darauf geachtet, dass diese inklusive ihre Zustände (bzw. zugehörige Ereignisse) bezeichnet werden.
])


=== Amira orientiert sich

#todo-action([\@ Jan Szenario/Beschreibung (mit Bild) einfügen])
/* 
1. in Archi die View "GTZ Amira orientiert sich" unter Views / Assets4Paper / Geschäftstransaktionen (Iteration 2) / öffnen 
2. View wie im Bild 3.9 - Seite 55 vom Skript von Spichiger aufbereiten oder wie ../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg
3. als svg ins projekt hier importieren
4. Beschreiben: 
  - Events 
  - Transaktionen
*/
1. Zustände 
2. Geschäftstransaktionen
#figure(
  caption: [Geschäftstransaktionen: Prozess "sich orientieren"],
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

      [ ], [ ], [ ],
      [ ], [ ], [ ],
      [ ], [ ], [ ],
    )
  ]
) <tbl-GT-sich-orientieren>

=== Amira registriert sich bei GastroStart

#todo-action([\@ Jan Szenario/Beschreibung (mit Bild) einfügen])
/* 
1. in Archi die View "GTZ Amira registriert sich bei Gastrostart" unter Views / Assets4Paper / Geschäftstransaktionen (Iteration 2) / öffnen 
2. View wie im Bild 3.9 - Seite 55 vom Skript von Spichiger aufbereiten oder wie ../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg
3. als svg ins projekt hier importieren
4. Beschreiben: 
  - Events 
  - Transaktionen
*/
+ Zustände 
+ Geschäftstransaktionen
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

      [ ], [ ], [ ],
      [ ], [ ], [ ],
      [ ], [ ], [ ],
    )
  ]
) <tbl-GT-sich-registrieren>
=== Amira gründet ihr Unternehmen


 #figure(
  image("../assets/GTZ Amira gründet ihr Unternehmen.svg", width: 100%),
  caption: [Geschäftstransaktionen und Zustände - Szenario Amira gründet ihr Unternehmen]
) <fig-GTZ-Amira-gründet>

1. Zustände

neu, beurkundet, eingereicht, unvollständig, angenommen, abgelehnt, im Handelsregister eingetragen, abgebrochen.
      
Lebenszyklus: von _neu_ über _beurkundet_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung die Status _angenommen_ und _im Handelsregister eingetragen_ erreicht werden. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist.

2. Geschäftstransaktionen
Amira möchte eine Gesellschaft mit beschränkter Haftung gründen, um sich und ihre Familie finanziell vor einem möglichen Misserfolg ihres Unternehmens zu schützen. 
Das Geschäftsobjekt Unternehmen durchläuft mehrere Transaktionen: 
- In einer ersten Phase ist Amira in Führung: sie _bereitet_  mit der Hilfe der Informationen auf Gastrostart die _Unterlagen_ für die Gründung der "Food Affair GmbH _vor_. Nach der öffentlichen Beurkundung _beantragt_ sie den _Eintrag im Handelsregister_ für ihre GmbH. 
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

      [Gründungs-dokumentation vorbereiten], [Amira sammelt die für die Gründung notwendigen Dokumente und Angaben und bringt diese physisch beim Notar vorbei und beauftragt diesen mit der Gründung der GmbH. Sie zahlt das Gründungskapital ein.], [neu → beurkundet],
      [Eintrag im Handelsregister beantragen], [Amira meldet ihre GmbH über ihren Notar beim Handelsregisteramt ihres Wohnkantons.], [beurkundet → eingereicht],
      [Prüfung durch Handelsregister (abwarten)], [ Das Handelsregisteramt prüft den Antrag prüft den Antrag formell und entscheidet über das weitere Vorgehen.
       ], [eingereicht → angenommen / abgelehnt / unvollständig],
      [Im Handelsregister eintragen], [Das Handelregisteramt teilt Amira mit, dass der Eintrag im Register erfolgt ist], [angenommen → im Handelsregister eingetragen],
    )
  ]
) <tbl-GT-Unternehmen-gründen>


/* 
1. in Archi die View "GGTZ Amira gründet ihr Unternehmen" unter Views / Assets4Paper / Geschäftstransaktionen (Iteration 2) / öffnen 
2. View wie im Bild 3.9 - Seite 55 vom Skript von Spichiger aufbereiten oder wie ../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg
3. als svg ins projekt hier importieren
4. Beschreiben: 
  - Events 
  - Transaktionen
*/
=== Amira erhält die Bewilligung
Nach der Gründung ihrer Firma, beantragt Amira die Betriebsbewilligung 
 #figure(
  image("../assets/GTZ Amira erhält die Bewilligung.svg", width: 100%),
  caption: [Geschäftstransaktionen und Zustände - Szenario Amira erhält die Bewilligung]
) <fig-GTZ-Amira-bewilligung>

1. Zustände
/*
#figure(
image("../assets/ZustandGOBewilligung-2.svg", width: 60%),
caption: [Zustandsdiagramm des Geschäftsobjekt Bewilligung]
) <fig-GOBewilligung>
*/

Die Zustände sind: neu, in Vorbereitung, eingereicht, unvollständig, abgelehnt, erteilt, abgebrochen. 
Lebenszyklus: von _neu_ über _in Vorbereitung_ zu _eingereicht_ für die Prüfung durch die Behörden; bei fehlenden Angaben _unvollständig_, nach Nachreichung wieder _eingereicht_. Nach dem Erreichen des Status _eingereicht_ geht es je nach Behördenentscheid mit dem Status _abgelehnt_ zum Ende, während bei behördlicher Zustimmung der Status _erteilt_ erreicht wird. Der Status _abgebrochen_ beendet den Zyklus vorzeitig, solange der Status _eingereicht_ noch nicht erreicht worden ist.

Andere Zustände wie erloschen, entzogen, sistiert, sind für die Customer Journey nicht relevant.

#design-entscheid([Wir haben uns entschieden, die Frage um das Schicksal des Objekts "Bewilligung" im Fall der Löschung des Benutzerprofils von Amira offenzulassen.])
 
 
2. Geschäftstransaktionen
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

=== Amira wird Kunde bei Transgourmet
#todo-action([\@ Jakob Szenario/Beschreibung (mit Bild) einfügen])

/* 
1. in Archi die View "Amira wird Kunde bei Transgourmet" unter Views / Assets4Paper / Geschäftstransaktionen (Iteration 2) / öffnen 
2. View wie im Bild 3.9 - Seite 55 vom Skript von Spichiger aufbereiten oder wie ../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg
3. als svg ins projekt hier importieren
4. Beschreiben: 
  - Events 
  - Transaktionen
*/
+ Zustände
+ Geschäftstransaktionen

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

      [ ], [ ], [ ],
      [ ], [ ], [ ],
      [ ], [ ], [ ],
    )
  ]
) <tbl-GT-Kunde-bei-Transgourmet>

 #figure(
  image("../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg", width: 80%),
  caption: [Archimate Modell der Customer Journey von Amira]
) <fig-customer-journey-view>

=== Reflexion
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
  caption: [Archimate Modell einer frühen Modellierungsphase von "Betriebsbewilligung erhalten"] <fig-obs-bewilligung-erhalten>
) 


== Dritte Iteration: Geschäftsprozesse und Vollständigkeit des bisherigen Modells

#fuehrung([
Geschäftstransaktionen, die inhaltlich zusammenhängen, werden zu Geschäftsprozessen aggregiert.

Auf der Basis der In- und Outputs der Geschäftstransaktionen werden für jeden Geschäftsprozess seine Abhängigkeiten zu Geschäftsobjekten identifiziert.
@Spichiger2026GFbUA

])

=== Geschäftsprozesse für die Orientierung auf der Webseite von Gastrostart
#todo-action([\@ Jan (oder Jakob), bitte erarbeiten])
1. Geschäftsprozesse 
2. Abhängigkeiten von Geschäftsobjekten 

=== Geschäftsprozess für die Registrierung bei Gastrostart
#todo-action([[\@ Jan, bitte nachführen])])
1. Geschäftsprozesse 
2. Abhängigkeiten von Geschäftsobjekten 


=== Geschäftsprozess: Unternehmen gründen

#figure(
  image("../assets/GP Amira gründet ihr Unternehmen.svg", width: 80%),
  caption: [Geschäftsprozess - Szenario Amira gründet ihr Unternehmen], <GP_Amira_gründet_Unternehmen>
) 


1. Geschäftsprozesse 

Handelsregistereintrag erhalten 
wichtig, weil der Unternehmen erst dann überhaupt existiert und als solches auch Handlungs- und Geschäftsfähig ist! 

Unternehmen bei Behörde anmelden 

2. Abhängigkeiten von Geschäftsobjekten 


=== Geschäftsprozess Bewilligung erhalten

1. Geschäftsprozesse 
2. Abhängigkeiten von Geschäftsobjekten 


=== Geschäftsprozess Finanzierung erhalten

#todo-action([\@ Adi: bitte erarbeiten.])

1. Geschäftsprozesse 
2. Abhängigkeiten von Geschäftsobjekten 

=== Geschäftsfähigkeiten Kunde bei Transgourmet werden
#todo-action([\@ Jakob: bitte erarbeiten])

1. Geschäftsprozesse 
2. Abhängigkeiten von Geschäftsobjekten 

=== End-to-End Prozess: Onboarding Gastrounternehmens
#frage([\@ alle: einverstanden?])

== Vierte Iteration: Geschäftsfähigkeiten und Abhängigkeiten untereinander

#fuehrung([Geschäftsfähigkeiten bilden eine stabile, redundanzfreie Baumstruktur der funktionalen Dekomposition einer Unternehmung. Sie abstrahieren von jeglichen Ressourcen, werden aber von diesen unterstützt. Geschäftsfähigkeiten sind in sich stark zusammenhängend während sie mit andern Geschäftsfähigkeiten lose gekoppelt sind. @Spichiger2026GFbUA])

=== Geschäftsfähigkeiten für die Orientierung auf der Webseite von Gastrostart
#todo-action([\@ Jan oder Jakob, bitte nachführen])

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

Die übergeordnete Geschäftsfähigkeit lautet *Gründungsvorhaben finanzieren*. Sie wird von FINNOFLEET getragen und in fünf Teilfähigkeiten zerlegt:

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

5. Finanzierungskommunikation
• Transparente Rückmeldung des Scoring-Ergebnisses an die Kundin.
• Verweis auf alternative Förderprogramme im Fall einer Absage.

// Optionale Grafik: bei Bedarf ein Capability-View "Gründungsvorhaben finanzieren"
// in Archi anlegen (fünf Teilfähigkeiten, Composition), als assets/GF_Finanzierung.svg
// exportieren und als #figure einfügen (analog zu "GF Behördeninteration.svg").

=== Geschäftsfähigkeiten Kunde bei Transgourmet werden
#todo-action([\@ Jakob: bitte erarbeiten])

#figure(
  image("../assets/Phase 5 - Kunde bei Transgourmet.svg", width: 80%),
  caption: [Archimate Modell TODO]
) <fig-phase_5_Kunde_bei_Transgourmet>


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

== Kollaborative Synthese
Architektonische Entscheidungen im Team sind nicht rein analytisch – sie sind soziale Verhandlungen, geprägt von beruflichem Hintergrund, früheren Erfahrungen und unterschiedlichen mentalen Modellen davon, wozu Architektur dient @bass2012.

*Gruppenzusammensetzung:*
An der Kollaboration beteiligt waren Teilnehmende aus vier Organisationen: Transgourmet Schweiz AG (Grosshandel), FINNOFLEET Schweiz (standardisierte und individuell entwickelte Lösungen für Banken, Pensionskassen und Versicherungen), die Bundeskanzlei (öffentliche Verwaltung) und DV Bern (Softwareentwicklung öffentliche Hand).
Diese Breite spiegelte das bewusste Design des GastroStart-Falls wider: ein Produkt, dessen Leistungskette private Logistik, regulierte Finanzdienstleistungen, föderale Identitätsinfrastruktur und Software-Bereitstellung der öffentlichen Hand umspannt.

*Divergenz:*
Früh traten zwei strukturelle Spannungen auf.
Technisch orientierte Teilnehmende neigten zu Datenflüssen und API-Grenzen und rahmten die Journey als Integrationsproblem zwischen vier organisatorischen Systemen.
Geschäftsorientierte Teilnehmende fokussierten auf die emotionale Realität von Amiras Erfahrung und argumentierten, dass der Stimmungseinbruch in Phase 3 (−2) das zentrale architektonische Problem sei, ungeachtet seiner technischen Ursache.
Die umstrittenste Frage war, ob die kantonale Heterogenität in Phase 3 _im Scope_ der Plattform-Architektur liege oder als externe Einschränkung klassifiziert und zurückgestellt werden solle.

*Konsensmechanismus:*
Die Gruppe löste die Spannung, indem sie die analytischen Ebenen trennte: Die Customer Journey wurde als reines Outside-In-Artefakt geführt (Amiras Erfahrung, ungeachtet der Ursache), während das Service Blueprint die Inside-Out-Schicht einführte (was jede Organisation im Backstage tut) @stickdorn2011.
Diese Trennung – die direkt auf die ArchiMate-Unterscheidung zwischen Business Process (Journey) und Application Service (Backstage) abbildet – erlaubte es beiden Perspektiven, beizutragen, ohne sich gegenseitig zu überschreiben.

*Synthese-Ergebnis:*
Die resultierende Journey Map (@fig-journey-map) ist ein Konsens-Artefakt.
Die Entscheidung, kantonale analoge Prozesse als _Line of Failure_ statt als ausserhalb des Scopes liegende externe Einschränkung zu behandeln, war die folgenreichste Designentscheidung: Sie hielt das architektonische Problem ehrlich und verhinderte, dass die Gruppe den Dematerialisierungswert künstlich aufblähte, indem sie die schwierigsten Fälle ausschloss.
Diese ausgehandelte Qualität verleiht dem Artefakt seine architektonische Legitimität: Es repräsentiert ein geteiltes Verständnis und nicht die optimistische Projektion einer einzelnen Person.



= Das Inside-Out-Mapping: Realisierung der Enterprise Architecture

#frage([an alle: beschreiben wir hier das IST? oder die SOLL-Architektur?])

== Operating-Model-Einordnung nach Ross, Weill und Robertson für Transgourmet
Bevor die Customer Journey auf Capabilities und Systeme heruntergebrochen wird, ist eine grundlegende Einordnung nötig: Welches Operating Model liegt Transgourmet zugrunde?
Ross, Weill und Robertson unterscheiden vier Operating Models entlang der beiden Achsen Standardisierung der Geschäftsprozesse und Integration der Daten @ross2006enterprise.
Aus dieser Klassifikation leitet sich ab, wie viel Integration eine Architektur tragen muss und wo Autonomie zulässig bleibt.

#figure(
  caption: [Operating-Model-Matrix nach Ross, Weill und Robertson @ross2006enterprise mit Verortung der Transgourmet-B2B-Belieferung (Unification) und der übergreifenden Customer Journey (Federation)],
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

== Akteure des öffentlichen Wesens

=== Einordnung in das Operating System nach Ross / Weill des Schweizer öffentlichen Wesens

Das öffentliche Wesen in der Schweiz ist föderalistisch organisiert und spielt sich auf 3 politischen (und verwaltungstechnischen) Ebenen ab - dies beeinflusst stark die Interaktionen mit den Betroffenen. 

Diese drei Ebenen müssen getrennt betrachtet und eingeordnet werden: 

+ *Bundesebene*: ist bei Diversification einzordnune. Das ist nicht überraschend, sondern strukturell angelegt: Die Gesetztgebung gibt den Departementen und Ämtern eigene Vollzugsautonomie für ihre Kernaufgaben. Ist nichts anderes vorgesehen, ist eine Zusammenarbeit nicht erlaubt. Das ist politisch-rechtlich gewollte Dezentralisierung. Eine "dünne" zentrale Schicht basierend u.A. auf Standarddiensten, Produkte- und Prozessstandards und architektonischen Richtlinien erlaubt eine gewisse Interoperabilität. 
+ *Kantonale Ebene*: ist ebenfalls bei Diversification einzuordnen - 26-mal wiederholte Diversification. Die Einhaltung eines allfälligen obligatorischen gesetzlichen Minimums sowie die teil freiwillige Übernahme von eCH Standards erlauben eine ansatzweise Interoperabilität mit den anderen Ebenen. 
+ *Gemeindeebene*: Die Gemeinde gehört ebenfalls in die Diversification. Gemeinden differenzieren sich stark von einander - innerhalb desselben Kantons mit eigenen, oft analoge Prozesse. Und nochmals von Kanton zu Kanton kommen der Gemeinden unterschiedliche Zuständigkeiten zu  (Baubewilligung, Lärmschutz, Ortsplanung, punktuelle Bewilligungen). 
=== Abbildung des öffentlichen Wesens im Kontext von Gastrostart 
Das öffentliche Wesen nimmt nur indirekt eine Rolle in unserem Unternehmen Gastrostart. 
Eher bildet das öffentliche Wesen eine Hürde, die überwunden werden muss. Ein notwendiges Übel an Regulatorien und Vorgaben, welche die Kunden von Gastrostart von ihrem Traum trennt. 
Das öffentliche Wesen wird sich nicht in die Firma Gastrostart integrieren - es hat weder das Bedürfnis noch die Bestimmung, bei solchen privaten Initiativen mitzumachen. 
Noch weniger kann Gastrostart den Akteures des öffentlichen Wesens ein Geschäftsmodell (Operating System) aufzwingen.

Mit ihrem Versprechen,  die Kunden erfolgreich bei der Gründung ihres Gastrounternehmens zu unterstützen - von der Einschreibung auf die Plattform über die Firmengründung (inkl. Finanzierung) bis zur ersten Lieferung durch Transgourmet - inklusive Kundenkonto - übernimmt Gastrostart eine sehr komplexe Aufgabe. 
Die "Sorglosigkeit", die Gastrostart verspricht, sollte vielleicht gar keine Architektureigenschaft sein, sondern eine Dienstleistung von Gastrostart selbst. 

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

+ Il «partner pubblico» non è un'organizzazione che siede nella JV, è un layer di interoperabilità: interfacce standardizzate (eCH-0258 per lo scambio dati), governate dalla DVS, consumate da GastroStart dall'esterno. La frammentazione (26 Kantone × 2110 Gemeinden) sparisce dietro questo layer nella misura in cui gli standard arrivano — e oggi ci arrivano su base volontaria. In ArchiMate ti servono Application Interfaces/Services esposti dal lato autorità e consumati da GastroStart, con gli standard eCH come Contract/Requirement. I punti d'aggancio concreti li hai già nel tuo §4:, Nutzerkonto (AGOV, il login unico delle autorità), Handelsregistereintrag (Zefix/EHRA). Modelli GastroStart contro questi Basisdienste.

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