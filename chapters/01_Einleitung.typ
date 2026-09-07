#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung
#import "../template.typ": inset-block

= Einleitung

== Zielsetzung

Dieses Dokument erfüllt zwei explizite Anforderungen des BFH-CAS-Programms Enterprise Architecture Management.

Erstens soll es die schrittweise Entwicklung eines Joint-Ventures zwischen sehr heterogene Parteien dokumentieren. 
Bei diesem Joint-Venture handelt es sich um ein fiktives Unternehmen, welches technische, operative und kommerzielle Aspekte jedes Ursprungsbetriebs vereint und einzeln hervorhebt. 

Zweitens bietet das Dokument jedem Mitglied die Möglichkeit in individuellen (und entsprechend erkennbaren) Abschnitten auf die Spezifika des eigenen Unternehmens und des eigenen Anteils am Joint-Venture einzutreten. 
So wird jedes Mitglied der Gruppe seinen individuellen Lernpfad festhalten und seine spezifische Vertiefung und Schlussfolgerungen beisteuern.

== Problemstellung

Wie bauen wir eine Enterprise-Architektur für das Joint Venture auf, die die unterschiedlichen Stärken der Ursprungsunternehmen verbindet und Synergien nutzt, während die Eigenständigkeit und der Kernwert jedes Partners erhalten bleiben?

== Kontext: eine kleine Reise durch Mittelerde

Im Verlauf der Studienwochen hat die Zusammenarbeit unter den Mitgliedern der Gruppe Unternehmungscharakter angenommen: durch die iterative Vorgehensweise und die regelmässigen - anfangs etwas erzwungenen Übungen - musste ein gemeinsamer Nenner gefunden und eingegrenzt werden. 
Die Diskussionen betreffend die Schärfung der Mission (Was macht das Joint-Venture? Was davon soll abgebildet werden? Wo hören wir auf?) sowie die wöchentlichen Feedbackrunden haben nach und nach die Zusammenarbeit und die gemeinsame Unternehmensvision der vier Kollegen gefördert und gefestigt. 

== Bemerkung zu den visuellen Call-outs

Im Verlauf der Projektarbeit musste die Gruppe wiederholt gemeinsame Entscheidungen treffen, zwischen Optionen abwägen oder festgestellte Denkfehler korrigieren.
Da diese Momente einen wesentlichen Teil des Arbeitsprozesses ausmachen, sind sie im Text durch folgende visuelle Bausteine hervorgehoben:
 
#design-entscheid([Hält wichtige, in der Gruppe getroffene Weichenstellungen für die Weiterentwicklung fest.])

#stolperstein([Markiert Konzept- und Denkfehler, die uns während der Erarbeitung unterlaufen sind.])

#fuehrung([Kennzeichnet Passagen und Zitate aus der Fachliteratur. Sie dienen dazu, die theoretische Verankerung der Arbeit direkt nachzuvollziehen.])

== Erklärung zur Nutzung Künstlicher Intelligenz (KI) und Selbständigkeitserklärung

=== Einsatzgebiet und Entstehungsprozess

Diese Arbeit entstand unter teilweiser Nutzung KI-gestützter Werkzeuge.
Die Erstellung erfolgte als iterativer Prozess zwischen Mensch und System: 
Das KI-Modell diente jeweils als assistierende Unterstützung, während der Autor das Verfahren durchgehend steuerte (Human-in-the-Loop). 
Sämtliche KI-Generierungen wurden vom Autor initiiert, strukturiert und konsequent weiterentwickelt.

=== Eingesetzte LLM-Modelle

Die Aufstellung folgt der Richtlinie der Berner Fachhochschule zum Umgang mit
generativer KI.


#figure(
 table(
  columns: (auto, auto, auto),
  align: (left + top, left + top, left + top ),
  stroke: 0.4pt + luma(170),
  inset: 6pt,
  table.header(
    [*Zeitraum*], [*Modell*], [*Einsatzschwerpunkt*] 
  ),

  [März bis Mai 2026],
  [Claude, Anthropic, Generation Opus 4],
  [Aufbau der Semantic-Anchor-Sammlung, Zachman-Analyse der B2B-Disposition, Business Model Canvas Transgourmet, Referenz- und Zitationsarbeit zu GFbUA],

  [Juni bis Juli 2026],
  [Claude, Anthropic, Generation Opus 4],
  [Kapazitätsmodellierung GastroStart, ArchiMate-Modellbau, Customer Journey und Szenarien, Betriebsmodellanalyse nach Ross, Weill und Robertson],

  [August 2026],
  [Claude, Anthropic, Opus 4.7],
  [ @anh-werkzeug-reflexion[Werkzeug-Reflexion für GFbUA-Modellierung] , Verdichtung des Dialogs zum Anhang],

  [September 2026],
  [Claude, Anthropic, Opus 5],
  [Konsolidierung der Anhänge, Review und Korrektur der Arbeit, Typst-Satz],
 ),

  caption: ([Eingesetzte LLM-Modelle und deren Einsatzschwerpunkte]),

)

=== Qualitätssicherung und Verantwortung

Kein KI-generierter Inhalt wurde ungeprüft übernommen.
Der Entstehungsprozess umfasste eine systematische Qualitätssicherung durch die beteiligten Autoren:

#inset-block[
*Inhaltliche Prüfung:* Validierung aller Aussagen auf Richtigkeit, Aktualität und Kontextbezug.

*Redaktionelle Überarbeitung:* Gezielte Steuerung und Anpassung von Stil, Struktur und Formulierungen.

*Ergebniverantwortung:* Die Verantwortung für den Inhalt, die wissenschaftliche Einordnung sowie sämtliche Schlussfolgerungen liegen uneingeschränkt bei den Autoren.
]

=== Selbständigkeitserklärung

#emph[

Ich bestätige, die vorliegende Arbeit selbständig verfasst zu haben.
Sämtliche Textstellen, die nicht von mir stammen, sind gekennzeichnet und mit dem genauen Hinweis auf ihre Herkunft versehen.
Die verwendeten Quellen (gilt auch für Abbildungen, Grafiken u.ä.) sind im Literatur- bzw. Quellenverzeichnis aufgeführt.
Ich bestätige weiterhin, dass ich bei der Erstellung dieser Studienarbeit durchgehend steuernd gearbeitet habe und von einer KI erzeugte Texte bzw. Textfragmente nicht unreflektiert übernommen habe.

]
