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

== Problemstellung / gap
#frage([
  an alle: ich denke wir _müssen_ hier noch irgendeine Fragestellung formulieren. 

  Auch finde ich, _sollten_ wir die Fragestellung am Ende in unseren Vertiefungen wieder aufnehmen.])

== Kontext: eine kleine Reise durch Mittelerde
Im Verlauf der Studienwochen hat unsere Zusammenarbeit unter den Mitgliedern der Gruppe Unternehmungscharakter angenommen: durch die iterative Vorgehensweise und die regelmässigen - anfangs etwas erzwungene Übungen - musste ein gemeinsamer Nenner gefunden und eingegrenzt werden. 
Die Diskussionen betreffend der Schärfung der Mission (was macht das Joint-Venture? was davon soll abgebildet werden? wo hören wir auf?) sowie die wöchentlichen Feedbackrunden haben nach und nach die Zusammenarbeit und die gemeinsame Unternehmensvision der vier Kollegen gefördert und gefestigt. 

== Methode und Struktur
Die vorliegende Gruppenarbeit folgt dem Windschatten der Vorlesungen und Übungen. 
+ Customer Journey - in Anlehnung an den Vorschlag "Start mit der Geschichte" @Spichiger2026GFbUA
+ Erarbeitung des Resource Independent Model (RIM) 
+ vom Abstrakten zum Konkreten / Dematerialisierung 
+ Rematerialisierung (operating Model?) 
+ Kritische Hinterfragung (Übungen vom 17.06., 24.06.)
+ individulle Anhänge und reflexionen

== Deklaration zum Einsatz von künstlicher Intelligenz und Lesehinweise

#todo-action([Jakob: Anhang einfügen ])

=== Erklärung 
Die vorliegende Arbeit wurde unter Einsatz eines KI-gestützten Werkzeugs erstellt.
Statt jede einzelne Textpassage separat zu annotieren, wird die durchgehend angewandte Arbeitsweise in einem Anhang offengelegt.
Die Texte wurden in einem interaktiven, iterativen Prozess zwischen Autoren und Sprachmodell erstellt, bei dem der jeweilige Autor steuert, prüft und verantwortet.

*Hinweis zur Deklaration.*
Die generierten Texte wurden nicht unreflektiert übernommen.
Die Autoren haben durchgehend steuernd eingegriffen (Prompts, Korrekturen, inhaltliche Validierung) und tragen die Verantwortung für alle Aussagen und Formulierungen.

=== Eingesetzte Tools
*Modellierung:* Archi - und Archimate, Draw.io und UML

*Textredaktion:* Visual Studio Code mit Typst Plugin, github repository 

*Bibliographie:* Zotero, apa style

#frage([Jakob/alle: IMHO ist es besser, wenn wir dieselbe Zitierweise wie bei GFBUA einsetzen.
Vorschlag: bibliography im main.typ mit apa stat ieee stylen)])


=== Bemerkung zu den visuellen Call-outs
Immer wieder mussten sich die vier Gefährten über etwas einigen oder zwischen mehrere Optionen wählen - oder aber sind mehr oder weniger kurz falsch abgebogen. 
Diese Momente sind ein wichtiger Teil der gemeinsamen Arbeit und sind entsprechend hervorgehoben: 
#design-entscheid([Für die Weiterentwicklung wichtige Entscheidungen, die in der Gruppe getroffen wurden, sind diesem Block entsprechend grafisch wiedergegeben und festgehalten. ])

#stolperstein([Konzept- und Gedankenfehler, die wir während der Arbeit begangen haben, sind diesem Block entsprechend grafisch wiedergegeben und festgehalten.])

#fuehrung([Mit diesem Block und dessen Grafik entsprechend wurden Passagen aus der Literatur übernommen. Zweck dieser Zitate ist es, die Verbindung zu den Nachschlagewerken für die Schreibenden zu dokumentieren.])





