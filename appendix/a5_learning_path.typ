// ── Chapter 6 & 7: Methodological Reflection and Conclusion ─────────────────
#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern, mit-lead
)

= Methodische Reflexion und der individuelle Lernpfad

#autor-transgourmet("Beitrag von Jakob Albrecht", inhalt: [Reflexion über die Anwendung der EAM-Frameworks im Projekt GastroStart, Lernprozess und Perspektive für die Tätigkeit bei Transgourmet],)

== Beurteilung der EAM-Frameworks

Die TOGAF ADM @opengroup2018togaf hätte für die frühen Projektphasen strukturelle Klarheit, für das Projekt Setup, die Architecture Vision und Business Architecture geliefert.
Die Theorie dazu kam im Unterricht leider zu spät, so dass wir in der Gruppe das Setup nicht entlang der ADM-Phasen formalisiert haben.

Der Starke Fokus auf die RIM Methodik @Spichiger2026GFbUA hat in Bezug auf die Geschäftsfähigkeiten und die Customer Journey zu einer klaren, nachvollziehbaren Modellierung geführt.
Die Einbettung in die TOGAF ADM kam dadurch zu kurz, die ADM-Phasen wurden nicht formal durchlaufen, sondern die Modellierung wurde entlang der RIM Methodik durchgeführt.

Der komplexen und fiktiven Journey- war es dann auch geschuldet, dass bei der Umsetzung auf die Ressourcen spezifische Applikationslandschaft die Gruppenarbeit ins Stocken geraten ist.
In einer realeren Situation, gehe ich davon aus, dass aufgrund der vorhandenen Applikationslandschaft die Modellierung und Umsetzung schneller vorangetrieben werden kann.

== Dynamiken kollaborativer Architektur

Im Team Setting erlebten wir, dass die Architekturarbeit nicht nur eine technische, sondern auch eine soziale Dimension hat. 
Nicht jeder hatte zu jedem Zeitpunkt die gleiche Sicht auf die Architektur, den selben Stand im Unterrichtsstoff, oder die gleiche Erfahrung mit den eingesetzten Frameworks.
Das schaffen von Konsens, iterativ, in Abstimmungsmeetings, war ein zentraler Bestandteil der Arbeit.
Die Suche nach dem geeigneten Glossar, die Definition von Begriffen, die Auswahl der richtigen Modellierungstiefe, Abgrenzungen und das Abwägen von Kompromissen zwischen den Teammitgliedern waren entscheidend für die Qualität der Architekturarbeit.
Die Gruppe erreichte Konsens durch Diskussion, Argumentation, Abstimmung und Kompromissfindung.
Das Arbeiten an der gemeinsamen Wissensbasis war entscheidend, um die Architekturarbeit voranzutreiben.

== Individueller Kompetenzwandel

Vor dem CAS EAM war meine Erfahrungsbasis auf Architekturarbeit in der Softwareentwicklung begrenzt.
Technische Qualität – Performance, Skalierbarkeit, Wartbarkeit – sind bestimmende Bewertungskriterium, die ich als Architekt bisher anwandte, um die Qualität von Softwarelösungen zu beurteilen.
Die Arbeit im CAS hat mir gezeigt, dass die Bewertung von Architektur aus der Perspektive von Business Value und Lebenszykluskosten mindestens genauso wichtig ist, um so die Langlebigkeit und den Erfolg von Softwarelösungen auch in einem wirtschaftlichen Kontext zu sichern.
Die Outside-In-Mapping-Übung machte das konkret: Das architektonische Problem als Customer-Journey-Problem zu rahmen, zwang mich, Lösungsaspekte zu modellieren, die nicht-technische Stakeholder beurteilen und hinterfragen können. 

Weiter hat sich mein Umgang mit technischen Schulden weiterentwickelt.
Früher behandelte ich diese als Folge von Lieferdruck und Rahmenbedingungen als notwendige Kompromisse.
Das CAS rahmte technischen Schulden neu als strategische Variable mit expliziten künftigen Kostenfolgen, die im Reporting auf Führungsebene sichtbar gemacht werden können und sollten @fowler2018 @zachman1987.

== Zusammenfassung der Erkenntnisse

Diese Gruppenarbeit hat einen vollständigen Bogen von Outside-In zum Inside-Out einer Applikationslandschaft geschlagen.
Eine Customer Journey wurde auf Business Capabilities abgebildet, die Capabilities wurden zur Application-Landschaft zurückverfolgt.
Reibungszonen wurden früh identifiziert und bestimmen die Ziel-Architektur, lieferten Chancen und Risiken sowie Ausganspunkte für mögliche Migrationspfade.

Die zentralen Erkenntnisse sind:

+ Über die Geschäftsfähigkeiten schaffen wir eine gemeinsame Sprache zwischen Business und IT
+ Der Outside-In Rahmen, ausgehend von Customer Journey und Szenarien, zwingt uns, die Architektur aus der Perspektive des Kunden zu betrachten und die Wertschöpfung in den Vordergrund zu stellen.

== Ausblick

Die im CAS entwickelten Praktiken werde ich wie folgt in meine Arbeitsweise einbinden:

+ Vorhaben werde ich mit den Geschäftsfähigkeiten von Transgourmet in Verbindung bringen, um die Wertschöpfung zu fokussieren und die Architekturarbeit auf die Bedürfnisse der Kunden und Anwender auszurichten.
+ Die RIM Methodik werde ich in der Architekturarbeit einsetzen, um eine erste Distanz zu bereits gemachten technischen Lösungen zu schaffen und so die Basis für eine offenere Diskussion von Architekturentscheidungen zu legen.
+ Zielgruppenorientierte Architekturarbeit, Perspektivenwechsel und isolierte Modellierung von Szenarien in der jeweiligen Tiefe, die den Stakeholdern entspricht, wird meine Qualität der Architekturarbeit verbessern und die Akzeptanz der resultierenden Architekturentscheidungen erhöhen.

= Beispiel der EA-Integration bei DV Bern im Produkt kiBon<ext-ea-kibon>

#autor-dvbern([Beitrag von Jan Sohnemann])

kiBon ist eine digitale Verwaltungsplattform für Betreuungsgutscheine.
Das Projekt wurde ursprünglich mit der Stadt Bern initiiert, inzwischen wurde das System aber im ganzen Kanton ausgerollt und wird massgeblich vom Kanton Bern finanziert.
Mittlerweise sind auch andere Kontone und Gemeinden ausserhalb des Kantons Bern Nutzter und Financiers der Plattform.
Familien können über die Plattform Gesuche zur Rückerstattung der Betreuungskonsten ihrer Kinder erstellen.
Man trägt Alter, Betreuungsform, -platz und Dauer jedes Kindes in einem Webformular ein.
Elter erfassen auch ihre Familien- und finanzielle Situation.
Die betreuuende Organisation bestätigt den Platz und die Kosten der Betreuung pro Kind.
Das System berechnet dann die Höhe der Rückerstattung.
Mitarbeiter der Gemeinde prüfen anschliessend den Antrag, können weitere Dokumente einfodern und Gesuche verfügen oder Ablehnen.
Nach der Verfügung haben die Eltern einen Rechtsanspruch auf die Rückerstattungen.
Diese werden von den Gemeinden und vereinzelt auch von den Kantonen übernommen oder bezuschusst.

Der Technologiestack des Produktes wurde aus einem Katalog ausgewählt, der vom Achtiekturboard von DV Bern verwaltet wird.
Zusammen mit einem Architekten aus diesem Board wurde die Architektur mit dem Entwicklerteam erarbeitet.
Dabei wurde auf Best-Practices aus bereits existierenden, ähnlichen Produkten zurückgegriffen.
Als Vorgehensmodell für die Produktentwicklung wurde Scrum gewählt.
Dies ist ebenfalls Standard für alle Produktentwicklungen bei DV Bern.
Der Betrieb der Anwendung erfolgt bei der Bedag AG, was der, vom Kanton Bern vorgegebene Standard für die meisten Systeme dieser Grössenordnung ist.
Das System wird regelässigen Audits unterzogen, um Sicherheitsanforderungen sicherzustellen.
Diese Audits werden vom einem unabhängigen Gremium durchgeführt.
Unabhängig bedeutet: Nicht in die Produktentwicklung involviert.
Der Source-Code des Produktes muss zudem öffentlich und freu zugänglich sein.
Auf Feedback Dritter, inbesondere wenn es sich um sicherheitskritische Anmerkungen handelt, muss eingegangen werden.

kiBon bietet und verwendet viele Schnittstellen zu internen und externen Systemen.
Die zwei wichtigsten Schnittstellen betreffen das Identity Access Management via AGOV und den Steuerdatenabruf via Nesko.
Schnittstellen nach Aussen betreffen in erster Linie die Betreuungsplatzbestätigungen durch die Institutionen.
Die Verwendung der vom System dafür bereitgestellten Weboberfläche ist optional.
Insbesondere grössere Institutionen bevorzugen eine Integration ihrer eigenen Systeme.
Alle nach aussen gerichteten Schnittstellen in kiBon folgen dem REST Paradigma.

Das Projekt kiBon existiert seit mehr als 10 Jahren und hat zwischenzeitlich enorme Wachtumsschübe erfahren, welche die ursprünglich geplante Architektur an ihre Grenzen bringt.
Die grössten Herausforderungen liegen aktuell bei der Skalierbarkeit und dem Legacy-Management.