// ── Chapter 4 & 5: EA Realization and Target Architecture ───────────────────

= Das Inside-Out-Mapping: Realisierung der Enterprise Architecture

== Operating-Model-Einordnung nach Ross, Weill und Robertson
Bevor die Customer Journey auf Capabilities und Systeme heruntergebrochen wird, ist eine grundlegende Einordnung nötig: Welches Operating Model liegt Transgourmet zugrunde?
Ross, Weill und Robertson unterscheiden vier Operating Models entlang der beiden Achsen Standardisierung der Geschäftsprozesse und Integration der Daten @ross2006enterprise.
Aus dieser Klassifikation leitet sich ab, wie viel Integration eine Architektur tragen muss und wo Autonomie zulässig bleibt.

#figure(
  caption: [Operating-Model-Matrix nach Ross, Weill und Robertson @ross2006enterprise mit Verortung der Transgourmet-B2B-Belieferung (Unification) und der übergreifenden Customer Journey (Federation)],
  image("../assets/operating_model_matrix_mit_federation_layer.svg", width: 92%),
) <fig-operating-model-matrix-with-federation-layer>

- *Ebene Transgourmet B2B-Belieferung — Unification*: Innerhalb von Transgourmet sind sowohl Prozesse als auch Daten hoch integriert und zentralisiert. Kunden-, Sortiments-, Preis-, Bestands-, Bestell- und Lieferdaten werden geteilt, die Kernprozesse (Bestellung, Disposition, Lieferung, Fakturierung) sind standardisiert, und ein zentrales System bedient diese Kanäle.

- *Ebene Customer Journey — Federation*: Für die akteursübergreifende Sicht existiert keine Entsprechung im Ross/W/R-Schema; die Klassifikation adressiert Ebenen *innerhalb* einer Organisation (Enterprise, Division, Business Unit), nicht autonome Akteure. Die beteiligten Akteure (Gründer, Behörde, Finanzpartner, Transgourmet) sind autonom und betreiben ihre eigenen Systeme. Eine geteilte Datenhaltung über die Akteursgrenzen hinweg ist nicht vorgesehen. Die Durchgängigkeit der Journey entsteht, wo möglich, über standardisierten Kontrakte: das GastroStart-Portal koordiniert die Gründungsphasen über eCH-konforme Schnittstellen zu Behörden und Finanzpartner. Transgourmet wird über EDIFACT/GS1-Kontrakte für Bestellungen und Lieferantungen angebunden. Die Integration der Daten ist auf die Schnittstellen beschränkt, die Prozesse sind nicht standardisiert, und die Systeme sind autonom.

== Business-Architecture-Schicht
Jeder in der Customer Journey identifizierte Touchpoint wurde anhand der für [Organization Name] entwickelten Capability Map auf eine oder mehrere Business Capabilities zurückgeführt.
Das Mapping zeigt auf, welche Capabilities kundenkritisch sind – also die Qualität der Journey direkt beeinflussen – und welche unterstützend sind – also die betriebliche Kontinuität ohne direkte Sichtbarkeit für die Kundin sicherstellen.

#table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (left, left, left),
  stroke: 0.5pt,
  [*Customer Touchpoint*], [*Business Capability*], [*Capability-Typ*],
  [_[Touchpoint A]_], [_[Capability X]_], [Core],
  [_[Touchpoint B]_], [_[Capability Y]_], [Enabling],
  [_[Touchpoint C]_], [_[Capability Z]_], [Strategic],
)

Das Capability-to-Process-Mapping unterhalb dieser Tabelle ist separat im ArchiMate-Modell dokumentiert
(siehe Anhang oder beigefügte Modelldatei).
Die Prozesszerlegung folgt den Konventionen von TOGAF ADM Phase B @opengroup2018togaf.

== Application- und Data-Architecture-Schicht
Die Application-Landschaft wurde gegen die Capability Map erhoben, um zu identifizieren, welche Systeme aktuell jede kundenkritische Capability unterstützen.
Die Eigentümerschaft an den Stammdaten (Master Data) war eine primäre analytische Linse: Die fragmentierte Eigentümerschaft an Kunden-Stammdaten über [N] Systeme hinweg wurde als Grundursache für [specific pain point] identifiziert.

```
[Customer Touchpoint] → [Business Capability] → [Application Service] → [Data / Infrastructure]
      (Outside-In)                                       (Inside-Out)
```

Zentrale Erkenntnisse aus der Analyse der Application-Schicht:

- *Stammdaten-Fragmentierung*: Kundenidentitätsdaten liegen in [System A], [System B] und [System C] ohne kanonischen Master vor und verursachen Abgleichfehler bei [Touchpoint X].
- *Integration Debt*: Punkt-zu-Punkt-Integrationen zwischen [System D] und [System E] erzeugen eine fragile Abhängigkeit ohne dokumentiertes SLA.
- *Shadow IT*: [Department] betreibt ein nicht registriertes [tool type], das autoritative Daten für [Capability Y] hält – ausserhalb des governten Application-Portfolios.

== ArchiMate-Modell des Ist-Zustands
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
Schnittstellen wie B2B-Shop und EDI-Gateway koppeln direkt an den Monolithen, wodurch die im Unification-Modell erwünschte Datenintegration zugleich zur strukturellen Abhängigkeit wird.
Genau diese Kopplung bildet die Brücke zur folgenden Analyse der technischen Schuld.

== Ausrichtung der technischen Schuld
Technische Schuld (Technical Debt) wird hier operativ definiert als die künftigen Kosten, die durch heutige architektonische Entscheidungen entstehen @fowler2018.
Die folgenden Reibungszonen wurden als Träger eines signifikanten Zehnjahres-Lebenszyklusrisikos identifiziert:

+ *[Friction Zone 1]*: [Description, estimated maintenance cost trajectory, risk rating]
+ *[Friction Zone 2]*: [Description, estimated maintenance cost trajectory, risk rating]
+ *[Friction Zone 3]*: [Description, estimated maintenance cost trajectory, risk rating]

Jede Reibungszone wurde auf zwei Achsen bewertet: Wirkung auf die Customer Journey (direkt vs. indirekt) und Komplexität der Behebung (tief / mittel / hoch).
Diese Bewertung liefert die Priorisierungslogik für die Roadmap der Ziel-Architektur im folgenden Kapitel.


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
