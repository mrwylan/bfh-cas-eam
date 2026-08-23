#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern,
)
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

#frage([which box do we keep.])

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

== Das Joint Venture GastroStart - Vorstellung des Unternehmens

GastroStart ist ein fiktives Portal, das Gründerinnen und Gründer im Gastgewerbe durch die zentralen Phasen der Betriebsgründung führt: von der ersten Orientierung über Registrierung, Unternehmensgründung und Betriebsbewilligung bis hin zur Finanzierung und zum ersten Lieferantenvertrag.

GastroStart erlaubt es seinen Kunden schweizweit, schnell und ohne langwierige Behördengänge zu einem startbereiten Gastronomieunternehmen zu kommen - ganz unabhängig vom Herkunftskanton.

Weitere Dienstleistungen, im Rahmen der Customer Journey nicht berührt, wären unter anderem Funktionen zur Unterstützung des operativen Betriebs eines Gastrounternehmens: Überwachung von Zahlungsfälligkeiten oder ein Einkaufsplanungsmodul. Darüber hinaus könnten über GastroStart auch Betriebsübergaben und -liquidationen unterstützt werden.

#design-entscheid[
Entsprechend der gewählten Customer Journey haben wir uns entschieden, nur das Onboarding von Neukunden abzubilden. Die Firmengründung steht im Fokus.
]

== Die Rollen der beteiligten Unternehmen im Joint Venture

#frage([wollen wir uns hier knapper halten? Wegen Spoilern von dem was nachher kommt.(se beiträge Transgourmet und öffentliche Verwaltung)])

=== DV Bern

Für das Produkt GastroStart liefert DV Bern Software und Infrastruktur für das Web-Portal, inklusive Implementierung der Regelmatrix, Profilmanagement und Schnittstellen für z. B. kantonale Dienste oder die Bonitätsprüfung via FINNOFLEET.
Das Portal wird im Folgenden auch als "Plattform" bezeichnet.
Das Produkt als Ganzes, inklusive aller fachlichen Aspekte, wird, wenn nicht explizit als GastroStart benannt, auch als "System" bezeichnet.

Für die fünf Phasen der Customer Journey: Orientierung, Registrierung, Bewilligung, Finanzierung, erster Einkauf - sind die einzelnen Beiträge seitens DV Bern wie folgt beschrieben.

==== Orientierung
Für diese Phase wird eine kantonale Regelmatrix benötigt.
Diese Matrix verknüpft alle Kantone mit den dort geltenden Regeln zur Gründung eines Gastronomiebetriebes.
Die GastroStart-Benutzer brauchen also eine Möglichkeit, den sie betreffenden Kanton auszuwählen und die für sie geltenden Regeln angezeigt zu bekommen.
Die Kantone brauchen eine Möglichkeit, Abweichungen in ihrem Regelwerk, die sich z. B. durch Gesetzesänderungen ergeben, im System zu ändern.

==== Registrierung
Die Registrierung erfordert, dass jeder Benutzer sich ein Profil im System erstellt, mit dem sie ihre Gründungsprozesse speichern, einsehen und verwalten können.
Das System muss sicherstellen, dass jeder Benutzer authentifiziert und autorisiert und jeder Gründungsprozess mit genau einem Benutzerprofil verknüpft wird.

==== Bewilligung
Die Bewilligung erfordert Möglichkeiten, den für die Betriebsgründung notwendigen Behörden alle benötigten Daten zur Verfügung stellen zu können.
Das beinhaltet das Anbinden externer APIs, wenn vorhanden, oder Darstellung und Verwaltung der entsprechenden Dokumente, sowie Übertragungs- und Speichermöglichkeiten für diese.
Zudem soll den Benutzern der Status der einzelnen Schritte angezeigt (z.B. offen, bearbeitet, eingereicht, bewilligt), sowie ein Benachrichtigungssystem für die Kommunikation der Beteiligten untereinander, sowie von Statusupdates implementiert werden.

==== Finanzierung
Die Finanzierung erfolgt in vielen Fällen kreditbasiert.
Dazu wird den Benutzern ein Interface zur Auswahl ihrer bevorzugten Bank angezeigt, sowie die Schnittstelle zur Bonitätsprüfung an FINNOFLEET implementiert.

==== Erster Einkauf
Voraussetzung für die Bestellung bei Transgourmet ist ein Kundenkonto, welches über das Portal angelegt werden kann.
Ebenfalls kann der Warenkatalog und die Bestellung über das Portal durchgeführt werden.
Die dafür notwendigen Schnittstellen stellt Transgourmet zur Verfügung.
Die Aufgabe von DV Bern wird es sein, diese in die Benutzerschnittstelle des Portals zu integrieren.

==== Zusammenfassung
DV Bern ist an der Implementierung jeder der fünf Phasen der Customer Journey: Orientierung, Registrierung, Bewilligung, Finanzierung, erster Einkauf - nicht nur massgeblich mitbeteiligt, sondern bildet das technische Fundament der Plattform und ihrer Integrationsmöglichkeiten über alle Phasen hinweg. Dabei nimmt das Unternehmen die Rolle einer Beraterin ein, welche die technischen Realisierungsmöglichkeiten der fachlichen Fragestellungen erarbeitet, die sich aus dem Joint Venture ergeben.
Wir betrachten im Folgenden das ressourcenunabhängige Modell für jede der fünf Phasen der Customer Journey individuell.

=== FINNOFLEET
FINNOFLEET bringt in das Joint Venture das ein, was es täglich tut: die *Finanzierung*.
Als Softwareunternehmen für die Kreditwertschöpfungskette ist FINNOFLEET im GastroStart-Verbund der *Finanzierungspartner* --- es verantwortet die Phase, in der aus Amiras Gründungsvorhaben ein finanzierbares Unternehmen wird.

Konkret stellt FINNOFLEET drei Bausteine bereit:

- *Bonitätsprüfung* --- die automatisierte Beurteilung der Kreditwürdigkeit auf Basis der von Amira erfassten Angaben (Scoring).
- *Kreditentscheid* --- die nachvollziehbare Zusage oder Absage einer Finanzierung, inklusive verständlicher Begründung.
- *Kontobereitstellung* --- die Eröffnung des Geschäftskontos und die Vergabe der IBAN als Grundlage für den späteren Zahlungsverkehr.

Diese Leistungen werden nicht als eigenständiges Portal, sondern als *API-Dienste* in die GastroStart-Journey eingebunden: GastroStart orchestriert die Kundenerfahrung, FINNOFLEET liefert die Finanzierungs-Capability im Hintergrund.

=== Transgourmet

Als letzter Player im Joint Venture bringt Transgourmet die *Lieferfähigkeit* ein. 
Als führender Schweizer Grosshändler für Gastronomie und Hotellerie ist Transgourmet der Partner, der Amira nach der Gründung ihres Unternehmens mit den notwendigen Lebensmitteln und Zutaten beliefert. 
Die Eröffnung eines Kundenkontos bei Transgourmet ist die letzte Phase der Customer Journey und steht am Übergang von der Gründungsphase in den operativen Betrieb. 

=== Öffentliche Verwaltung als stiller Partner
/* Verworfen: Öffentliche Verwaltung als Partei in der JV modellieren - und entsprechende Fiktionen aufstellen])*/
Die Berührungspunkte der Bundeskanzlei mit den Unternehmen der anderen Gruppenmitglieder wurden als nicht ausreichend bewertet. 
Grund dafür ist, dass die von der Bundeskanzlei vorangetriebenen Vorgaben und Standardisierungsbestrebungen für die Privatwirtschaft nicht anwendbar sind. 
 

#design-entscheid([
Aus Sicht von Amira und somit auch von GastroStart wird die öffentliche Verwaltung - ohne besondere Rücksicht auf die jeweilige Ebene - in ihrer Rolle als Interoperabilitätspartner abgebildet und behandelt.

Wie und unter welchen Voraussetzungen ein verbindliches Instrument diesen Rahmen beeinflussen würde, wird in der Analyse des Operating Models diskutiert - se. <sec-Verwaltung-GastroSTart-EARolle>
])



== Szenarien als Teilgeschichten aus der Customer Journey <sec-szenarien-customer-journey>
/*Übung vom 18.05.2026
Identifizieren Sie zwei bis drei Szenarien zu Ihrem Unternehmen, wenn möglich mit 
Bezug zur Customer Journey. (Skizze)
3. Darstellen der wesentlichsten Geschäftsobjekte und Geschäftsprozesse mit Bezug zu 
den Szenarien. (Skizze)
*/
=== Aus Phasen werden Szenarien


#fuehrung([Als Standardszenarien wird eine möglichst kleine Anzahl von Geschichten gewählt, die die darzustellende Funktionalität möglichst vollständig umfasst. Irrelevantes soll weggelassen werden, damit die Geschichten auch möglichst kurz bleiben. @Spichiger2026GFbUA, S. 70])

Wir haben bei der Modellierung der Customer Journey festgestellt, dass sich Amiras Weg nicht in starre Phasen einteilen lässt. Stattdessen verstehen wir ihn als eine Abfolge von Szenarien: narrative Ausschnitte aus einer Story Map, die eine Outside-In-Perspektive einnehmen. Den Schnitt zwischen den Szenarien haben wir entlang Amiras Wahrnehmung und der Veränderung ihrer Emotionen gelegt. Erfolg oder Misserfolg auf ihrer Reise durch das Portal entscheidet sich an diesen Schnittstellen.

In den folgenden Kapiteln gehen wir auf eine Auswahl dieser Szenarien ein, je eines pro Partei im Joint-Venture. Jedes Szenario ist in einzelne Touchpoints zerlegt: Sie halten fest, was Amira tut, mit welchem System sie interagiert, in welchem emotionalen Zustand sie sich befindet, und wo die aktuelle oder die Ziel-Architektur Reibung oder Chancen erzeugt.
In den nächsten Kapiteln wir auf einer Auswahl dieser Szenarien eingegangen - eines für jeder Partei am Joint-Venture.

=== Szenarien entlang der Customer Journey von GastroStart

 #figure(
  image("../assets/Customer Journey View.svg", width: 40%),
  caption: [Archimate Modell der Customer Journey von Amira und erste Iteration für die Identifikation der Geschäftsobjekte]
) <fig-customer-journey-view>

=== Amira orientiert sich <head-scenarios-orientation>

#autor-dvbern("Beitrag von Jan Sohnemann, DVBern", inhalt: [])

Unser Angebot soll sich insbesondere an jede GründerInnen richten, die noch keine Erfährung mit Unternehmensgründungen haben.
Und wir gehen davon aus, dass viele betroffene schon eine konkrete Idee dessen haben, was sie Anbieten möchten.
Unsere GründerInnen sollen sich auf eben diese Idee fokussieren können und sich nicht mit den Details einer Unternehmensgründung herumschlagen müssen.
Entsprechend gehen wir davon aus, dass sie bei ihrer initialen Recherche ihr Vorhaben mehr oder weniger Konkret beschreiben können.
Weniger konkret dagegen können sie die Details zur Umsetzung bennennen. 
Ihr Suchtext würde also wahrscheinlich die geplante Unternehmensart enthalten, zum Beispiel "Catering" oder "Familien-Café", anstelle von "Gastronomie".
Weniger wahrscheinlich ist, dass die, bei zur Betriebsbewilligung notwendigen Details bereits bekannt sind.
Zum Beispiel ist der Ort der Betriebsstätte auch auf nationaler Ebene sehr von Bedeutung, da es kantonale Unterschiede bei den Bewilligungsverfahren und der Regulierung gibt.
Das Ausarbeiten der Details des Gründungsvorhabens nennen wir "Orientierung".


Die folgende Tabelle beschreibt ein Szenario für die Orientierung als Teil unserer Customer Journey.
Der Eintritt in die Orientierungsphase ist eine *Aktion* der GründerInnen.
Über *Touchpoints* treten sie mit unserem Produkt in Verbindung.
Die *Aktion* wird ausgelöst durch einen *Gedanken* oder ein *Bedürfnis*.
Jede Phase kann die GründerInnen mit *Painpoints* konfrontieren, die auch zum Abbruch der Produktnutzung führen.
Und schliesslich bietet jede Phase *Chancen*, die die *Bedürnisse* befriedigen und zur Weiternutzung einladen.

#figure(
  caption: [Szenario "Amira orientiert sich"],
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
      [
        Amira started eine Web-Suche mit den Begiffen "Gründung", "Catering", "Schweiz", "Vorgehen".
        Ihre Suche führt sie schnell zur Landingpage von Gastrostart.
        Sie wird gebeten den Kanton für das Gründungsvorhaben aus einer Liste auszuwählen.
        Sie wählt aus und bestätigt die Eingabe.
      ],

      [Touchpoints],
      [Browser auf Mobile Device, Search Engine, Gastrostart],

      [Gedanke / Bedürfnis],
      [Unsicherheit: Amira weiss nicht, wie eine Unternehmensgründung funktionert und welche Voraussetzungen sie erfüllen muss, um ihr Geschäft zu betreiben.],

      [Pain Point],
      [ `-` ],

      [Chance],
      [Aussicht auf geführte und strukturierte Hilfestellung.],
    )
  ]
) <tbl-szenario-orientierung>


=== Amira registriert sich bei Gastrostart

#autor-dvbern("Beitrag von Jan Sohnemann, DVBern", inhalt: [])

Im Anschluss an die Orientierung sollte eine Registrierung erfolgen. 
Das Ziel der Registrierung ist es, das Gründungsvorhaben auf der Plattform mit einem Konto zu verknüpfen, so dass es gepeichert, den Erstellenden exklusiv zugänglich gemacht und zu einem späteren Zeitpunkt weitergeführt werden kann.
Dies ist ein notwendiges Übel, das alle Benutzenden hinnehmen müssen und die wenigsten verstehen vermutlich den Zweck und Nutzen dieses Vorgangs.
Die Gefahr eines Abbruchs der Produktnutzung stufen wir als hoch ein, es ist also wichtig den Benutzenden im Vorfeld zu vermitteln, dass eine Nutzung ohne Kundenkonto von hier an nicht mehr möglich ist und dass sie davon profitieren.
Wenn die Orientierungsphase erfolgreich war und das auslösende Bedürfnis befriedig wurde, ist die Chance gross, dass die Benutzenden hier fortfahren.

Die folgende Abbildung zeigt einen den Teil des Szenarios als Modell in Archimate, der die Registrierung auslöst.
An dieser Stelle des Entwicklungsprozesses war die Bedeutung der Phase "Orientierung" noch nicht ersichtlich.
Tatsächlich verbirgt sich dahinter ein komplexerer Prozess, den wir - nach der kurzen Einführung im letzten Kapitel - in späteren Kapiteln aufgreifen.

 #figure(
  image("../assets/cj_registrierung.svg", width: 70%),
  caption: [Archimate Szenario "Amira registriert sich"]
) <fig-customer-journey-registrierung>

Die folgende Tabelle kennen die Leser schon aus dem letzten Kapitel. Wir wiederholen den Aufbau an dieser Stelle und in den Folgenden Kapiteln nicht erneut und verweisen auf @head-scenarios-orientation.

#figure(
  caption: [Szenario "Amira Registriert sich"],
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
      [Amira wählt eine E-Mailadresse und ein Passwort als Zugangsdaten. Sie bestätigt ihre E-Mailadresse mit einem Code, den sie zuvor vom System erhalten hat. Als zweiten Faktor für die Authentifizierung wählt sie einen Authenticator, den sie bereits auf ihrem Smartphone für andere Applikationen verwendet.],

      [Touchpoints],
      [GastroStart],

      [Gedanke / Bedürfnis],
      [Dauerhaftes Speichern des aktuellen Fortschritts.],

      [Pain Point],
      [Unterbrechung des Beratungsprozesses, Medienbruch (E-Mail, Smartphone, Passwormanager)],

      [Chance],
      [Gründungsvorhaben und Fortschritt sind nun dauerhaft gespeichert und können exklusiv verwaltet werden.],
    )
  ]
) <tbl-szenario-registrierung>

=== Amira gründet ihr Unternehmen
 #figure(
  image("../assets/cj_gründung und bewilligung.svg", width: 70%),
  caption: [Archimate Szenario "Amira gründet ihr Unternehmen"]
) <fig-customer-journey-grüdndung-bewilligungg>


#figure(
  caption: [Szenario "Amira gründet ihr Unternehmen (Tabellenaufbau, siehe @head-scenarios-orientation")],
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
      [Wie viel kostet der Notar? Wie lange geht das?],

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


=== Amira erhält die Bewilligung

 #figure(
  image("../assets/cj_verträge.svg", width: 70%),
  caption: [Archimate Szenario "Amira erhält die Bewilligung"]
) <fig-cj-verträge>




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
      [Amira sammelt alle notwendigen Belege und Ausweise, welche für die Erteilung der Betriebsbewilligung vorausgesetzt sind.],

      [Touchpoints],
      [GastroStart, Verschiedene Behördenportale für Registerauszüge, Architektur- und Technikplanungsbüro, Vermieter],

      [Gedanke / Bedürfnis],
      [Welche Kantonsregeln gelten? Wie lange geht das? Bin beim richtigen Amt?],

      [Pain Point],
      [
        Mehrere Behörden auf kantonaler und kommunaler Ebene involviert, unklare, oft nicht digitalisierte Prozesse und Eindruck von Unsicherheit auf Kundenseite.
        #linebreak()
        _Line of Failure:_ analoger kantonaler Prozess unterbricht die digitale Journey
      ],

      [Chance],
      [Integrierte Anleitung für jeden Kanton; Status-Tracking; expliziter Fallback auf Papier, Unterstützung bei der Herstellung von Selbstdeklarationen.],
    )
  ]
) <tbl-szenario-unternhemen-gründen>

=== Amira erhält eine Finanzierung

 #figure(
  image("../assets/cj_verträge.svg", width: 70%),
  caption: [Archimate Szenario "Amira erhält die Finanzierung"]
) <fig-cj-verträge>


#figure(
  caption: [Szenario "Amira erhält eine Finanzierung" (Tabellenaufbau, siehe @head-scenarios-orientation")],
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
      [Amira wählt einen Bankpartner, erfasst ihr Finanzierungsgesuch und lädt die Unterlagen hoch; im Hintergrund läuft die Bonitätsprüfung, anschliessend erhält sie den Kreditentscheid und ihre IBAN.],

      [Touchpoints],
      [GastroStart (Bankauswahl-UI), FINNOFLEET-Bonitäts-API, IBAN-Dashboard],

      [Gedanke / Bedürfnis],
      [«Was, wenn ich abgelehnt werde? Erfahre ich, warum?»],

      [Pain Point],
      [
        Der Kreditentscheid wird ohne Begründung zurückgegeben, und es fehlt eine Verlinkung zu alternativen Schweizer Förderprogrammen.
        #linebreak()
        _Line of Failure:_ intransparente Absage ohne Anschlussoption beendet die Journey
      ],

      [Chance],
      [Transparentes Scoring-Feedback in verständlicher Sprache sowie vorausgefüllte Vorlagen für Schweizer Förderprogramme.],
    )
  ]
) <tbl-szenario-finanzierung>

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

 #figure(
  image("../assets/cj_verträge.svg", width: 70%),
  caption: [Archimate Szenario "Amira wird Kunde bei Transgourmet"]
) <fig-cj-verträge>


#todo-action([\@ Jakob: Szenario/Beschreibung - bitte mit Tabelle wie bei Finanzierung])
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

#todo-action([\@ Jakob: bitte Tabelle an @sec-amira-und-ihre-geschichte löschen? ODER behalten?])

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
 
#todo-action([Jakob: möchtest du dieses Abschnitt behalten? ])
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
