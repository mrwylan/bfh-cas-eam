#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung
// ── 02_customer_journey.typ — Chapter 3: Collaboration Phase: Outside-In Mapping ──

//= Die Kollaborationsphase: Outside-In-Mapping

= Die Reise beginnt: die Customer Journey
/*Customer Journey und Persona - Fester Stand in Outside-In-Fokus 
In diesem Kapitel wird die Customer Journey erklärt - und wie wir daraus ein Phasenmodell skizziert haben, welches am Kundenerlebnis entlang entstanden ist.*/
#fuehrung([Eine Geschichte in Form einer User Story Map oder einer  Customer Journey erklärt allen Beteiligten, welches Verhalten vom zukünftigen System erwartet wird. Die Geschichte wird um Ziele aus Sicht der primären, externen Stakeholder des Unternehmens ergänzt. @Spichiger2026GFbUA, S. 54]) 

== Amira und ihre Geschichte <sec-amira-und-ihre-geschichte>

Amira, eine 34-jährige Quereinsteigerin, will ein Catering-Unternehmen gründen. 
Sie hat schon ein Konzept dafür. 
Sie hat keine Erfahrung, will nichts falsch machen und braucht Orientierung. 
Sie googelt "_catering aufmachen schweiz_", da sie sich eine Schritt für Schritt Anleitung wünscht.
Sie möchte durch den Prozess der Unternehmensgründung geführt werden. 
Bei der Suche erfährt sie, dass die Punkte Bewilligungen, Finanzierung, Ressourcenplanung und Beschaffung besonders wichtig sind. 
Sie landet bei *“GastroStart”* und erfährt in der kurzen Einführung auf der Startseite, dass dieses Portal sie bei all dem unterstützen kann. 
Sie ist erleichtert und registriert sich. 

#design-entscheid([Andere Customer Journey Ideen, wie wir analysiert und verworfen haben: 
- B2B: Onboarding eines bestehenden Business-Kunden bei Transgourmet
- EatSwiss: Digitale Herkunftsplattform für Gastronomie
- PublicPlate: Digitale Beschaffungsplattform für Gemeinschaftsverpflegung
- B2Startup: Marktpotential-Check vor der Unternehmensgründung für ein Gastro-Startup
])

#design-entscheid([Kriterien die für die Wahl von *GastroStart* als Customer Journey ausschlaggebend waren:
- Die Geschichte von Amira ist nachvollziehbar und realistisch.
- Die Customer Journey ist in sich konsistent und kann in Szenarien abgebildet werden.
- Alle Unternehmen im Joint Venture können in der Customer Journey eine Rolle spielen und ihre Dienstleistungen einbringen.
- Die Komplexität ist überschaubar und kann im Rahmen der Arbeit modelliert werden.
])

=== Die Persona Amira als Anker der Outside-in-Perspektive
In enger Verbindung mit der Customer Journey #ref(<sec-amira-und-ihre-geschichte>, supplement: none) wird die Persona „Amira“ erarbeitet. Sie dient dazu, unsere Endkundin konkret greifbar und emotional verankert zu machen. Die Bedürfnisse und Kontexte von Amira bilden den zentralen Ausgangspunkt für die Modellierung des Produkts "GastroStart".

#figure(
  caption: [Persona-Profil: Amira],
  block(
    width: 100%,
    stroke: 0.5pt,
    radius: 4pt,
    clip: true,
  )[
    #block(
  width: 100%,
  fill: luma(60),
  inset: (x: 1em, y: 0.6em),
  below: 0pt,
)[
  #text(fill: white, weight: "bold", size: 1.05em)[Persona: Amira]
]
#set par(justify: false)
    #table(
      columns: (3cm, 1fr),
      align: left,
      stroke: (top: none, x: none, y: 0.5pt + luma(200)),
      inset: (x: 1em, y: 0.55em),
      [*Rolle*],         [Angehende Gründerin, Catering-Branche],
      [*Kontext*],       [Kein Branchenhintergrund; grobes Geschäftskonzept vorhanden],
      [*Ziele*],         [Ein rechtskonformes Catering-Unternehmen gründen; nichts Wesentliches verpassen],
      [*Frustrationen*], [Intransparente Verwaltungsprozesse; Angst vor kostspieligen Fehlern; kein berufliches Netzwerk],
      [*Bedürfnis*],     [Schritt-für-Schritt-Begleitung über Registrierung, Bewilligungen, Finanzierung und Beschaffung – alles an einem Ort],
    )
  ]
) <persona-amira>

== Das Joint Venture Gastrostart - Vorstellung des Unternehmens

GastroStart ist ein fiktives Portal, das Gründerinnen und Gründer im Gastgewerbe durch die zentralen Phasen der Betriebsgründung führt: von der ersten Orientierung über Registrierung, Unternehmensgründung und Betriebsbewilligung bis hin zur Finanzierung und zum ersten Lieferantenvertrag.

GastroStart erlaubt es seinen Kunden schweizweit, schnell und ohne langwierige Behördengänge zu einem startbereiten Gastronomieunternehmen zu kommen - ganz unabhängig vom Herkunftskanton.

Weitere Dienstleistungen, im Rahmen der Customer Journey nicht berührt, wären unter anderem Funktionen zur Unterstützung des operativen Betriebs eines Gastrounternehmens: Überwachung von Zahlungsfälligkeiten oder ein Einkaufsplanungsmodul. Darüber hinaus könnten über Gastrostart auch Betriebsübergaben und -liquidationen unterstützt werden.

#design-entscheid[
Entsprechend der gewählten Customer Journey haben wir uns entschieden, nur das Onboarding von Neukunden abzubilden. Die Firmengründung steht im Fokus.
]

== Die Rollen der beteiligten Unternehmen im Joint Venture

#todo-action([Verschieben - anch der Customer Journey (vor 3.3.)])

=== DV Bern
#todo-action([Jan: Rolle DV Bern im Joint Venture beschreiben - kurz und knackig])

=== FINNOFLEET
FINNOFLEET bringt in das Joint Venture das ein, was es täglich tut: die *Finanzierung*.
Als Softwareunternehmen für die Kreditwertschöpfungskette ist FINNOFLEET im GastroStart-Verbund der *Finanzierungspartner* --- es verantwortet die Phase, in der aus Amiras Gründungsvorhaben ein finanzierbares Unternehmen wird.

Konkret stellt FINNOFLEET drei Bausteine bereit:

- *Bonitätsprüfung* --- die automatisierte Beurteilung der Kreditwürdigkeit auf Basis der von Amira erfassten Angaben (Scoring).
- *Kreditentscheid* --- die nachvollziehbare Zusage oder Absage einer Finanzierung, inklusive verständlicher Begründung.
- *Kontobereitstellung* --- die Eröffnung des Geschäftskontos und die Vergabe der IBAN als Grundlage für den späteren Zahlungsverkehr.

Diese Leistungen werden nicht als eigenständiges Portal, sondern als *API-Dienste* in die GastroStart-Journey eingebunden: GastroStart orchestriert die Kundenerfahrung, FINNOFLEET liefert die Finanzierungs-Capability im Hintergrund.

=== Öffentliche Verwaltung als stiller Partner
/* Verworfen: Öffentliche Verwaltung als Partei in der JV modellieren - und entsprechende Fiktionen aufstellen])*/
Die Berührungspunkte der Bundeskanzlei mit den Unternehmen der anderen Gruppenmitglieder wurden als nicht ausreichend bewertet. 
Grund dafür ist, dass die von der Bundeskanzlei vorangetriebenen Vorgaben und Standardisierungsbestrebungen für die Privatwirtschaft nicht anwendbar sind. 
 

#design-entscheid([
Aus Sicht von Amira und somit auch von Gastrostart wird die öffentliche Verwaltung - ohne besondere Rücksicht auf die jeweilige Ebene - in ihrer Rolle als Interoperabilitätspartner abgebildet und behandelt.

Wie und unter welchen Voraussetzungen ein verbindliches Instrument diesen Rahmen beeinflussen würde, wird in der Analyse des Operating Models diskutiert - se. Kapitel ...
])

=== Transgourmet

Als letzter Player im Joint Venture bringt Transgourmet die *Lieferfähigkeit* ein. 
Als führender Schweizer Grosshändler für Gastronomie und Hotellerie ist Transgourmet der Partner, der Amira nach der Gründung ihres Unternehmens mit den notwendigen Lebensmitteln und Zutaten beliefert. 
Die Eröffnung eines Kundenkontos bei Transgourmet ist die letzte Phase der Customer Journey und steht am Übergang von der Gründungsphase in den operativen Betrieb. 

== Szenarien als Teilgeschichten aus der Customer Journey <sec-szenarien-customer-journey>
/*Übung vom 18.05.2026
Identifizieren Sie zwei bis drei Szenarien zu Ihrem Unternehmen, wenn möglich mit 
Bezug zur Customer Journey. (Skizze)
3. Darstellen der wesentlichsten Geschäftsobjekte und Geschäftsprozesse mit Bezug zu 
den Szenarien. (Skizze)
*/
=== Aus Phasen werden Szenarien

#todo-action([\@Giovanna / alle:  Ich hätte hier gerne das Gesamtbild mit der Customer Journey. Anstelle von einem Bild pro Phase.])

#fuehrung([Als Standardszenarien wird eine möglichst kleine Anzahl von Geschichten gewählt, die die darzustellende Funktionalität möglichst vollständig umfasst. Irrelevantes soll weggelassen werden, damit die Geschichten auch möglichst kurz bleiben. @Spichiger2026GFbUA, S. 70])

Wir haben bei der Modellierung der Customer Journey festgestellt, dass sich Amiras Weg nicht in starre Phasen einteilen lässt. Stattdessen verstehen wir ihn als eine Abfolge von Szenarien: narrative Ausschnitte aus einer Story Map, die eine Outside-In-Perspektive einnehmen. Den Schnitt zwischen den Szenarien haben wir entlang Amiras Wahrnehmung und der Veränderung ihrer Emotionen gelegt. Erfolg oder Misserfolg auf ihrer Reise durch das Portal entscheidet sich an diesen Schnittstellen.

In den folgenden Kapiteln gehen wir auf eine Auswahl dieser Szenarien ein, je eines pro Partei im Joint-Venture. Jedes Szenario ist in einzelne Touchpoints zerlegt: Sie halten fest, was Amira tut, mit welchem System sie interagiert, in welchem emotionalen Zustand sie sich befindet, und wo die aktuelle oder die Ziel-Architektur Reibung oder Chancen erzeugt.
In den nächsten Kapiteln wir auf einer Auswahl dieser Szenarien eingegangen - eines für jeder Partei am Joint-Venture.

=== Szenarien entlang der Customer Journey von GastroStart

- *Initiale Orientierung:* Amira findet die Webseite von Gastrostart und informiert sich über die angebotenen Dienste. 
- *Registrierung:* Amira meldet sich bei Gastrostart an, um von dessen Diensten zu profitieren. 
- *Unternehmensgründung:* Amira nutzt Gastrostart, um ihr Catering-Unternehmen zu gründen und anzumelden. 
- *Beantragung der Betriebsbewilligung:* Amira nutzt Gastrostart, um die Betriebsbewilligung für Unternehmen zu beantragen. 
- *Finanzierung:* über Gastrostart kann Amira eine Finanzierung für die ersten Anschaffungen für ihr Catering erhalten. 
- *Kunde bei Transgourmet:* über Gastrostart kann Amira ebenfalls ein Kundenkonto bei Transgourmet eröffnen - und ihre erste Bestellung absetzen. Der Übergang von der Firmengründung in den operativen Betrieb ist gelungen. 

#design-entscheid([Die Gruppe hat diese Szenarien Input für die Erarbeitung der Iterationen für die Modellierung von GastroStart gewählt.])

 #figure(
  image("../assets/Customer Journey View.svg", width: 40%),
  caption: [Archimate Modell der Customer Journey von Amira und erste Iteration für die Identifikation der Geschäftsobjekte]
) <fig-customer-journey-view>

=== Amira orientiert sich (oder registriert sich bei GastroStart)

#todo-action([\@ Jan Szenario/Beschreibung (mit oder ohne Bild) einfügen oder alternativ das Szenario der Registrierung. Aus der Tabelle unten übernehmen])
/*
Struktur:
+ *Aktion:* 
+ *Touchpoint:* 
+ *Gedanke/Bedürfnis:*
// ^+ *Emotion:*
+ *Pain Point:*
+ *Chance:*
*/
=== Amira gründet ihr Unternehmen
+ *Aktion:* Amira erfasst die Angaben für ihr Unternehmen und liefert die notwendigen Beilagen. 
+ *Touchpoints:* GastroStart, Notar, Behörden-API, Systeme der kantonalen Verwaltungsbehörde, Portal "EasyGov"
+ *Gedanke/Bedürfnis:* Welche Kantonsregeln gelten? Wie lange geht das?
// ^+ *Emotion:*
+ *Pain Point:* Kantonale Systeme haben heterogene Digitalisierungsgrade; einige verlangen physische Einreichung. _Line of Failure:_ analoger kantonaler Prozess unterbricht die digitale Journey
+ *Chance:* Integrierte Anleitung für jeden Kanton; Status-Tracking; expliziter Fallback auf Papier, wo keine API verfügbar ist.

#frage([variante mit tabelle oder text? ])
#figure(
  caption: [Szenario "Amira gründet ihr Unternehmen"],
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

      [Aktion],
      [Amira erfasst die Angaben für ihr Unternehmen und liefert die notwendigen Beilagen.],

      [Touchpoints],
      [GastroStart, Notar, Behörden-API, Systeme der kantonalen Verwaltungsbehörde, Portal «EasyGov»],

      [Gedanke / Bedürfnis],
      [Welche Kantonsregeln gelten? Wie lange geht das?],

      [Pain Point],
      [
        Kantonale Systeme haben heterogene Digitalisierungsgrade; einige verlangen physische Einreichung.
        #linebreak()
        _Line of Failure:_ analoger kantonaler Prozess unterbricht die digitale Journey
      ],

      [Chance],
      [Integrierte Anleitung für jeden Kanton; Status-Tracking; expliziter Fallback auf Papier, wo keine API verfügbar ist.],
    )
  ]
) <tbl-szenario-unternhemen-gründen>



=== Amira erhält eine Finanzierung
+ *Aktion:* Amira wählt einen Bankpartner, erfasst ihr Finanzierungsgesuch und lädt die Unterlagen hoch; im Hintergrund läuft die Bonitätsprüfung, anschliessend erhält sie den Kreditentscheid und ihre IBAN.
+ *Touchpoints:* GastroStart (Bankauswahl-UI), FINNOFLEET-Bonitäts-API, IBAN-Dashboard.
+ *Gedanke/Bedürfnis:* «Was, wenn ich abgelehnt werde? Erfahre ich, warum?»
// ^+ *Emotion:* ↓ −1
+ *Pain Point:* Der Kreditentscheid wird ohne Begründung zurückgegeben, und es fehlt eine Verlinkung zu alternativen Schweizer Förderprogrammen.
+ *Chance:* Transparentes Scoring-Feedback in verständlicher Sprache sowie vorausgefüllte Vorlagen für Schweizer Förderprogramme.

// TODO Adi (Bild): Für dieses Szenario wird eine kompakte Customer-Journey-Grafik
// benötigt (analog zu assets/SZ_Unternehmensgruendung.svg) — NICHT die
// Geschäftstransaktionen-Grafik aus Kapitel 4. Die Szenario-View "Amira erhält
// eine Finanzierung" im Archi-Modell ist noch leer und muss aufgebaut werden.
// Danach als assets/SZ_Finanzierung.svg exportieren und untenstehendes #figure
// einkommentieren:
// #figure(
//   image("../assets/SZ_Finanzierung.svg", width: 80%),
//   caption: [Archimate Modell der Customer Journey von Amira]
// ) <fig-szenario-finanzierung-cj>

=== Amira wird Kunde bei Transgourmet
#todo-action([\@ Jakob Szenario/Beschreibung (mit oder ohne Bild) einfügen])
/*
Struktur:
+ *Aktion:* 
+ *Touchpoint:* 
+ *Gedanke/Bedürfnis:*
// ^+ *Emotion:*
+ *Pain Point:*
+ *Chance:*
*/


@fig-journey-map zeigt die konsolidierte Journey Map über alle fünf Phasen.

#todo-action([\@ Jakob: bitte Tabelle an @sec-amira-und-ihre-geschichte löschen (ich habe nicht den Herz dazu)])

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
 
#frage([Jakob: möchtest du dieses Abschnitt behalten? ])
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