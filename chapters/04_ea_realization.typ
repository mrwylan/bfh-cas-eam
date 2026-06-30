// ── Chapter 4 : EA Realization  ───────────────────
#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action;
= die Realisierung 

#frage([1. struktur: 1 Schritt pro Übung, dann 4x die Phasen, jedes mal mit Screenshot?])

pro Ebene - nur da was geändert hat 
die Granularität ist: 
+ CJ 
+ RIM Version 1 
+ RIM VERSION 2
+ RSM 

Wir verlassen das Tagebuch-Aufbau - und gehen hin zu einem logischen, fliessender Text, dem GFbAU folgend. 


== Identifikation der Geschäftsobjekte

Diese Übung hat die Gruppe gezwungen, sich mit der Struktur von Amira's Customer Journey auseinanderzusetzen.
Dabei liessen sich Nomen wie "Gründung", "Finanzierung", "Kundenkonto" - diese wurden als Prototypen für mögliche Geschäftsobjekte festgehalten. 

#stolperstein([
  Eine anfängliche Identifikation der Geschäftsobjekt führte die Gruppe zu einer unfangreichere Liste. 
])


 #figure(
  image("../assets/Customer Journey View.svg", width: 80%),
  caption: [Archimate Modell der Customer Journey von Amira]
) <fig-customer-journey-view>

== Das Phasenmodell (Titel tbc)
ingeführten Fall bildet die Kollaborationsphase Amiras Journey über fünf vom GastroStart-Portal definierte Phasen ab.
Die Journey wurde gemeinsam mit Teilnehmenden aus vier Organisationen entwickelt – der Transgourmet Schweiz AG, FINNOFLEET Schweiz, der Bundeskanzlei und DV Bern –, die jeweils Domänen-Expertise aus ihrem institutionellen Kontext einbrachten.

Bei der Modellierung der Customer Journey haben wir bemerkt, dass Amira folgende Phase durchgegangen ist: 
- *Orientierung:* Amira findet die Webseite von Gastrostart und informiert sich über die angebotenen Diensten. 
- *Registrierung:* Amira meldet sich bei Gastrostart an, um von dessen Diensten zu profitieren. 
- *Unternehmensgründung:* Amira nutzt Gastrostart, um ihr Catering-Unternehmen zu gründen und anzumelden. 
- *Beantragung der Betriebsbewilligung:* Amira nutzt Gastrostart, um die Betriebsbewilligung für Unternehmen zu beantragen. 
- *Finanzierung:* über Gastrostart kann Amira einen Finanzierung für die ersten Anschaffungen für ihr Catering erhalten. 
- *Kunde bei Transgourmet:* über Gastrostart kann Amira ebenfalls ein Kundenkonto bei Transgourmet eröffen - und ihre erste Bestellung absetzen. 


Appunti: 
wir lassen die TAbelle CJ weg - dafür gibt es die Phasen
es sollen gewisse punkte im phasenmodell 

Brücke zu den Phasen 
- CJ basiert auf eine Theorie 
- die Persoa hat ihre Wahrnehmung 
  - orientierung 
  - Einstieg (Registrierung)
- die Phasen sind an Wahrnehmung und deren Veränderung der Emotionen der Persona geschnitten - entlang des Erfolg der Mission auf dem Portal 
- die Phasen sind auch schon in der Default-View grob sichtbar 


== test


#stolperstein[woher kommen die pahsen?!?]

Die Journey wurde über fünf Phasen strukturiert:

+ *Initiale Orientierung* — Amira entdeckt GastroStart, wählt ihren Kanton und ihren Betriebstyp und erhält eine massgeschneiderte Checkliste der Anforderungen.
+ *Registrierung* — sie authentifiziert sich per eID, erstellt ein Gründungsprofil und richtet ihr Konto auf der Plattform ein.
+ *Betriebsbewilligung* — GastroStart führt sie durch den kantonsspezifischen Bewilligungsprozess und koordiniert die Einreichung bei den zuständigen Behörden.
+ *Finanzierung* — das Portal verbindet sie mit Bankpartnern für die Bonitätsprüfung und die Eröffnung eines Geschäftskontos.
+ *Erster Vertrag* — Amira richtet ihr Lieferantenkonto bei Transgourmet ein und gibt ihre erste Bestellung auf.

Jede Phase wurde in einzelne Touchpoints zerlegt, die festhalten, was Amira tut, mit welchem System sie interagiert, in welchem emotionalen Zustand sie sich befindet und wo die aktuelle oder Ziel-Architektur Reibung oder Chancen erzeugt.
@fig-journey-map zeigt die konsolidierte Journey Map über alle fünf Phasen.

#figure(
  caption: [Customer Journey Map: Amira auf GastroStart],
  block(width: 100%, breakable: true)[
    #set text(size: 7.5pt)
    #table(
      columns: (2.3cm, 2.1cm, 2.3cm, 2.3cm, 1.2cm, 2.4cm, 2.4cm),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left, left, left, left, center, left, left),

      [*Phase*], [*Aktion*], [*Touchpoint*], [*Gedanke / Bedürfnis*], [*Emo.*], [*Pain Point*], [*Chance*],

      [*1. Initiale \ Orientierung*],
      [Sucht "Gastronomie gründen Schweiz"; wählt Kanton Bern, Betriebstyp Catering],
      [Suchmaschine → Landingpage; Kantonsauswahl],
      ["Deckt das speziell meinen Kanton ab?"],
      [↓ −1],
      [Anforderungen variieren je Kanton; keine digitale Differenzierung zwischen Kantonen],
      [Kantonsbewusstes Onboarding: dynamische Anforderungsliste je Kanton × Betriebstyp],

      [*2. Registrierung*],
      [Erstellt Konto per eID; füllt Gründungsprofil mit Kanton und Gemeinde aus],
      [eID-Login (Bundeskanzlei EIAM); Profil-Wizard (DV Bern)],
      ["Warum brauche ich eine eID? Ich habe noch keine."],
      [→ 0],
      [eID nicht flächendeckend verbreitet; kein Fallback für Nutzende ohne eID],
      [Progressive Identitätsprüfung; partielles Profil ohne eID zulassen],

      [*3. Betriebs- \ bewilligung*],
      [Arbeitet die Bewilligungs-Checkliste ab; reicht den kantonalen Antrag ein],
      [GastroStart-Wizard (DV Bern); Behörden-API (Bundeskanzlei); kantonale Behördensysteme],
      ["Welche Kantonsregeln gelten? Wie lange dauert das?"],
      [↓↓ −2],
      [Kantonale Systeme haben heterogene Digitalisierungsgrade; einige verlangen physische Einreichung. _Line of Failure:_ analoger kantonaler Prozess unterbricht die digitale Journey],
      [Integrierter kantonsspezifischer Bewilligungs-Guide; Status-Tracking; expliziter Fallback auf Papier, wo keine API verfügbar ist],

      [*4. Finanzierung*],
      [Wählt Bankpartner; Bonitätsprüfung läuft im Hintergrund; erhält IBAN],
      [Bankauswahl-UI; FINNOFLEET-Bonitäts-API; IBAN-Dashboard],
      ["Was, wenn ich abgelehnt werde? Erfahre ich, warum?"],
      [↓ −1],
      [Kreditentscheid ohne Begründung zurückgegeben; keine Verlinkung zu alternativen CH-Förderprogrammen],
      [Transparentes Scoring-Feedback; vorausgefüllte Vorlagen für CH-Förderprogramme],

      [*5. Erster \ Vertrag*],
      [Eröffnet Transgourmet-Konto über Portal; durchsucht Katalog; gibt erste Bestellung auf],
      [Transgourmet-Katalog-API; Bestell-Workflow (DV Bern); Bestellbestätigung],
      ["Sind die Neukundenkonditionen konkurrenzfähig?"],
      [↑↑ +2],
      [Neukunden-Preisgestaltung weniger günstig; Lieferantenvertrag verlangt allenfalls physische Unterschrift],
      [Ausgehandelte Onboarding-Konditionen für vom Portal vermittelte Gründende; digitale Vertragsunterzeichnung],
    )
  ]
) <fig-journey-map>

Die emotionale Kurve über die Journey hinweg offenbart zwei strukturell bedeutsame Punkte.
Phase 3 (Betriebsbewilligung) markiert mit −2 die tiefste Stimmung, getrieben nicht durch ein Versagen im Prozessdesign, sondern durch den heterogenen Digitalisierungsgrad der kantonalen Behördensysteme – eine architektonische Einschränkung ausserhalb der direkten Kontrolle der Plattform.
Phase 5 (Erster Vertrag) erreicht mit +2 den Höhepunkt, doch der Übergang vom digitalen Portal zu einem physischen Lieferantenvertrag stellt eine verbleibende analoge Lücke dar, die die Ziel-Architektur adressieren muss @stickdorn2011.




/*== Pain Points und Value Drivers <sec-pain-points>
Die Journey-Mapping-Übung legte strukturelle Engpässe offen, an denen sich die Kundenerfahrung aufgrund grundlegender Systemlimitierungen statt aufgrund von Fehlern im Prozessdesign verschlechtert.
Diese Unterscheidung ist architektonisch bedeutsam: Prozessfehler lassen sich durch Schulung und Governance beheben, während systembedingte Reibung eine bewusste architektonische Intervention erfordert @temkin2010.

*1. Regulatorische Fragmentierung (Phase 3, Stimmung −2)*

Administrative Anforderungen variieren je Kanton und sind über digitale Kanäle teilweise nicht zugänglich.
Von den 18 über die Journey identifizierten Business Objects (siehe @sec-business-objects) sind sechs hybrid und zwei bleiben vollständig analog – beide konzentriert in Phase 3.
Die Grundursache ist nicht fehlende Regulierung, sondern fehlende API: Kantonale Systeme reichen von vollständig digital (z.~B. Zürich, Basel-Stadt) bis ausschliesslich analog (z.~B. Wallis), ohne föderale Konsolidierungsschicht.
Das erzeugt eine _Line of Failure_ – einen Punkt, an dem die digitale Journey strukturell nicht ohne manuellen Eingriff fortgesetzt werden kann.

*2. Barriere der Identitätsprüfung (Phase 2, Stimmung 0)*

Die obligatorische eID-Anforderung setzt eine Infrastruktur voraus, die in der Schweiz noch nicht flächendeckend verbreitet ist.
Gründende ohne eID stossen bereits bei der ersten substanziellen Interaktion mit der Plattform auf eine Registrierungsbarriere.

*3. Intransparenz der Finanzierung (Phase 4, Stimmung −1)*

Amira hat keinen Einblick in die Logik des Credit Scorings und erhält keine umsetzbare Orientierung, falls die Prüfung ein ungünstiges Ergebnis liefert.
Die Capability-Lücke liegt nicht in der Prüfung selbst, sondern in der Erklärungsschnittstelle zwischen FINNOFLEETs Scoring-Modell und der GastroStart-User-Experience.

*4. Verbleibende analoge Touchpoints (Phase 5, Stimmungslücke)*

Der Lieferantenvertrag mit Transgourmet verlangt allenfalls eine physische Unterschrift und bricht die vollständig digitale Journey in ihrer letzten und ansonsten positivsten Phase.

#figure(
  caption: [Pain Points und architektonische Value Drivers],
  block(width: 100%)[
    #set text(size: 9pt)
    #table(
      columns: (3.2cm, 3.5cm, 1fr),
      inset: 7pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },

      [*Pain Point*], [*Value Driver*], [*Architektonische Antwort*],

      [Regulatorische Fragmentierung],
      [Konsolidierte, kantonsbewusste Bewilligungs-Guidance],
      [Regelmatrix Kanton × Betriebstyp, gepflegt von DV Bern; expliziter Fallback-Prozess für analoge Kantone],

      [Barriere der Identitätsprüfung],
      [Progressives Onboarding ohne harte eID-Abhängigkeit],
      [Gestufte Identitätsprüfung; eID bei der Registrierung optional, erst bei der Bewilligungseinreichung obligatorisch],

      [Intransparenz der Finanzierung],
      [Transparente, erklärbare Bonitätsprüfung],
      [UX-Schicht über der FINNOFLEET-API: Entscheidungs-Feedback in verständlicher Sprache; Links zu alternativen Förderungen],

      [Analoge Vertragslücke],
      [Vollständig digitales Lieferanten-Onboarding],
      [Digitale Vertragsunterzeichnung, integriert in den Transgourmet-Portal-Connector],
    )
  ]
) <tbl-value-drivers>
*/

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
