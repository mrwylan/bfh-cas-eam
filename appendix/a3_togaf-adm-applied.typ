#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern, mit-lead
)

= TOGAF ADM und der Begriff «Architecture Capability» im Spiegel der Geschäftsfähigkeiten-basierten Unternehmensarchitektur

#autor-transgourmet("Beitrag von Jakob Albrecht", inhalt: [
Dieses Kapitel reflektiert die Anwendung der TOGAF Architecture Development Method (ADM) und ordnet den Einsatz der Geschäftsfähigkeiten basierten Geschäftsarchitektur (GFbUA) in das Vorgehensmodel ein.
Es wiederspiegelt die persönliche Auseinandersetzung des Autors mit den Methoden aus dem CAS Enterprise Architecture Management.
],)

== Motivation für die Auseinandersetzung mit TOGAF

Im Modul «Architekturmanagement und Architekturevolution» wird TOGAF als methodisches Referenzwerk vermittelt.
In der Praxisliteratur gilt TOGAF als faktischer Standard und im Studienkontext wird explizit auf den ADM-Zyklus verwiesen.

Bei der vertieften Auseinandersetzung mit TOGAF fällt einem die umfangreiche Begriffsfamilie auf, die den einfachen operativen Einsatz erschwert.

Der Anhang dokumentiert diese Auseinandersetzung in drei Schritten.
Zuerst werden die bekannten Limitationen des ADM strukturiert und mit Mitigationsoptionen verbunden.
Anschliessend wird der Begriff «Architecture Capability» als Beispiel verwendet, an der sich die methodische Charakteristik von TOGAF konkret zeigen lässt.
Abschliessend wird die Einordnung gegenüber GFbUA gezogen und in eine Konsequenz für die eigene Architekturarbeit überführt.

Der Anhang versteht sich nicht als Polemik gegen TOGAF.
Er versteht sich als Klärung, in welcher Rolle TOGAF in der eigenen Praxis nutzbar ist und in welcher nicht.

== TOGAF ADM als Rahmenwerk

Der Architecture Development Method (ADM) gliedert Architekturarbeit in eine Preliminary Phase und die Phasen A bis H, ergänzt um ein durchgängiges Requirements Management.
Die Phasen lassen sich grob in drei Blöcke teilen: Strategie und Vision (Preliminary, A), Zielarchitekturen (B bis D), und Umsetzung, Migration und Governance (E bis H).

TOGAF kennt drei Iterationstypen, die parallel laufen können: 
_Architecture Capability Iterations_ zur Etablierung und Pflege der EA-Funktion, _Architecture Development Iterations_ für konkrete Zielarchitekturen, und _Transition Planning Iterations_ für Migrationsplanung. Diese Differenzierung ist hilfreich, weil sie unterschiedliche Wirkungsebenen trennt.

Der Wert von TOGAF liegt für mich primär in dieser groben Strukturierung.
ADM benennt, in welchen Konzern- und Entscheidungssphären Architekturarbeit überhaupt stattfindet, und schafft damit ein gemeinsames Vokabular zwischen IT, Geschäftsleitung und externen Partnern.

#highlight[Wie eine Business Architecture konstruiert oder wie eine Migrationsfolge inhaltlich begründet wird, ist mit ADM hingegen nicht geregelt.]

== Bekannte Limitationen des ADM und Mitigationsoptionen

Die folgende Tabelle bündelt jene Limitationen, die sich entweder aus dem Studium der TOGAF-Quellentexte oder aus der Sekundärliteratur (Kotusev, Lapalme, Ross et al.) ergeben.
Jeder Limitation ist eine konkrete Mitigationsoption beigestellt.

#include "a3_togaf-adm-limitationen_table.typ"

Die meisten Mitigationen laufen darauf hinaus, ADM nicht als Konstruktionsmethode zu verwenden, sondern als prozessuale Hülle für Architekturentscheidungen.
Diese Sicht erlaubt es, TOGAF pragmatisch einzusetzen, ohne sich seinen Schwächen auszuliefern.

== Fallstudie: Der Begriff «Architecture Capability»

Die Auseinandersetzung mit den abstrakten Limitationen wird greifbar, wenn man einen einzelnen TOGAF-Begriff genauer untersucht.
Der Begriff «Architecture Capability» eignet sich dafür, weil er mehrere typische Eigenheiten der TOGAF-Sprache in sich konzentriert.

=== Definition und Position im ADM

TOGAF definiert die Architecture Capability als die Fähigkeit einer Organisation, Enterprise Architecture zu betreiben.
Operativ ist damit das Bündel aus Rollen, Prozessen, Werkzeugen, Standards und Strukturen gemeint, das Architekturarbeit dauerhaft trägt.
Es enthält typischerweise:

#list(
[ein Architecture Board als Governance-Gremium],
[ein Architecture Skills Framework mit Rollen und Kompetenzanforderungen],
[ein Architecture Governance Framework mit Prinzipien, Compliance-Mechanismen und Dispens-Verfahren],
[ein Architecture Repository als Ablage für Modelle, Standards und Building Blocks]
)

Das Festlegen der Architecture Capability ist Gegenstand der Preliminary Phase. 

Zur Abgrenzung: Eine Business Capability ist eine fachliche Leistungsfähigkeit der Organisation, etwa «Bestellungen empfangen» oder «Lieferantenstammdaten pflegen».

=== Sprachliche Diagnose anhand eines Originalzitats

Folgendes Zitat steht beispielhaft für die typische TOGAF-Diktion:

#quote(block: true,
quotes: true,
attribution: [TOGAF Standard - Applying the ADM])[
Architecture Capability iterations support the creation and evolution of the required Architecture Capability. This includes the initial mobilization of the architecture activity for a given purpose or architecture engagement type by establishing or adjusting the architecture approach, principles, scope, vision, and governance.]

An diesem Satz lassen sich mehrere Merkmale gehaltleerer Methodensprache zeigen:

*Tautologie im Kern.* Das Definiendum (Architecture Capability) erscheint im Definiens (Architecture Capability iterations). Streicht man «iterations», bleibt im Wesentlichen: «X erzeugt und entwickelt X.»

*Nominalisierung ohne handelndes Subjekt.* «mobilization», «establishing», «adjusting» sind verbale Substantivierungen ohne Akteur und ohne Erfolgskriterium. Wer mobilisiert wen, wann ist mobilisiert, woran erkennt man Mobilisierung? Der Satz nennt kein Prüfkriterium.

*Disjunktion ohne Trennschärfe.* «for a given purpose or architecture engagement type» suggeriert eine Unterscheidung zwischen Purpose und Engagement Type, ohne sie einzuführen. Beide bleiben im selben Satz funktional austauschbar.

*Liste ohne Herleitung.* «approach, principles, scope, vision, and governance» suggeriert Strukturiertheit. Tatsächlich fehlt jede Begründung der Auswahl, der Reihenfolge und der gegenseitigen Abhängigkeit.

*Modaler Hedge.* «required Architecture Capability»: «required» bleibt unfundiert, erforderlich gemessen woran und gegenüber wem?

*Begriffliche Mehrdeutigkeit.* Innerhalb desselben Kapitels wechselt «Architecture Capability» zwischen drei Lesarten: als Funktion (was die EA-Organisation tut), als Reifegrad (wie gut sie es tut) und als Aggregat von Artefakten (Repository, Governance, Skills). Der Wechsel wird sprachlich nicht markiert.

=== Operative Reformulierung

Hinter der Stelle steht bei wohlwollender Lesart eine verwertbare Aussage.
Bevor Architekturarbeit an einem konkreten Vorhaben beginnt, muss die EA-Funktion selbst aufgesetzt oder auf den jeweiligen Auftrag rekalibriert werden.

In nüchterner Sprache:

#quote(block: true, 
quotes: true)[
Bevor Architekturarbeit zu einem konkreten Vorhaben beginnt, klärt das Architekturteam, wie Entscheidungen getroffen und dokumentiert werden, welcher Scope eingeschlossen ist, welche Prinzipien gelten und an wen eskaliert wird. 
Ist die EA-Funktion bereits etabliert, läuft diese Klärung als gezielte Anpassung gegen die etablierte Praxis.]

Jede Teilaussage trägt nun eine prüfbare Konsequenz: Entscheidung dokumentiert oder nicht, Scope vorhanden oder nicht, Eskalationspfad benannt oder nicht. 
Der Erkenntniswert der Reformulierung liegt nicht in einer neuen Einsicht, sondern darin, dass die ursprüngliche Aussage erst nach der Übersetzung an der Realität messbar wird.

== Methodische Einordnung gegenüber GFbUA

GFbUA hat kein direktes Pendant zur Architecture Capability nach TOGAF. 
Das ist kein Mangel, sondern eine bewusste methodische Entscheidung. 
GFbUA modelliert die Geschäftsfähigkeiten der Unternehmung als Gegenstand der Architektur, nicht die Fähigkeit, Architektur zu betreiben. 
Die EA-Funktion selbst wird in GFbUA als Aufbauorganisation behandelt, nicht als architektonisches Konstrukt eigener Ordnung. 
Damit verzichtet GFbUA auf eine begriffliche Schicht, die in TOGAF viel Raum beansprucht.

Daraus lässt sich eine Beobachtung verdichten: TOGAFs Architecture Capability ist primär ein Begriff über die EA-Funktion, nicht ein Begriff der EA. 
Sie beschreibt die Voraussetzungen der Architekturarbeit, nicht deren Gegenstand.

GFbUA wählt einen anderen Zugang. 
Im Zentrum steht die Trennung zwischen Resource Independent Model (RIM) und Resource Specific Model (RSM). 
Geschäftsfähigkeiten, Geschäftsobjekte, Geschäftstransaktionen und Geschäftsprozesse werden ressourcenunabhängig modelliert. 
Erst in einem zweiten Schritt erfolgt die Abbildung auf Informationssysteme, Personen, Sachmittel und Betriebsmittel. 
Diese Trennung ist substanziell, weil sie das Stabile (Geschäftsfähigkeiten) vom Veränderlichen (technische Realisierung) löst und damit eine über Jahrzehnte tragfähige Modellgrundlage erzeugt.

Die Begriffslandschaft von GFbUA bleibt überschaubar. 
Sie zwingt zur Festlegung des Modellierungsgegenstandes, nicht zur Pflege eines Methodenvokabulars. 
Wo TOGAF mit Architecture Building Block, Solution Building Block, Capability Increment und Transition Architecture eine eigene Begriffsökonomie aufbaut, kommt GFbUA mit Entitätstyp, Auftragstyp, Geschäftsobjekt und Geschäftsfähigkeit aus.

Konkret schlägt sich dieser Unterschied auch in der Modellqualitätsprüfung nieder. 
GFbUA gibt klare Konsistenzkriterien vor (Abhängigkeiten zwischen Geschäftsfähigkeiten zyklenfrei, Zustände der Inputs und Outputs müssen sinnvolle Zustände der Geschäftsobjekte sein, Geschäftstransaktionen vollständig dem Geschäftsprozess zugeordnet). 
TOGAFs ADM hat solche Konsistenzregeln nicht in vergleichbarer Schärfe.

== Konsequenzen für die eigene Architekturarbeit

Für meine Praxis als Head of Application Development bei Transgourmet ergibt sich daraus eine pragmatische Arbeitsteilung:

*TOGAF als Diskursrahmen:*

Wo mit externen Partnern, Beratern oder regulatorischen Stakeholdern kommuniziert wird, ist TOGAF lingua franca. 
Die Phasenbenennung schafft Anschlussfähigkeit, ohne die innere Modellqualität zu erzwingen. 
Auch im Lenkungsausschuss oder gegenüber Geschäftsleitung kann ADM als gemeinsames Skelett dienen, an dem sich der Stand einer Initiative grob verorten lässt.

*GFbUA als Konstruktionsmethode:*

Sobald inhaltliche Architekturentscheidungen anstehen, ist GFbUA das tragende Werkzeug. 
RIM-Modelle, Geschäftsobjekte mit Zustandslebenszyklen, IDEAL-ISA-Komponenten und die Trennung von Bestand, Funktion, Prozess und Interaktion liefern die Substanz, die im ADM nicht enthalten ist.

*Architecture Decision Records:*

Die mit TOGAF spezifierte Architecture Governance (z.Bsp. TOGAF-Compliance-Review) ist für meine tägliche Praxis zu schwergewichtig. 
Mit ADRs gelingt es mir, Entscheidungen mit Kontext, Optionen, Konsequenzen und ablehnenden Stimmen zu dokumentieren.

*EA als normativ-motivationale Schicht:*

In der Preliminary Phase wird EA von Anfang an in den Cycle injiziert, so dass sämtliche folgenden Phasen vom Setting profitieren. 
Der Wert von Enterprise Architecture liegt sodann nicht in der Konstruktion, sondern in der Begründung. 
EA macht sichtbar, woran sich Architekturentscheidungen messen lassen müssen (Prinzipien, Ziele, Trade-offs).

*Migrations-Roadmap als Beispiel:*

Die Migration der Transgourmet-Anwendungslandschaft vom ERP Monolithen über eine ACL-basierte Zwischenstufe zu autonomen Self-Contained Systems folgt dieser Aufteilung exemplarisch. 
Den Gesamtrahmen liefert ein modifizierter ADM-Zyklus, in dem die Phasen B, C und D je Capability separat durchlaufen werden. 
Die Capability wird als Self-Contained System realisiert und so aus dem Monolithen gelöst. 
Conway's Law ist der Anker, der die Architektur mit der Organisation synchronisiert.
