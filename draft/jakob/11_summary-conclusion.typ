= Methodische Reflexion und der individuelle Lernpfad

#block(
  width: 100%,
  inset: (x: 1em, y: 0.8em),
  radius: 4pt,
  fill: luma(245)
)[
  *Jakob Albrecht, Teamleiter Applikationsentwicklung, Transgourmet Schweiz AG*
  \
  In diesem Kapitel reflektiere ich die methodische Arbeit im CAS Enterprise Architecture Management und dokumentiere, welche Kompetenzen ich dadurch erworben habe.
]

== Beurteilung der EAM-Frameworks
Die TOGAF ADM lieferte in den frühen Projektphasen strukturelle Klarheit, insbesondere in Phase A (Architecture Vision) und Phase B (Business Architecture).
Ihr Wert war am höchsten, wenn das Team ein gemeinsames Vokabular brauchte, um Scope-Grenzen mit Stakeholdern auszuhandeln, die keine vorgängige Architektur-Erfahrung hatten.

Allerdings erzeugte das Phase-Gate-Modell der ADM Reibung in einem kollaborativen Setting, in dem das Team gleichzeitig Anforderungen entdeckte und Lösungen entwarf.
Die strikte Sequenzierung erschwerte die iterativen Verfeinerungszyklen, zu denen die Gruppe von Natur aus neigte.
_[Expand: Where specifically did the formalism help? Where did it introduce modeling overhead that the team had to work around?]_

ArchiMate 3.1 lieferte Präzision in der schichtenübergreifenden Nachvollziehbarkeit – die Verknüpfung von Motivationselementen mit der Business- und Application-Schicht in einer einzigen kohärenten Sicht.
Die Herausforderung war die steile Lernkurve für Teammitglieder mit Projektmanagement- statt Architektur-Hintergrund.
Mehrere Notationsentscheidungen (z.~B. die Unterscheidung zwischen `ApplicationFunction` und `ApplicationService`) waren nicht intuitiv und erforderten in gemeinsamen Modellierungssitzungen wiederholte Klärung.
_[Expand: Which ArchiMate viewpoints were genuinely useful? Which were abandoned in practice?]_

== Dynamiken kollaborativer Architektur
Architektonische Entscheidungen in einem Team-Setting sind nicht rein technisch: Sie sind soziale Verhandlungen, speziell in unserem Lerngruppensetting @bass2012.
Die schwierigsten Entscheidungen in diesem Projekt waren keine Technologieentscheidungen, sondern Scope-Grenzen: Was gehört zur Journey, was nicht, welche Services können wir erbringen und werden Teil vom Produkt, wie benennen wir die Business Objekte und wer wird zum jeweiligen Owner?

In der Gruppe erreichten wir immer einen Konsens in der Diskussion, aber wir folgten keinem formalisierten Konsensmechanismus. Gemeinsam lernten wir aus den Entscheidungen, die wir trafen, mussten sie auch wiederholt revidieren, wenn sich die Sicht auf die Customer Journey änderte.
_[Expand: Give a concrete example of a decision where group dynamics shaped the architectural outcome. What would the individually optimal decision have been, and why did the group converge elsewhere?]_

== Individueller Kompetenzwandel
Zu Beginn des CAS war mein primärer Rahmen für architektonische Arbeit auf die technischen Aspekte beschränkt. Unter dem Aspekt von Software Qualität definierte ich Software Architektur in unterschiedlichen Kontexten. Im Bereich der Plattform Architektur beschrieb ich eine technologische Roadmap für den nachhaltigen Betrieb einer zuverlässigen Infrastruktur, ohne explizit formulierte Enterprise Architektur. 

Der bedeutsamste Kompetenzwandel während des Programms war, Architektur aus der Perspektive von Geschäftsfähigkeiten und Business Value zu beurteilen, bevor ich mich mit technischen Details befasse.
Im Rahmen der Outside-In-Mapping-Übung mit der Customer Journey wurde dies gut veranschaulicht. Geschäftsfähigkeiten, definiert über das RIM, überdauern den technologischen Wandel, bleiben stabil und liefern die Grundlage für die Architektur, ein Element, das mir bisher gefehlt hat.

Auch mein Umgang mit technischer Schuld hat sich weiterentwickelt. Technische Schulden werden durch die Enterprise Architektur sichtbar gemacht. Nun bin ich in der Lage, ihre Auswirkungen auf die Geschäftsprozesse und die möglichen Konsequenzen für die betroffene Geschäftsfähigkeit transparent zu kommunizieren.

= Fazit und Ausblick

== Zusammenfassung der Erkenntnisse
Diese Dokumentation hat einen vollständigen Bogen von Outside-In zu Inside-Out nachgezeichnet:
Eine Customer Journey wurde auf Business Capabilities abgebildet, die Capabilities wurden zur Application-Landschaft zurückverfolgt, und die resultierenden Reibungszonen wurden in einer Ziel-Architektur mit expliziter Migrations-Roadmap aufgelöst.

Die zentralen Erkenntnisse sind:

+ Die primäre Quelle der Reibung in der Customer Journey ist architektonischer und nicht prozessualer Natur, konzentriert in [describe core finding].
+ Das Business Capability Management erwies sich als die beständigste Abstraktion: Es überstand drei grössere Scope-Änderungen während der Kollaborationsphase, ohne dass Nacharbeit erforderlich war.
+ Die Ziel-Architektur senkt die Total Cost of Ownership der betroffenen Capabilities über zehn Jahre um rund [estimated saving], abhängig davon, dass die Stammdaten-Governance aus Phase 1 fristgerecht abgeschlossen wird.

Der in Kapitel 6 dokumentierte individuelle Lernpfad zeigt einen nachprüfbaren Wandel von einem technisch zentrierten zu einem wert- und lebenszyklusorientierten architektonischen Denken – die Kernkompetenz, die das Curriculum des CAS EAM entwickeln soll.

== Ausblick und Dank
Stand heute, hat Transgourmet keinen etablierten Enterprise Architecture Management Prozess. Die Architekturarbeit im CAS EAM hat gezeigt, dass die Einführung eines solchen Prozesses einen signifikanten Mehrwert für die Organisation liefern kann. Inwiefern ich in der Rolle als Leiter Applikationsentwicklung in der Lage sein werde, die Erkenntnisse aus dem CAS EAM in die Organisation zu tragen, wird sich zeigen. Hingegen bin ich überzeugt, dass die im CAS EAM erworbenen Kompetenzen und das Verständnis für Enterprise Architektur einen nachhaltigen Einfluss auf meine Arbeit haben wird. Der mit der Methodik GFbUA, dem Fokus auf RIM, geleisteten qualitativ hochstehenden Grundlagenarbeit gehört mein voller Respekt und ich bin dankbar, dass ich die Gelegenheit hatte, diese Methodik im CAS EAM zu erlernen und anzuwenden.
