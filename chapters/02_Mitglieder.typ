#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung
= Die Gefährten stellen sich vor

Die vier ungleichen Gefährten stellen sich vor. Zusammen werden sie sich auf den Weg machen, ein gemeinsames Unternehmen zu entwerfen und zu modellieren. 
Jedes Mitglied stellt sein Unternehmen kurz vor. 

== Transgourmet //Elfen
#todo-action([Jakob Albrechts Unternehmen"in a Nutshell" beschreiben - Name, "Mission", Kundschaft, kurzer Abriss über die Unternehmensarchitektur])
/*Vorstellung Transgourmet*/

*Transgourmet Schweiz: Ein Marktführer, der das Lebensmittelgeschäft transformiert.*

=== Firmenporträt

Transgourmet Schweiz steht für mehr als nur Lieferung – das Unternehmen ist der Motor hinter der Schweizer Gastronomie und Hotellerie. Mit über 100'000 Kundinnen und Kunden aus den Bereichen Gastronomie, Gemeinschaftsverpflegung und Detailhandel schafft die Marke Transgourmet/Prodega eine Infrastruktur, auf die sich Profis täglich verlassen können.

Das Herzstück des Erfolgs bildet ein dichtes Netzwerk: Mit 31 modernen Prodega-Abholmärkten in der ganzen Schweiz und 11 Regionallagern garantiert das Unternehmen höchste Effizienz in der Logistik. Rund 2'100 Mitarbeitende sorgen dafür, dass diese Leistung nicht nur im Hintergrund läuft, sondern durch echtes Engagement direkt sichtbar wird. Vom frischen Produkt bis zur innovativen Convenience-Lösung deckt das Sortiment die Bedürfnisse der Branche ab.

Das Unternehmen ist darauf ausgerichtet, die Herausforderungen der Branche zu meistern und dabei stets den Anspruch an Qualität und Verlässlichkeit zu wahren, auf den sein Ruf basiert.

=== Herausforderungen in der Enterprise-Architektur

Die Unternehmensarchitektur von Transgourmet steht vor spezifischen Herausforderungen, die weit über die klassische Grosshandelslogistik hinausgehen:

*Hybrides Logistikmodell:* Die Orchestrierung von 11 zentralen Regionallagern für die Belieferung und 31 dezentralen Prodega-Abholmärkten erfordert eine hochgradig verteilte Supply Chain, um volle Konsistenz zwischen allen Kanälen zu sichern.

*Komplexe Omnichannel-Integration:* Webshop, Kundenportal und mobile Kanäle müssen nahtlos ineinandergreifen. Zudem sind externe Kundenbestellsysteme direkt über APIs und EDIFACT-Schnittstellen an das Kernsystem angebunden.

*Anspruchsvolle Frische-Logistik:* Das breite Sortiment hochverderblicher Produkte (Fleisch, Fisch, Molkereierzeugnisse) verlangt maximale Verfügbarkeit und Zuverlässigkeit, verbunden mit extremen Anforderungen an Kühltechnik, Temperaturmanagement und Flexibilität.

*Eigenentwickeltes ERP-System:* Die technologische Basis bildet eine massgeschneiderte Eigenentwicklung für Schweizer Grosshandelsprozesse und Regulierungen. Die nachhaltige Modernisierung dieses Kernsystems bei laufendem Betrieb ist eine der grössten architektonischen Herkulesaufgaben.

== DV Bern // Hobbits

#todo-action([Jan Sohnemanns Unternehmen"in a Nutshell" beschreiben - Name, "Mission", Kundschaft, kurzer Abriss über die Unternehmensarchitektur])
/**
 * Vorstellung DV Bern
 */



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




