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

Aus der Geschichte werden die groben Geschäftsobjekte sowie die Beziehungen zwischen den Geschäftsobjekten identifiziert, die in einer dematerialisierten Umsetzung der Geschichte noch Relevanz haben. @Spichiger2026GFbUA]) 

=== Vorgehen
Um Geschäftsobjekte zu identifizieren hat sich die Gruppe mit der Struktur von Amiras Customer Journey auseinandergesetzt.
Dabei liessen sich Nomen wie "Gründung", "Finanzierung", "Kundenkonto" - diese wurden als Prototypen für mögliche Geschäftsobjekte festgehalten. 

 #figure(
  image("../assets/Customer Journey View.svg", width: 40%),
  caption: [Archimate Modell der Customer Journey von Amira und erste Iteration für die Identifikation der Geschäftsobjekte]
) <fig-customer-journey-view>

#todo-action([\@ Adi: bitte in Archi ein Objektdiagramm erstellen (unter Views/Assets4Paper/Geschäftsobjekte - Iteration 1/IdentifizierteGeschaefstobjekte), dann als SVG exportieren und hier integrieren. Als Beispiel: Geschäftsobjekte Arthur Reise, S. 46 vom Skript - Abbildung 3.5])
#figure(
  image("../assets/IdentifizierteGeschaefstobjekte.svg", width: 50%),
  caption: [Geschäftsobjekt Kundenkonto und dessen Zustände]
) <fig-IdentifizierteGeschaefstobjetke>


=== Kundenkonto (Registrierung)
#todo-action([\@ Jan: bitte allenfalls etwas ausführlicher beschreiben])
Zugangsberechtigung eines Kunden (oder: Benutzer) im System „GastroStart“. Dient der Identifizierung einer Person, ihres Betriebs (oder Betriebe) und aller, für die in diesem System abgebildeten Prozesse, notwendigen Dokumente und Daten. 
- Zustände: aktiv, inaktiv, aktualisiert, registriert
- Eigenschaften:
#figure(
image("../assets/GOKundenkonto.svg", width: 50%),
caption: [Geschäftsobjekt Kundenkonto und dessen Zustände]
) <fig-GOKundenkonto>
#todo-action([\@Jan: Objektbeschreibung nachführen. SVG Screenshot einfügen. ])
=== Unternehmen
- betrieb/location -  the place where we get the goods and Maria cooks
- process: open
- Zustände: neu, beurkundet, eingereicht, unvollständig, angenommen, abgelehnt, im Handelsregister eingetragen
#figure(
image("../assets/GOUnternehmen.svg", width: 50%),
caption: [Geschäftsobjekt Unternehmen und dessen Zustände]
) <fig-GOUnternehmen>
=== Bewilligung 
- properties: Unternehmen
- Zustände: new, requested, incomplete, accepted, rejected, cancel
#figure(
image("../assets/GOBewilligung.svg", width: 50%),
caption: [Geschäftsobjekt Bewilligung und dessen Zustände]
) <fig-GOBewilligung>
=== Finanzierung
#todo-action([\@ Adi: bitte allenfalls etwas ausführlicher beschreiben])
- status: new, requested, incomplete, accepted, rejected, cancel
- properties: Bonitätsprüfung, Kredit
#figure(
image("../assets/GOFinanzierung.svg", width: 50%),
caption: [Geschäftsobjekt Finanzierung und dessen Zustände]
) <fig-GOFinanzierung>
=== Lieferantenkonto
#todo-action([\@ Jakob: bitte allenfalls etwas ausführlicher beschreiben])
- properties: Unternehmen, Transgourmet
#figure(
image("../assets/GOLieferantenkonto.svg", width: 50%),
caption: [Geschäftsobjekt Lieferantenkonto und dessen Zustände]
) <fig-GOLieferantenkonto>
=== Gründungsvorhaben
#todo-action([\@ jan/jakob: könnt ihr bitte dieses Objekt beschreiben?])
/*ich habe noch 2 Screenshots gemacht, als Jan das Kozept erklärte. sie sind in den Assets, GVH_1.png und GVH_2.png (bitte löschen, falls ihr diese nicht braucht */
- status:   0 - Initiiert / 1 · Orientiert  / 2 · Registriert  / 3 · Bewilligt / 4 · Finanziert / 5 - Realisiert 
#figure(
image("../assets/GOGruendungsvorhaben.svg", width: 50%),
caption: [Geschäftsobjekt Gründungsvorhaben und dessen Zustände]
) <fig-GOGruendungsvorhaben>

=== Reflektion
#stolperstein([
  Eine anfängliche Identifikation der Geschäftsobjekte führte die Gruppe zu einer umfangreicheren Liste. Physische Artefakte wie "Bewilligung", "Liefervertrag" oder "kantonales Formular" schienen uns vorerst sehr sinnvoll und notwendig. 
])
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
== Zweite Iteration: Identifikation des relevanten Verhaltens: Zustände und Geschäftstransaktionen
#fuehrung([

*Zustände:* Zu jedem Geschäftsobjekt werden seine Zustände identifiziert.

*Geschäftstransaktionen:* Entlang der Geschichte werden die Geschäftstransaktionen mit ihren Inputs und Output (Geschäftsobjekte) identifiziert. 
Sowohl bei Input und Output wird darauf geachtet, dass diese inklusive ihre Zustände (bzw. zugehörige Ereignisse) bezeichnet werden.
])

#design-entscheid([
Wir dokumentieren die Identifikation von Zuständen und Geschäftstransaktionen pro Szenario, um die Lesbarkeit zu erhalten.
Die entsprechenden Geschäftsprozesse sind ebenfalls modelliert, auch wenn sie später erklärt werden.
Die Szenarien sind in @sec-szenarien-customer-journey beschrieben und werden einzel aufbereitet. 
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

=== Amira gründet ihr Unternehmen

 #figure(
  image("../assets/GTZ Amira gründet ihr Unternehmen.svg", width: 80%),
  caption: [Archimate Modell der Customer Journey von Amira]
) <fig-customer-journey-view>

/* 
1. in Archi die View "GGTZ Amira gründet ihr Unternehmen" unter Views / Assets4Paper / Geschäftstransaktionen (Iteration 2) / öffnen 
2. View wie im Bild 3.9 - Seite 55 vom Skript von Spichiger aufbereiten oder wie ../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg
3. als svg ins projekt hier importieren
4. Beschreiben: 
  - Events 
  - Transaktionen
*/
=== Amira erhält die Bewilligung

/*Amira erhält eine Finanzierung*/

=== Amira erhält eine Finanzierung
#todo-action([\@ Adi Szenario/Beschreibung (mit Bild) einfügen])
/* 
1. in Archi die View "Amira erhält eine Finanzierung" unter Views / Assets4Paper / Geschäftstransaktionen (Iteration 2) / öffnen 
2. View wie im Bild 3.9 - Seite 55 vom Skript von Spichiger aufbereiten oder wie ../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg
3. als svg ins projekt hier importieren
4. Beschreiben: 
  - Events 
  - Transaktionen
*/

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







 #figure(
  image("../assets/GrpA_GP_GastroStart_Albrecht_Jakob.svg", width: 80%),
  caption: [Archimate Modell der Customer Journey von Amira]
) <fig-customer-journey-view>



=== Geschäftstransaktionen

#fuehrung([*Konkretes Vorgehen* 

In der Geschichte werden die Geschäftsobjekte identifiziert. Wenn man diese hat, stellt sich die Frage nach den Geschäftstransaktionen, die diese Geschäftsobjekte (als Output) verändern. Nächster Schritt ist die Identifikation der relevanten Geschäftsobjekte, die den Transaktionen als Input dienen. Diese Schritte wiederholt man, bis man keine neuen Geschäftsobjekte und -transaktionen mehr findet. @Spichiger2026GFbUA]) 





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