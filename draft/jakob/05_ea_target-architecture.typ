
// ── Chapter 5: Target Architecture and Transformation Roadmap ───────────────

= Ziel-Architektur und Transformations-Roadmap

== Design des Zielzustands
Die Ziel-Architektur adressiert die drei in der As-is-Analyse identifizierten Reibungszonen.
Das Design folgt dem Prinzip der minimal tragfähigen Intervention: Nur Änderungen, die direkt einen Pain Point der Customer Journey beheben oder einen risikoreichen Posten technischer Schuld eliminieren, werden in den Baseline-Zielzustand aufgenommen.
Spekulative Verbesserungen werden im Backlog festgehalten, aber aus der Roadmap ausgeschlossen, um den Investitionsfokus zu wahren.

Zentrale Designentscheidungen im Zielzustand:

- *[Decision 1]*: [Rationale and expected outcome]
- *[Decision 2]*: [Rationale and expected outcome]
- *[Decision 3]*: [Rationale and expected outcome]

_[Insert ArchiMate target state diagram or capability heat-map here.]_

== Strategic Alignment Canvas
Das einseitige Strategic Alignment Canvas unten bildet die vorgeschlagenen architektonischen Änderungen gegen die erklärten strategischen Ziele der Organisation ab.
Dieses Format ist vom Business Model Canvas abgeleitet, um auf der architektonischen Schicht zu operieren, und macht die strategische Begründung für Stakeholder auf Führungsebene lesbar, ohne ArchiMate-Kenntnisse vorauszusetzen @osterwalder2010.

#table(
  columns: (1fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt,
  [*Strategisches Ziel*], [*Architektonische Initiative*],
  [_[Objective 1]_], [_[Initiative A]_],
  [_[Objective 2]_], [_[Initiative B]_],
  [_[Objective 3]_], [_[Initiative C]_],
)

== Migrations- und Kostenüberlegungen
Die Transformation ist als drei sequenzielle Phasen strukturiert, ausgerichtet auf TOGAF ADM Phase F (Migration Planning) @opengroup2018togaf.

*Phase 1 — Foundation (0–6 Monate)*:
Aufbau des Governance-Modells für Stammdaten und Ausserbetriebnahme der risikoreichsten Punkt-zu-Punkt-Integration.
Geschätzte Investition: [range].

*Phase 2 — Consolidation (6–18 Monate)*:
Migration der Shadow-IT-Daten in das governte Application-Portfolio und Umsetzung des Ziel-Integrationspatterns.
Geschätzte Investition: [range].

*Phase 3 — Optimization (18–36 Monate)*:
Ausserbetriebnahme von Legacy-Systemen, die nach der Konsolidierung in Phase 2 als redundant bestätigt wurden.
Reduktion der verbleibenden Betriebskosten: [estimated saving per year].

Die langfristigen Betriebskosten sind die primäre finanzielle Kennzahl: Die Ziel-Architektur wird nicht allein an den Projektkosten gemessen, sondern an ihrer Wirkung auf die Total Cost of Ownership der betroffenen Capabilities über zehn Jahre.
