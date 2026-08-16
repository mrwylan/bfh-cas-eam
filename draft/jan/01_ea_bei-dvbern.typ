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

Zusammenfassend ist die EA-Landschaft der DV Bern AG eine pragmatische, hybride Architektur, die die Stabilität und Sicherheit des öffentlichen Sektors mit der Geschwindigkeit und Innovationskraft eines modernen Softwareentwicklers verbindet. 
Sie dient als Fundament, um massgeschneiderte Lösungen effizient zu erstellen und langfristig stabil zu betreiben.

== Beispiel der EA-Integration im Produkt kiBon

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