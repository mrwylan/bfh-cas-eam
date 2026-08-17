#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung

/*L'introduzione presenta lo scenario e le motivazioni, ma non rivela i risultati dettagliati
L'introduzione è molto più lunga ed estesa, occupando diverse pagine a seconda della complessità del lavoro.
L'introduzione si focalizza sul giustificare lo studio, evidenziare la "lacuna" nella letteratura (gap) e delineare gli obiettivi.*/

= Einleitung

== Zielsetzung

Dieses Dokument erfüllt zwei explizite Anforderungen des BFH-CAS-Programms Enterprise Architecture Management.
Erstens soll es die schrittweise Entwicklung eines Joint-Ventures zwischen sehr heterogene Parteien dokumentieren. 
Bei diesem Joint-Venture handelt es sich um ein fiktives Unternehmen, welches technische, operative und kommerzielle Aspekte jedes Ursprungsbetriebs vereint und Einzel hervorhebt. 
Zweitens bietet das Dokument jedem Mitglied die Möglichkeit, in individuelle (und entsprechend erkennbare) Abschnitte auf die Spezifika des eigenen Unternehmens - resp. des eigenen
Anteils an dem Joint-Venture - einzugehen. 
Dadurch wird jedes Mitglied der Gruppe seinen individuellen Lernpfad festhalten sowie seine spezifische Vertiefung und Konklusion beisteuern.

== Problemstellung

Wie bauen wir eine Enterprise-Architektur für das Joint Venture auf, die die unterschiedlichen Stärken der Ursprungsunternehmen verbindet und Synergien nutzt, während die Eigenständigkeit und der Kernwert jedes Partners erhalten bleiben?

== Kontext: eine kleine Reise durch Mittelerde

Im Verlauf der Studienwochen hat unsere Zusammenarbeit unter den Mitgliedern der Gruppe Unternehmungscharakter angenommen: durch die iterative Vorgehensweise und die regelmässigen - anfangs etwas erzwungene Übungen - musste ein gemeinsamer Nenner gefunden und eingegrenzt werden. 
Die Diskussionen betreffend der Schärfung der Mission (was macht das Joint-Venture? was davon soll abgebildet werden? wo hören wir auf?) sowie die wöchentlichen Feedbackrunden haben nach und nach die Zusammenarbeit und die gemeinsame Unternehmensvision der vier Kollegen gefördert und gefestigt. 

== Methode und Struktur

Die vorliegende Gruppenarbeit folgt dem Windschatten der Vorlesungen und Übungen. 
+ Customer Journey - in Anlehnung an den Vorschlag "Start mit der Geschichte" @Spichiger2026GFbUA
+ Erarbeitung des Resource Independent Model (RIM) 
+ Vom Abstrakten zum Konkreten / Dematerialisierung 
+ Rematerialisierung, ausgehend vom Operating Model @ross2006enterprise
+ Kritische Hinterfragung (Übungen vom 17.06., 24.06.)
+ Individuelle Anhänge und Reflexionen

== Eingesetzte Tools

*Modellierung:* Archi - und Archimate, Draw.io und UML

*Textredaktion:* Visual Studio Code mit Typst Plugin

*Kolaboration:* GitHub, GitLab, MS Teams

*Bibliographie:* Zotero, apa style

== Bemerkung zu den visuellen Call-outs

Während unseres Projekts musste die Gruppe wiederholt gemeinsame Entscheidungen treffen, zwischen Optionen abwägen oder festgestellte Denkfehler korrigieren.
Da diese Momente einen wesentlichen Teil unseres Arbeitsprozesses ausmachen, sind sie im Text durch folgende visuelle Bausteine hervorgehoben:
 
#design-entscheid([Hält wichtige, in der Gruppe getroffene Weichenstellungen für die Weiterentwicklung fest.])

#stolperstein([Markiert Konzept- und Denkfehler, die uns während der Erarbeitung unterlaufen sind.])

#fuehrung([Kennzeichnet Passagen und Zitate aus der Fachliteratur. Sie dienen dazu, die theoretische Verankerung der Arbeit direkt nachzuvollziehen.])

== Erklärung zur Nutzung Künstlicher Intelligenz (KI)

=== Einsatzgebiet und Entstehungsprozess

Diese Arbeit entstand unter teilweiser Nutzung KI-gestützter Werkzeuge.
Die Erstellung erfolgte als iterativer Prozess zwischen Mensch und System: 
Das KI-Modell diente jeweils als assistierende Unterstützung, während der Autor das Verfahren durchgehend steuerte (Human-in-the-Loop). 
Sämtliche KI-Generierungen wurden vom Autor initiiert, strukturiert und konsequent weiterentwickelt.

=== Qualitätssicherung und Verantwortung

Kein KI-generierter Inhalt wurde ungeprüft übernommen.
Der Entstehungsprozess umfasste eine systematische Qualitätssicherung durch die beteiligten Autoren:

#block(inset: 1em, above: 0.1em, below: 0.1em)[
*Inhaltliche Prüfung:* Validierung aller Aussagen auf Richtigkeit, Aktualität und Kontextbezug.

*Redaktionelle Überarbeitung:* Gezielte Steuerung und Anpassung von Stil, Struktur und Formulierungen.

*Ergebniverantwortung:* Die Verantwortung für den Inhalt, die wissenschaftliche Einordnung sowie sämtliche Schlussfolgerungen liegen uneingeschränkt bei den Autoren.
]
