#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern,
)

#pagebreak()

= Die Gefährten stellen sich vor

Die vier ungleichen Gefährten stellen sich vor.
Zusammen werden sie sich auf den Weg machen, ein gemeinsames Unternehmen zu entwerfen und zu modellieren. 
Jedes Mitglied stellt sein Unternehmen kurz vor. 


== Transgourmet
#autor-transgourmet([Beitrag von Jakob Albrecht])
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
#autor-dvbern([Beitrag von Jan Sohnemann])
#todo-action([Vorstellung kurz halten])

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
#autor-finnofleet([Beitrag von Adrian Anghel])
#todo-action([bitte: Vorstellung kurz halten])

FINNOFLEET Schweiz (#link("https://finnofleet.ch/ch-de/")[finnofleet.ch]) ist ein Softwareunternehmen für die Finanzbranche mit Hauptsitz in Sursee sowie weiteren Standorten in Zürich und Bern.
Rund 100 Mitarbeitende betreuen über 80 Kundinnen und Kunden aus dem Banken-, Versicherungs- und Pensionskassenumfeld. @FinnofleetCH2026

Das Lösungsangebot deckt den gesamten Kreditlebenszyklus ab --- von der Digitalisierung der Kreditberatung und -initiierung über die Portfolio- und Kontoverwaltung bis hin zur elektronischen Pfandbriefverwaltung und der Automatisierung von Refinanzierungsprozessen.
Das Produktportfolio umfasst entsprechend *ELA Kredit*, *WinCredit*, Lösungen für *Refinanzierung & Pfandbriefe* sowie die *Hypothekar- und Darlehensverwaltung*. Die Produkte sind in ihrer Architektur weitgehend vergleichbar aufgebaut.

FINNOFLEET Schweiz ist Teil der FINNOFLEET-Gruppe mit über 450 Mitarbeitenden in Zentraleuropa, die entlang der gesamten Kreditwertschöpfungskette tätig ist.

=== Geschäftsarchitektur

Prägend ist die Doppelrolle als *Produkthersteller* und als *Projektpartner* der eigenen Kundschaft: Ausgeliefert wird ein Standardprodukt, das anschliessend pro Institut parametrisiert, erweitert und in eine bestehende Systemlandschaft eingebettet wird.

*Domänen*: Der Zuschnitt folgt dem Kreditlebenszyklus --- Beratung und Initiierung, Kreditentscheid, Auszahlung, Portfolio- und Kontoverwaltung, Refinanzierung und Pfandbriefe. Die Domänengrenzen sind zugleich die Grenzen, an denen die Produkte des Portfolios aneinander anschliessen.

*Prozesse*: Eingespielt sind Solution Architecture, Estimation und Technical Review als wiederkehrende Stationen jedes Vorhabens. Die Weiterentwicklung erfolgt agil in Produktteams; die Enterprise Architektur sorgt dafür, dass Bausteine, die in mehreren Produkten gebraucht werden (Berechtigungen, Dokumentenverwaltung, Schnittstellen zu Kernbankensystemen), nicht mehrfach entstehen.

*Ökosystem*: Die Kundschaft besteht aus Banken, Versicherungen und Pensionskassen --- also aus Organisationen, die ihrerseits stark reguliert sind. Anforderungen aus Aufsicht, interner Revision und Bankkundengeheimnis wirken damit direkt in die Architektur hinein und sind nicht verhandelbare Randbedingungen.

=== Anwendungsarchitektur

Da alle Produkte denselben fachlichen Zyklus in unterschiedlichen Ausschnitten abbilden, ist die *architektonische Vergleichbarkeit* des Portfolios ein bewusst gepflegtes Gut: Sie erlaubt es, Muster, Bausteine und Betriebswissen zwischen den Produkten zu übertragen.

*Architekturstil*: Modular geschnittene Applikationen mit einem gemeinsamen Kern und produktspezifischen Modulen. Der Stil ist bewusst nicht Microservice-getrieben, sondern auf Auslieferbarkeit als installierbares Produkt ausgelegt --- ein Institut muss die Lösung im eigenen Umfeld betreiben und über Jahre versioniert weiterführen können.

*Technologie-Stack*: Standardisierung auf Java im Backend und Angular im Frontend; die Chapter-Struktur (Architecture, Java, Frontend, DevOps) spiegelt diesen Stack organisatorisch.

*Mandanten- und Ausprägungsfähigkeit*: Dasselbe Produkt erscheint bei verschiedenen Instituten unter unterschiedlicher fachlicher und visueller Ausprägung. Konfiguration statt Fork ist deshalb ein tragendes Architekturprinzip --- andernfalls vervielfacht sich der Wartungsaufwand mit jedem Kunden.

*Integration*: Die Lösungen stehen selten allein, sondern integrieren sich in Kernbankensysteme, Zahlungsverkehr, Dokumenten- und Archivsysteme sowie in externe Auskunfts- und Scoring-Dienste. Schnittstellen sind damit weniger ein technisches Detail als das eigentliche Produktversprechen.

=== Datenarchitektur

*Datenhoheit*: Die Daten sind Kundendaten und verbleiben in der Hoheit des jeweiligen Instituts. Das schliesst eine zentrale, herstellerseitige Datenhaltung über alle Kunden hinweg aus und verlagert Themen wie Auswertung und Monitoring in die Verantwortung des Betreibers.

*Datenhaltung*: Relationale Persistenz mit einem fachlich stabilen Kernmodell. Da die Datenbankplattform häufig durch das Institut vorgegeben ist, müssen mehrere Dialekte (Oracle, MS SQL Server, PostgreSQL) parallel unterstützt werden --- Schemaänderungen sind entsprechend versioniert und für jede Plattform gleichwertig zu führen.

*Compliance*: Bankkundengeheimnis, revidiertes Datenschutzgesetz (nDSG) und Nachvollziehbarkeitspflichten verlangen durchgängige Historisierung und Protokollierung fachlicher Entscheide. Ein Kreditentscheid muss Jahre später noch begründbar sein.

=== Technologiearchitektur

*Betriebsmodell*: Der Betrieb erfolgt überwiegend im Rechenzentrum des Kunden oder bei dessen Provider, ergänzt um Hosting-Varianten. Daraus folgt die für einen Produkthersteller typische Konsequenz: Es sind stets mehrere Versionsstände gleichzeitig im Feld, und Wartung wie Support müssen über lange Zeiträume für alle davon gewährleistet sein.

*DevOps/CI/CD*: Automatisierte Build-, Test- und Auslieferungspipelines pro Produkt, getragen vom DevOps-Chapter. Weil das Deployment beim Kunden liegt, endet die Pipeline nicht im Betrieb, sondern in einem reproduzierbaren Releasepaket.

*Sicherheit*: Identity & Access Management, Verschlüsselung und Berechtigungskonzepte sind Produktbestandteil, nicht Betriebsdetail --- sie werden im Rahmen von Audits und Revisionen des Kunden regelmässig geprüft.

=== Governance und Rolle der EA

Die Architekturarbeit ist dezentral organisiert und lebt von «Working Architects», die im Produktteam mitarbeiten.

*Chapter-Modell*: Vier Chapter (Architecture, Java, Frontend, DevOps) treffen sich in monatlichem Rhythmus und dienen als beratende Instanzen, die Leitplanken setzen, ohne den Teams die Umsetzungsfreiheit zu nehmen.

*Architecture Decision Records*: Architekturentscheide werden als ADRs festgehalten und erhalten ihren Input aus den Chaptern. Diese Praxis ist etabliert und bildet heute das Rückgrat der explizit dokumentierten Architektur.

*Explizite Dokumentation*: Pro Produkt existiert eine Produktarchitektur-Übersicht (heute in Miro); weitere technische Inhalte finden sich in Vertriebsdokumenten.

*Technische Schulden als geführtes Portfolio*: Ein dediziertes Tech-Debt-Team steuert Roadmap (Epics) und Backlog (Daily Work) --- technische Schuld ist damit nicht Nebenprodukt, sondern ein bewirtschafteter Gegenstand der Architekturarbeit.

=== Herausforderungen in der Enterprise-Architektur

Der Reifegrad ist auf Produkt- und Entscheidebene hoch, auf Portfolioebene dagegen deutlich geringer. Daraus ergeben sich vier Herausforderungen:

*Fehlende Portfolio-Sicht*: Es gibt keinen zentralen Überblick über alle Produkte, keinen Funktions- bzw. Bereichskatalog und kein zentrales API- und Integrationsverzeichnis. Gerade weil die Produkte architektonisch vergleichbar aufgebaut sind, bleibt Wiederverwendungspotenzial ungenutzt, solange niemand portfolioweit sehen kann, welche Fähigkeit wo bereits existiert.

*Implizites Wissen*: Wesentliches Integrations- und Datenflusswissen sowie das historische «Warum haben wir das so gemacht» liegen bei langjährigen Engineers mit über zehn Jahren Erfahrung. Ein strukturierter Knowledge Transfer fehlt --- das macht diese Personen zu einem Architekturrisiko, ohne dass es ihnen anzulasten wäre.

*Kein formaler EAM-Rahmen*: TOGAF und ArchiMate sind nicht etabliert; ebenso fehlen ein gepflegtes Tech-Radar und ein Reporting, das die Entwicklung der Architektur über die Zeit sichtbar macht. Architekturarbeit ist damit gut dokumentiert, aber schwer steuerbar.

*Inkonsistente Aussenkommunikation*: Weil technische Inhalte auch in Vertriebsdokumenten entstehen, kursieren voneinander abweichende Beschreibungen derselben Lösung. Eine zentrale Quelle für die Ist-Architektur würde diese Inkonsistenzen an der Wurzel auflösen.

== Öffentliche Verwaltung 
#autor-verwaltung([Beitrag von Giovanna Beier])//Zwerge

=== Ausgangslage

Bund, Kantone und Gemeinden in der Schweiz orientieren sich für ihre Organisation am Departementalprinzip — an der Gliederung der Verwaltung in eigenständig verantwortete Departemente (Bund) beziehungsweise Direktionen (Kanton) oder Ressorts (Gemeindeebene).

Diese organisatorische Eigenschaft führt dazu, dass auf jede Staatsebene eine Art interne Föderation besteht: die Kernaufgaben werden dabei dezentral verantwortet und wahrgenommen und Leistungen mit Grundcharakter wie beispielsweise Logistik oder Infrastruktur werden gemeinsam genutzt. 

Auf dieser Ausgangslage zur Organisation der Verwaltung basieren die folgenden Überlegungen zur angewendeten  Unternehmensarchitektur auf Bundesebene. 

=== Unternehmensarchitektur auf Bundesebene [löschen?]

Die Entwicklung der Bundesarchitektur geschieht in einem föderierten Ansatz durch den Bereich Digitale Transformation und IKT-Lenkung der Bundeskanzlei (DTI), die Departemente, Ämter und Leistungserbringer @bk_unternehmensarchitektur_bund: 
+ die Unternehmensarchitektur für die jeweiligen *Kernaufgabenbereiche* wird von den Departementen und Verwaltungseinheiten dezentral entwickelt.
+ Bundesämter mit *übergreifenden Aufgaben*, definieren und koordinieren die Unternehmensarchitektur für die übergreifenden Aspekte in ihrem Verantwortungsbereich.
+ die Unternehmensarchitektur der *aufgabenneutralen IKT-Grundleistungen* - soweit diese von der Mehrheit der Departemente benötigt werden - fällt in der Verantwortung des Bereichs DTI. 

=== Governance und Rolle der Unternehmungsarchitektur [löschen?]

Die Unternehmensarchitektur wird je nach Aufgabentyp unterschiedlich gelebt - und ist auch unterschiedlich bindend. 
Wer für die Governance zuständig ist und wie sich diese auf die Bundesverwaltung auswirkt, ist je nach Fall unterschiedlich: 
+ die Unternehmensarchitektur für die *Kernbereiche von Departementen* ist nur für die betroffenen Organisationseinheiten verbindlich. 
+ Ämter mit *übergreifenden Aufgaben* bestimmen die Unternehmensarchitektur für diese spezifischen Bereiche - diese ist dann für die restliche Bundesverwaltung _verbindlich_. 
+ Betreffend den *aufgabenneutralen IKT-Grundleistungen* Bundesweit gibt es zwei Goverance-Mechanismen: 
  - das Architekturboard Bund, bei dem alle Departemente und interne Erbringer von IKT-Leistungen vertreten sind, dient der gegenseitigen Abstimmung der Architekturen und der Methoden sowie der Bestimmung Hilfsmittel zu deren Erstellung @bk_unternehmensarchitektur_bund. 
  - Der Bereich DTI ist als einziger Akteur befugt, bundesweit verbindliche Vorgaben und Standards zu erlassen, im Bereich der sogenannten aufgabenneutralen IKT-Grundleistungen (Standarddienste) — und dies nur, soweit diese von der Mehrheit der Departemente benötigt werden @bk_unternehmensarchitektur_bund.

=== Herausforderungen in der Unternehmensarchitektur

+ *Fehlende ebenenübergreifende Gesamtsicht*: Föderalismus zwischen den Ebenen und Departementalprinzip innerhalb jeder Ebene verteilen die Verantwortung auf viele eigenständige Einheiten. Dadurch fehlt eine übergreifende Sicht darauf, welche Fähigkeit wo bereits besteht — und damit auch die Grundlage, um zu erkennen, welche Bereiche sich überhaupt für eine gemeinsame Regelung durch EA und Governance eignen.

+ *Unverbindliche Steuerungsinstrumente*: Die ebenenübergreifende Zusammenarbeit stützt sich heute auf Standards, deren Übernahme freiwillig ist, oder auf Grundsätze wie Nutzerorientierung und Interoperabilität, deren Umsetzung einen erheblichen Interpretationsspielraum lässt. Beides gibt Orientierung, schafft aber keine konkrete Durchsetzbarkeit — die Durchgängigkeit einer gegebenen Lösung bleibt vom Goodwill der einzelnen Einheiten abhängig.

+ *Rechtsgrundlage als Vorbedingung* Die Schaffung der Voraussetzungen für eine durchsetzbare Governance liegt ausserhalb der Kompetenz der Unternehmensarchitektur: Behörden sind in all ihrem Handeln an das Legalitätsprinzip gebunden. 
Damit die Behörden — innerhalb derselben Ebene oder ebenenübergreifend (etwa zwischen Kanton und Gemeinden) — verbindlich zusammenarbeiten und Daten austauschen können, braucht es daher eine entsprechende gesetzliche Grundlage. 
Fehlt eine solche, bleibt die Unternehmensarchitektur in diesem Bereich ein zahnloser Tiger: Sie kann Interoperabilität fordern oder gar gestalten, die rechtliche Voraussetzung dafür aber nicht selbst schaffen.



