#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern,
)

#pagebreak()

= Die Gefährten stellen sich vor

Die vier ungleichen Gefährten stellen sich vor.
Zusammen werden sie sich auf den Weg machen, ein gemeinsames Unternehmen zu entwerfen und zu modellieren. 
Jedes Mitglied stellt sein Unternehmen kurz vor. 

#todo-action([Hint \@alle: überlegen, ob den Teil mit den Heruasforderungen in EA mit dem eigenen Unternehmen mit den Ausführungen zum OM der eigenen Firma gemerged werden kann])

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

Die 1977 gegründete DV Bern AG beschäftigt rund 200 Mitarbeitende und versteht Digitalisierung als wertschöpfenden Prozess.
Ihr Schwerpunkt liegt auf Digitalisierungsprojekten für die öffentliche Verwaltung und KMU; 
das Leistungsportfolio umfasst Digitalisierungsberatung, Softwareentwicklung und IT-Services. 
Die Geschäftsarchitektur bildet dabei die duale Rolle als Produktentwickler und Dienstleister ab: 
Standardisierte SaaS-Produkte, etwa für E-Procurement, Handelsregister und Steuern, stehen neben projektbezogenen Individualentwicklungen. 
Agile Arbeitsweisen wie Scrum und DevOps werden durch eine pragmatische Enterprise Architecture unterstützt, die wiederverwendbare Geschäftskomponenten fördert, ohne die Autonomie der Teams einzuschränken. 
Die Anwendungsarchitektur folgt einem Best-of-Breed-Ansatz mit Java im Backend und Angular im Frontend sowie einer Kombination aus modularen Monolithen und Microservices. 
Eine API-First-Strategie und API-Gateways ermöglichen die sichere Integration interner und externer Systeme, während bestehende Anwendungen schrittweise, beispielsweise mithilfe des Strangler-Fig-Patterns, modernisiert werden. 
In der Datenarchitektur stehen Datenhoheit, Sicherheit und die Einhaltung des Schweizer Datenschutzgesetzes im Zentrum. 
Dazu gehören getrennte Datenbestände, eine zwingende Datenhaltung in der Schweiz und offene Austauschstandards wie XML, JSON-Schema und eCH.
Technologisch verbindet DV Bern eigene Rechenzentren und sicherheitskritische On-Premise-Systeme mit containerisierten Cloud-Umgebungen auf Basis von Kubernetes. 
Security by Design, Identity and Access Management, Verschlüsselung, Audits sowie automatisierte CI/CD-Pipelines sichern Betrieb und schnelle Release-Zyklen. 
Die Enterprise Architecture ist dezentral und kollaborativ organisiert: 
Beratende Architektur-Boards definieren Leitplanken, während praxisnahe „Working Architects“ eng mit den Scrum-Teams zusammenarbeiten. 
Insgesamt verbindet die Architektur Stabilität, Sicherheit und Compliance des öffentlichen Sektors mit der Agilität eines modernen Softwarehauses und schafft damit die Grundlage für effiziente, wartbare und langfristig betreibbare Lösungen.

Ein Beispiel zur EA-Integration bei DV Bern befindet sich in den Anhängen (@ext-ea-kibon).

== FINNOFLEET //Menschen
#autor-finnofleet([Beitrag von Adrian Anghel])

FINNOFLEET Schweiz (#link("https://finnofleet.ch/ch-de/")[finnofleet.ch]) ist ein Softwareunternehmen für die Finanzbranche mit Hauptsitz in Sursee sowie weiteren Standorten in Zürich und Bern.
Rund 100 Mitarbeitende betreuen über 80 Kundinnen und Kunden aus dem Banken-, Versicherungs- und Pensionskassenumfeld. @FinnofleetCH2026

Das Lösungsangebot deckt den gesamten Kreditlebenszyklus ab --- von der Digitalisierung der Kreditberatung und -initiierung über die Portfolio- und Kontoverwaltung bis hin zur elektronischen Pfandbriefverwaltung und der Automatisierung von Refinanzierungsprozessen.
Das Produktportfolio umfasst entsprechend *ELA Kredit*, *WinCredit*, Lösungen für *Refinanzierung & Pfandbriefe* sowie die *Hypothekar- und Darlehensverwaltung*. Die Produkte sind in ihrer Architektur weitgehend vergleichbar aufgebaut.

FINNOFLEET Schweiz ist Teil der FINNOFLEET-Gruppe mit über 450 Mitarbeitenden in Zentraleuropa, die entlang der gesamten Kreditwertschöpfungskette tätig ist.

=== Architektur

Prägend ist die Doppelrolle als *Produkthersteller* und als *Projektpartner*: Ausgeliefert wird ein Standardprodukt, das anschliessend pro Institut parametrisiert, erweitert und in eine bestehende Systemlandschaft eingebettet wird. Der Domänenzuschnitt folgt dem Kreditlebenszyklus --- Beratung und Initiierung, Kreditentscheid, Auszahlung, Portfolio- und Kontoverwaltung, Refinanzierung und Pfandbriefe ---, und an genau diesen Grenzen schliessen die Produkte des Portfolios aneinander an. Weil die Kundschaft aus Banken, Versicherungen und Pensionskassen besteht, wirken Aufsicht, interne Revision und Bankkundengeheimnis als nicht verhandelbare Randbedingungen direkt in die Architektur hinein.

Alle Produkte bilden denselben fachlichen Zyklus in unterschiedlichen Ausschnitten ab; ihre architektonische Vergleichbarkeit ist deshalb ein bewusst gepflegtes Gut, weil sie Muster, Bausteine und Betriebswissen übertragbar macht. Der Stil ist modular --- ein gemeinsamer Kern mit produktspezifischen Modulen --- und bewusst nicht Microservice-getrieben, sondern auf Auslieferbarkeit als installierbares Produkt ausgelegt, standardisiert auf Java im Backend und Angular im Frontend. Weil dasselbe Produkt bei jedem Institut fachlich und visuell anders ausgeprägt erscheint, gilt Konfiguration statt Fork als tragendes Prinzip; und weil die Lösungen sich in Kernbankensysteme, Zahlungsverkehr, Dokumentenarchive und externe Scoring-Dienste integrieren, sind Schnittstellen weniger ein technisches Detail als das eigentliche Produktversprechen.

Die Daten sind Kundendaten und verbleiben in der Hoheit des jeweiligen Instituts --- eine herstellerseitige Datenhaltung über alle Kunden hinweg ist damit ausgeschlossen. Persistiert wird relational auf einem fachlich stabilen Kernmodell, wobei die Datenbankplattform meist vom Institut vorgegeben ist und Oracle, MS SQL Server und PostgreSQL gleichwertig zu führen sind. Bankkundengeheimnis, revidiertes Datenschutzgesetz und Nachvollziehbarkeitspflichten verlangen durchgängige Historisierung: Ein Kreditentscheid muss Jahre später noch begründbar sein.

Betrieben wird überwiegend im Rechenzentrum des Kunden oder bei dessen Provider. Daraus folgt die für einen Produkthersteller typische Konsequenz: Mehrere Versionsstände sind gleichzeitig im Feld und über lange Zeiträume zu warten, und die automatisierte Auslieferungspipeline endet nicht im Betrieb, sondern in einem reproduzierbaren Releasepaket. Identity und Access Management, Verschlüsselung und Berechtigungskonzepte sind Produktbestandteil und werden in Audits und Revisionen des Kunden geprüft.

=== Governance und Herausforderungen

Die Architekturarbeit ist dezentral organisiert und lebt von «Working Architects», die im Produktteam mitarbeiten. Vier Chapter --- Architecture, Java, Frontend und DevOps --- treffen sich monatlich und dienen als beratende Instanzen, die Leitplanken setzen, ohne den Teams die Umsetzungsfreiheit zu nehmen; Architekturentscheide werden als Architecture Decision Records festgehalten und bilden heute das Rückgrat der explizit dokumentierten Architektur. Technische Schuld ist dabei nicht Nebenprodukt, sondern wird von einem dedizierten Tech-Debt-Team über Roadmap und Backlog bewirtschaftet.

Der Reifegrad ist damit auf Produkt- und Entscheidebene hoch, auf Portfolioebene dagegen deutlich geringer. Es fehlt eine Portfolio-Sicht --- kein zentraler Überblick über alle Produkte, kein Funktionskatalog, kein API- und Integrationsverzeichnis ---, weshalb Wiederverwendungspotenzial ungenutzt bleibt, obwohl die Produkte architektonisch vergleichbar aufgebaut sind. Wesentliches Integrations- und Datenflusswissen liegt implizit bei langjährigen Engineers, ohne strukturierten Knowledge Transfer; das macht diese Personen zu einem Architekturrisiko, ohne dass es ihnen anzulasten wäre. Und es gibt keinen formalen EAM-Rahmen: TOGAF und ArchiMate sind nicht etabliert, ein gepflegtes Tech-Radar und ein Reporting über die Entwicklung der Architektur fehlen. Architekturarbeit ist damit gut dokumentiert, aber schwer steuerbar --- was sich bis in die Aussenkommunikation zieht, wo technische Inhalte auch in Vertriebsdokumenten entstehen und voneinander abweichende Beschreibungen derselben Lösung kursieren.

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

Die Unternehmensarchitektur auf Bundesebene wird je nach Aufgabentyp unterschiedlich gelebt - und ist auch unterschiedlich bindend. 
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



