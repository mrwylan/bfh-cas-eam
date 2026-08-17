#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung
= Die Gefährten stellen sich vor

Die vier ungleichen Gefährten stellen sich vor.
Zusammen werden sie sich auf den Weg machen, ein gemeinsames Unternehmen zu entwerfen und zu modellieren. 
Jedes Mitglied stellt sein Unternehmen kurz vor. 

== Transgourmet

*Transgourmet Schweiz: Ein Marktführer, der das Lebensmittelgeschäft transformiert.*

=== Firmenporträt

Transgourmet Schweiz steht für mehr als nur Lieferung – das Unternehmen ist der Motor hinter der Schweizer Gastronomie und Hotellerie. Mit über 100'000 Kundinnen und Kunden aus den Bereichen Gastronomie, Gemeinschaftsverpflegung und Detailhandel schafft die Marke Transgourmet/Prodega eine Infrastruktur, auf die sich Profis täglich verlassen können. @TransgourmetUeberUns2026

Das Herzstück des Erfolgs bildet ein dichtes Netzwerk: Mit 31 modernen Prodega-Abholmärkten in der ganzen Schweiz und 11 Regionallagern garantiert das Unternehmen höchste Effizienz in der Logistik. Rund 2'100 Mitarbeitende sorgen dafür, dass diese Leistung nicht nur im Hintergrund läuft, sondern durch echtes Engagement direkt sichtbar wird. Vom frischen Produkt bis zur innovativen Convenience-Lösung deckt das Sortiment die Bedürfnisse der Branche ab.

Das Unternehmen ist darauf ausgerichtet, die Herausforderungen der Branche zu meistern und dabei stets den Anspruch an Qualität und Verlässlichkeit zu wahren, auf den sein Ruf basiert.

=== Herausforderungen in der Enterprise-Architektur

Die Unternehmensarchitektur von Transgourmet steht vor spezifischen Herausforderungen, die weit über die klassische Grosshandelslogistik hinausgehen:

*Hybrides Logistikmodell:* Die Orchestrierung von 11 zentralen Regionallagern für die Belieferung und 31 dezentralen Prodega-Abholmärkten erfordert eine hochgradig verteilte Supply Chain, um volle Konsistenz zwischen allen Kanälen zu sichern.

*Komplexe Omnichannel-Integration:* Webshop, Kundenportal und mobile Kanäle müssen nahtlos ineinandergreifen. Zudem sind externe Kundenbestellsysteme direkt über APIs und EDIFACT-Schnittstellen an das Kernsystem angebunden.

*Anspruchsvolle Frische-Logistik:* Das breite Sortiment hochverderblicher Produkte (Fleisch, Fisch, Molkereierzeugnisse) verlangt maximale Verfügbarkeit und Zuverlässigkeit, verbunden mit extremen Anforderungen an Kühltechnik, Temperaturmanagement und Flexibilität.

*Eigenentwickeltes ERP-System:* Die technologische Basis bildet eine massgeschneiderte Eigenentwicklung für Schweizer Grosshandelsprozesse und Regulierungen. Die nachhaltige Modernisierung dieses Kernsystems bei laufendem Betrieb ist eine der grössten architektonischen Herkulesaufgaben.

== DV Bern // Hobbits

DV steht für digital Value - was man als "wertschöpfende Digitalisierung" verstehen kann.
Digitalisierungsprojekte, vorwiegend für die öffentliche Verwaltung, bilden das grösste Standbein des Unternehmens.
DV Bern wurde 1977 gegründet und hat aktuell circa 200 Mitarbeitende.
Zum Dienstleistungsportfolio gehören: Digitalisierungsberatung, Softwareentwicklung und IT Services, zu den Kunden gehören die öffentliche Verwaltung und KMUs.

=== Geschäftsarchitektur

Hier steht die Abbildung der dualen Rolle als Produktentwickler und Dienstleister im Vordergrund.

*Domänen*: Trennung zwischen standardisierten SaaS-Produkten (z. B. im Bereich e-Procurement, Handelsregister, Steuern) und projektbasierten Individualentwicklungen.

*Prozesse*: Starke Verankerung von agilen Methoden (Scrum, DevOps). Die Enterprise Architektur (EA) stellt hier sicher, dass Wiederverwendbarkeit von Business-Komponenten (z. B. Authentifizierungsdienste für Behörden) über verschiedene Projekte hinweg gewährleistet ist, ohne die Agilität der Teams zu bremsen.

*Ökosystem*: Enge Integration in die öffentliche Verwaltung (Bund, Kanton, Gemeinden) als Hauptkundenstamm, was spezifische Anforderungen an Compliance und Interoperabilität stellt.

=== Anwendungsarchitektur

Dies ist das Herzstück bei einem Softwarehaus. Bei DV Bern basiert die Anwendungsarchitektur auf einem „Best-of-Breed“-Ansatz, der bewährte Technologien mit modernen Standards kombiniert.

*Technologie-Stack*: Standardisierung auf Java (Backend) und Angular (Frontend).

*Architekturstil*: Hybrid aus modularer Monolith-Architektur für kleinere Projekte und Microservices für komplexe, skalierbare SaaS-Lösungen.

*Integration*: Da DV Bern Schnittstellen zu umliegenden Systemen (z. B. ERP) anbietet, wäre eine API-First-Strategie zentral. API-Gateways managen den sicheren Zugriff für externe Behörden und interne Dienste.

*Legacy-Management*: Strategien zur schrittweisen Modernisierung von Bestandsapplikationen (da das Unternehmen seit 1977 existiert), oft durch Strangler-Fig-Patterns, um alte Systeme durch neue Services zu ersetzen.

=== Datenarchitektur

Gerade im e-Government-Umfeld hat die Datenhoheit und -sicherheit höchste Priorität.

*Datenhaltung*: Trennung von mandantenfähigen SaaS-Datenbanken und projektspezifischen Datenbeständen.

*Compliance*: Strikte Einhaltung der Schweizer Datenschutzgesetze (nDSG) und Vorgaben der öffentlichen Hand. Datenresidenz ist zwingend in der Schweiz (eigene Rechenzentren oder zertifizierte Swiss-Cloud).

*Interoperabilität*: Nutzung offener Standards für den Datenaustausch mit Behörden (z. B. XML, JSON-Schema, eCH-Standards), um die Vernetzung im Schweizer E-Government zu gewährleisten.

=== Technologiearchitektur

Die DV Bern betreibt eigene Rechenzentren und bietet Cloud-Lösungen an, was eine hybride Infrastruktur erfordert.

*Infrastruktur*: Kombination aus klassischem On-Premise-Betrieb (für kritische Behördenanwendungen mit hohen Sicherheitsanforderungen) und modernen Cloud-Umgebungen (Kubernetes, Container) für skalierbare Web-Applikationen.

*Sicherheit*: Da Sicherheit ein explizites Thema ist (siehe Profile von Security-Architekten im Unternehmen), wäre „Security by Design“ integraler Bestandteil. Dies umfasst Identity & Access Management (IAM), Verschlüsselung und regelmäßige Audits.

*DevOps/CI/CD*: Automatisierte Pipelines für Build, Test und Deployment, um die versprochene Agilität und schnelle Release-Zyklen zu unterstützen.

=== Governance und Rolle der EA

In einem mittelständischen Unternehmen wie der DV Bern AG ist die Enterprise Architecture dezentral und kollaborativ organisiert.

*Lean Governance*: Statt schwerfälliger Gremien existieren Architektur-Boards, die als beratende Instanzen fungieren und Leitplanken setzen, aber den Teams die Umsetzungsfreiheit lassen.

*Rolle der Architekten*: Architekten sind oft „Working Architects“, die selbst noch Code beitragen oder eng in den Scrum-Teams eingebunden sind.

*Fokus*: Der Mehrwert der EA liegt in der Vermeidung von Redundanzen, der Sicherstellung der Wartbarkeit über den gesamten Lebenszyklus (da DV Bern auch den Systembetrieb übernimmt) und der technologischen Vorausschau.

Zusammenfassend ist die EA-Landschaft der DV Bern AG eine pragmatische, hybride Architektur, die die Stabilität und Sicherheit des öffentlichen Sektors mit der Geschwindigkeit und Innovationskraft eines modernen Softwareentwicklers verbindet.
Sie dient als Fundament, um massgeschneiderte Lösungen effizient zu erstellen und langfristig stabil zu betreiben.

=== Beispiel der EA-Integration im Produkt kiBon

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

== FINNOFLEET //Menschen

FINNOFLEET Schweiz (#link("https://finnofleet.ch/ch-de/")[finnofleet.ch]) ist ein Softwareunternehmen für die Finanzbranche mit Hauptsitz in Sursee sowie weiteren Standorten in Sursee, Zürich und Bern.
Rund 100 Mitarbeitende betreuen über 80 Kundinnen und Kunden aus dem Banken-, Versicherungs- und Pensionskassenumfeld.

Das Lösungsangebot deckt den gesamten Kreditlebenszyklus ab --- von der Digitalisierung der Kreditberatung und -initiierung über die Portfolio- und Kontoverwaltung bis hin zur elektronischen Pfandbriefverwaltung und der Automatisierung von Refinanzierungsprozessen. 
Das Produktportfolio umfasst entsprechend *ELA Kredit*, *WinCredit*, Lösungen für *Refinanzierung & Pfandbriefe* sowie die *Hypothekar- und Darlehensverwaltung*. Die Produkte sind in ihrer Architektur weitgehend vergleichbar aufgebaut.

FINNOFLEET Schweiz ist Teil der FINNOFLEET-Gruppe mit über 450 Mitarbeitenden in Zentraleuropa, die entlang der gesamten Kreditwertschöpfungskette tätig ist.


== Öffentliche Verwaltung  //Zwerge

Die Schweiz ist ein Bundesstaat, welcher drei politische Ebenen - und somit drei Ebenen der öffentlichen Verwaltung kennt. 
Diese Ebenen sind: 
- Bund 
- Kantone (insgesamt 26)
- Gemeinden (aktuell 2110)
Die drei Verwaltungsebenen nehmen ihren Kompetenzen entsprechend viele unterschiedliche Aufgaben wahr. 
Die Gesetzgebung verteilt diese Aufgaben an eine Vielzahl von Ämtern, Diensten und Stellen. Die Wahrnehmung einer Aufgabe erstreckt sich oft über mehrere Ebenen (beispielsweise Kanton und Bund oder Gemeinde und Kanton). Eine kurze Auswahl unter diese Aufgaben soll dies veranschaulichen: 
- Umsetzung von Massnahmen zur Wahrung der öffentlichen Gesundheit
- Führung von Registern 
- Umsetzung von Regelungen in Bezug auf das Bankenwesen
Die daraus resultierende Komplexität prägt nicht nur die öffentlichen Organisationen als solche, sondern wie die Erfüllung unter den verantwortlichen Behördenebenen gestaltet werden kann. 

Hierarchisch organisierte Vorgaben (Verfassungen, Gesetze, Verordnungen) und deren Einhaltung tragen dazu bei, dass die drei Ebenen _meistens_ harmonisch miteinander funktionieren, im Sinne einer vertikalen Zusammenarbeit. Das beste Beispiel für die Zusammenarbeit über alle Ebenen stellen wohl die Steuern dar – auch dank des Steuerharmonisierungsgesetzes.

Bei anderen Themen der vertikalen Zusammenarbeit sorgen Standardisierungsbestrebungen sowie die Orientierung an gemeinsamen Grundsätzen (bspw. Nutzerorientierung und Inklusion, Interoperabilität und Mehrfachnutzung, Digital first und Digital only) für eine kontinuierliche Verbesserung der Durchgängigkeit unter den drei Ebenen bei der Erbringung von Diensten an die jeweiligen Anspruchsgruppen @noauthor_strategie_2023. Dabei handelt es sich jedoch nicht um verbindliche Vorgaben und deren Einhaltung ist *freiwillig*. 




