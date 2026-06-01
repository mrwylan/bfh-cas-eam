// ── Chapter 6 & 7: Methodological Reflection and Conclusion ─────────────────

= Methodische Reflexion und der individuelle Lernpfad

#block(
  width: 100%,
  inset: (x: 1em, y: 0.8em),
  radius: 4pt,
  fill: luma(245)
)[
  *Anmerkung des Autors:*
  Dieses Kapitel ist der kritische akademische Motor der BFH-Dokumentation.
  Die nachstehenden Abschnitte sind bewusst in der ersten Person geschrieben.
  Beschreibe nicht, was getan wurde – beurteile kritisch, wie die Methode sich bewährt hat
  und was das über dein aktuelles architektonisches Denken aussagt.
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
Architektonische Entscheidungen in einem Team-Setting sind nicht rein technisch: Sie sind soziale Verhandlungen, vermittelt durch berufliche Identität, organisatorische Hierarchie und den Zeitdruck von Workshop-Formaten @bass2012.
Die umstrittensten Entscheidungen in diesem Projekt waren keine Technologieentscheidungen, sondern Scope-Grenzen – konkret, welche Capabilities innerhalb des Kollaborationsmandats lagen und welche an die auftraggebende Abteilung zurückgestellt wurden.

Die Gruppe erreichte Konsens durch [describe mechanism: dot voting / structured debate / escalation to sponsor].
Im Rückblick war der Konsensmechanismus wirksam darin, oberflächliche Meinungsverschiedenheiten aufzulösen, neigte aber dazu, technische Minderheitenbedenken zu unterdrücken, die später als Umsetzungsrisiken wieder auftauchten.
_[Expand: Give a concrete example of a decision where group dynamics shaped the architectural outcome. What would the individually optimal decision have been, and why did the group converge elsewhere?]_

== Individueller Kompetenzwandel
Zu Beginn des CAS war mein primärer Rahmen für architektonische Arbeit [describe prior mental model: e.g., solution architecture, infrastructure design, software development].
Technische Qualität – Performance, Skalierbarkeit, Wartbarkeit – war das dominante Bewertungskriterium, das ich an jeden architektonischen Vorschlag anlegte.

Der bedeutsamste Kompetenzwandel während des Programms war, Architektur aus der Perspektive von Business Value und Lebenszykluskosten zu beurteilen, bevor ich mich mit technischen Details befasste.
Die Outside-In-Mapping-Übung machte das konkret: Das architektonische Problem als Customer-Journey-Problem zu rahmen, zwang mich, Wert in Begriffen zu artikulieren, die nicht-technische Stakeholder beurteilen und hinterfragen konnten.

Auch mein Umgang mit technischer Schuld hat sich weiterentwickelt.
Früher behandelte ich Schuld als Folge von Lieferdruck – einen notwendigen Kompromiss.
Das CAS rahmte Schuld neu als strategische Variable mit expliziten künftigen Kostenfolgen, die im Reporting auf Führungsebene sichtbar gemacht werden können und sollten @fowler2018 @zachman1987.
_[Expand: Identify two or three specific moments in the program where your thinking shifted. Be precise about what you believed before and what you believe now.]_


// ── Chapter 7: Conclusion and Outlook ───────────────────────────────────────

= Fazit und Ausblick

== Zusammenfassung der Erkenntnisse
Diese Dokumentation hat einen vollständigen Bogen von Outside-In zu Inside-Out nachgezeichnet:
Eine Customer Journey wurde auf Business Capabilities abgebildet, die Capabilities wurden zur Application-Landschaft zurückverfolgt, und die resultierenden Reibungszonen wurden in einer Ziel-Architektur mit expliziter Migrations-Roadmap aufgelöst.

Die zentralen Erkenntnisse sind:

+ Die primäre Quelle der Reibung in der Customer Journey ist architektonischer und nicht prozessualer Natur, konzentriert in [describe core finding].
+ Das Business Capability Management erwies sich als die beständigste Abstraktion: Es überstand drei grössere Scope-Änderungen während der Kollaborationsphase, ohne dass Nacharbeit erforderlich war.
+ Die Ziel-Architektur senkt die Total Cost of Ownership der betroffenen Capabilities über zehn Jahre um rund [estimated saving], abhängig davon, dass die Stammdaten-Governance aus Phase 1 fristgerecht abgeschlossen wird.

Der in Kapitel 6 dokumentierte individuelle Lernpfad zeigt einen nachprüfbaren Wandel von einem technisch zentrierten zu einem wert- und lebenszyklusorientierten architektonischen Denken – die Kernkompetenz, die das Curriculum des CAS EAM entwickeln soll.

== Ausblick
Die während dieses CAS entwickelten Praktiken werde ich auf drei konkrete Arten in mein berufliches Alltagsumfeld einbringen.

Erstens werde ich capability-basierte Investitionsvorschläge als Standardformat einführen, wenn ich mit dem Senior Management über IT-Ausgabenentscheidungen spreche.
Das in Abschnitt 5.2 entwickelte Canvas-Format ist unmittelbar anwendbar, ohne dass Stakeholder ArchiMate- oder TOGAF-Kenntnisse aneignen müssen.

Zweitens werde ich ein leichtgewichtiges Register für technische Schuld für die Systeme unter meiner architektonischen Verantwortung etablieren und dabei das Reibungszonen-Bewertungsmodell aus Abschnitt 4.3 nutzen, um einen priorisierten und sichtbaren Backlog von Lebenszyklusrisiken zu führen.

Drittens werde ich die Outside-In-Rahmung als Standard-Einstiegspunkt für jede neue architektonische Initiative anwenden – und das Problemstatement in einer Kunden- oder User Journey verankern, bevor ich mich mit dem Systemdesign befasse.
Dies ist das am besten übertragbare methodische Ergebnis des CAS: eine Gewohnheit der Perspektive, kein Werkzeug oder Notationssystem.

_[Add a final paragraph reflecting on the limits of what was achieved and what remains open — BFH reviewers value intellectual honesty about the boundaries of the work.]_
