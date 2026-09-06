#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern, mit-lead
)

#pagebreak()

= Beispiel der EA-Integration bei DV Bern im Produkt kiBon<ext-ea-kibon>

#autor-dvbern([Beitrag von Jan Sohnemann])

== Funktionsweise und Nutzung

kiBon ist eine digitale Verwaltungsplattform für Betreuungsgutscheine.
Das Projekt wurde ursprünglich mit der Stadt Bern initiiert, inzwischen wurde das System aber im ganzen Kanton ausgerollt und wird massgeblich vom Kanton Bern finanziert.
Mittlerweise sind auch andere Kantone und Gemeinden ausserhalb des Kantons Bern Nutzer und Finanziers der Plattform.
Familien können über die Plattform Gesuche zur Rückerstattung der Betreuungskosten ihrer Kinder erstellen.
Man trägt Alter, Betreuungsform, -platz und Dauer jedes Kindes in einem Webformular ein.
Eltern erfassen auch ihre Familien- und finanzielle Situation.
Die betreuende Organisation bestätigt den Platz und die Kosten der Betreuung pro Kind.
Das System berechnet dann die Höhe der Rückerstattung.
Mitarbeiter der Gemeinde prüfen anschliessend den Antrag, können weitere Dokumente einfordern und Gesuche verfügen oder ablehnen.
Nach der Verfügung haben die Eltern einen Rechtsanspruch auf die Rückerstattungen.
Diese werden von den Gemeinden und vereinzelt auch von den Kantonen übernommen oder bezuschusst.

== Technologie, Entwicklung und Betrieb

Der Technologiestack des Produktes wurde aus einem Katalog ausgewählt, der vom Architekturboard von DV Bern verwaltet wird.
Zusammen mit einem Architekten aus diesem Board wurde die Architektur mit dem Entwicklerteam erarbeitet.
Dabei wurde auf Best-Practices aus bereits existierenden, ähnlichen Produkten zurückgegriffen.
Als Vorgehensmodell für die Produktentwicklung wurde Scrum gewählt.
Dies ist ebenfalls Standard für alle Produktentwicklungen bei DV Bern.
Der Betrieb der Anwendung erfolgt bei der Bedag AG, was der vom Kanton Bern vorgegebene Standard für die meisten Systeme dieser Grössenordnung ist.
Das System wird regelmässigen Audits unterzogen, um Sicherheitsanforderungen sicherzustellen.
Diese Audits werden von einem unabhängigen Gremium durchgeführt.
Unabhängig bedeutet: Nicht in die Produktentwicklung involviert.
Der Source-Code des Produktes muss zudem öffentlich und frei zugänglich sein.
Auf Feedback Dritter, insbesondere wenn es sich um sicherheitskritische Anmerkungen handelt, muss eingegangen werden.

== Schnittstellen

kiBon bietet und verwendet viele Schnittstellen zu internen und externen Systemen.
Die zwei wichtigsten Schnittstellen betreffen das Identity Access Management via AGOV und den Steuerdatenabruf via Nesko.
Schnittstellen nach Aussen betreffen in erster Linie die Betreuungsplatzbestätigungen durch die Institutionen.
Die Verwendung der vom System dafür bereitgestellten Weboberfläche ist optional.
Insbesondere grössere Institutionen bevorzugen eine Integration ihrer eigenen Systeme.
Alle nach aussen gerichteten Schnittstellen in kiBon folgen dem REST Paradigma.

== Herausforderungen

Das Projekt kiBon existiert seit mehr als 10 Jahren und hat zwischenzeitlich enorme Wachstumsschübe erfahren, welche die ursprünglich geplante Architektur an ihre Grenzen bringt.
Die grössten Herausforderungen liegen aktuell bei der Skalierbarkeit und dem Legacy-Management.