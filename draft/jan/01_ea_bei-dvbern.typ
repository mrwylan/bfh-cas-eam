= Die Rolle der Enterprise Architektur bei DV Bern AG
DV steht für digital Value - was man als "wertschöpfende Digitalisierung" verstehen kann.
Digitalisierungsprojekte, vorwiegend für die öffentliche Verwaltung, bilden das grösste Standbein des Unternehmens.
DV Bern wurde 1977 gegründet und hat aktuell circa 200 Mitarbeitende.
Zum Dienstleistungsportfolio gehören: Digitalisierungsberatung, Softwareentwicklung und IT Services, zu den Kunden gehören die öffentliche Verwaltung und KMUs.

== Geschäftsarchitektur

Hier steht die Abbildung der dualen Rolle als Produktentwickler und Dienstleister im Vordergrund. 

*Domänen*: Trennung zwischen standardisierten SaaS-Produkten (z. B. im Bereich e-Procurement, Handelsregister, Steuern) und projektbasierten Individualentwicklungen. 

*Prozesse*: Starke Verankerung von agilen Methoden (Scrum, DevOps). Die Enterprise Architektur (EA) stellt hier sicher, dass Wiederverwendbarkeit von Business-Komponenten (z. B. Authentifizierungsdienste für Behörden) über verschiedene Projekte hinweg gewährleistet ist, ohne die Agilität der Teams zu bremsen.

*Ökosystem*: Enge Integration in die öffentliche Verwaltung (Bund, Kanton, Gemeinden) als Hauptkundenstamm, was spezifische Anforderungen an Compliance und Interoperabilität stellt.

== Anwendungsarchitektur

Dies ist das Herzstück bei einem Softwarehaus. Bei DV Bern basiert die Anwendungsarchitektur auf einem „Best-of-Breed“-Ansatz, der bewährte Technologien mit modernen Standards kombiniert.

*Technologie-Stack*: Standardisierung auf Java (Backend) und Angular (Frontend).

*Architekturstil*: Hybrid aus modularer Monolith-Architektur für kleinere Projekte und Microservices für komplexe, skalierbare SaaS-Lösungen.

*Integration*: Da DV Bern Schnittstellen zu umliegenden Systemen (z. B. ERP) anbietet, wäre eine API-First-Strategie zentral. API-Gateways managen den sicheren Zugriff für externe Behörden und interne Dienste.

*Legacy-Management*: Strategien zur schrittweisen Modernisierung von Bestandsapplikationen (da das Unternehmen seit 1977 existiert), oft durch Strangler-Fig-Patterns, um alte Systeme durch neue Services zu ersetzen.

== Datenarchitektur

Gerade im e-Government-Umfeld hat die Datenhoheit und -sicherheit höchste Priorität.

*Datenhaltung*: Trennung von mandantenfähigen SaaS-Datenbanken und projektspezifischen Datenbeständen.

*Compliance*: Strikte Einhaltung der Schweizer Datenschutzgesetze (nDSG) und Vorgaben der öffentlichen Hand. Datenresidenz ist zwingend in der Schweiz (eigene Rechenzentren oder zertifizierte Swiss-Cloud).

*Interoperabilität*: Nutzung offener Standards für den Datenaustausch mit Behörden (z. B. XML, JSON-Schema, eCH-Standards), um die Vernetzung im Schweizer E-Government zu gewährleisten.

== Technologiearchitektur

Die DV Bern betreibt eigene Rechenzentren und bietet Cloud-Lösungen an, was eine hybride Infrastruktur erfordert.

*Infrastruktur*: Kombination aus klassischem On-Premise-Betrieb (für kritische Behördenanwendungen mit hohen Sicherheitsanforderungen) und modernen Cloud-Umgebungen (Kubernetes, Container) für skalierbare Web-Applikationen.

*Sicherheit*: Da Sicherheit ein explizites Thema ist (siehe Profile von Security-Architekten im Unternehmen), wäre „Security by Design“ integraler Bestandteil. Dies umfasst Identity & Access Management (IAM), Verschlüsselung und regelmäßige Audits.

*DevOps/CI/CD*: Automatisierte Pipelines für Build, Test und Deployment, um die versprochene Agilität und schnelle Release-Zyklen zu unterstützen.

== Governance und Rolle der EA

In einem mittelständischen Unternehmen wie der DV Bern AG ist die Enterprise Architecture dezentral und kollaborativ organisiert.

*Lean Governance*: Statt schwerfälliger Gremien existieren Architektur-Boards, die als beratende Instanzen fungieren und Leitplanken setzen, aber den Teams die Umsetzungsfreiheit lassen.

*Rolle der Architekten*: Architekten sind oft „Working Architects“, die selbst noch Code beitragen oder eng in den Scrum-Teams eingebunden sind.

*Fokus*: Der Mehrwert der EA liegt in der Vermeidung von Redundanzen, der Sicherstellung der Wartbarkeit über den gesamten Lebenszyklus (da DV Bern auch den Systembetrieb übernimmt) und der technologischen Vorausschau.

Zusammenfassend ist die EA-Landschaft der DV Bern AG eine pragmatische, hybride Architektur, die die Stabilität und Sicherheit des öffentlichen Sektors mit der Geschwindigkeit und Innovationskraft eines modernen Softwareentwicklers verbindet. Sie dient als Fundament, um massgeschneiderte Lösungen effizient zu erstellen und langfristig stabil zu betreiben.