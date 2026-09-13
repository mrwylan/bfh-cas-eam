#import "../markers.typ": (
  theorie-anker, design-entscheid, stolperstein, frage, todo-action, fuehrung,
  autor-marker, autor-finnofleet, autor-transgourmet, autor-verwaltung, autor-dvbern,
)

= GastroStart - Die Rollen der beteiligten Unternehmen im Joint Venture

#fuehrung[Basierend auf der Aufgabe -- "Jede Gruppe entwickelt ein gemeinsames neues «digitales Produkt», an welchem jede Unternehmung der Gruppe beteiligt ist." -- liefern wir eine Zuordnung der beteiligten Unternehmen zu den einzelnen Phasen der Customer Journey und machen so den Beitrag zur Umsetzung des Joint Ventures transparent.]

== DV Bern

Für das Produkt GastroStart liefert DV Bern Software und Infrastruktur für das Web-Portal, inklusive Implementierung der Regelmatrix, Profilmanagement und Schnittstellen für z. B. kantonale Dienste oder die Bonitätsprüfung via FINNOFLEET.
Das Portal wird im Folgenden auch als "Plattform" bezeichnet.
Das Produkt als Ganzes, inklusive aller fachlichen Aspekte, wird, wenn nicht explizit als GastroStart benannt, auch als "System" bezeichnet.

Für die fünf Phasen der Customer Journey: Orientierung, Registrierung, Bewilligung, Finanzierung, erster Einkauf - sind die einzelnen Beiträge seitens DV Bern wie folgt beschrieben.

=== Orientierung

Für diese Phase wird eine kantonale Regelmatrix benötigt.
Diese Matrix verknüpft alle Kantone mit den dort geltenden Regeln zur Gründung eines Gastronomiebetriebes.
Die GastroStart-Benutzer brauchen also eine Möglichkeit, den sie betreffenden Kanton auszuwählen und die für sie geltenden Regeln angezeigt zu bekommen.
Die Kantone brauchen eine Möglichkeit, Abweichungen in ihrem Regelwerk, die sich z. B. durch Gesetzesänderungen ergeben, im System zu ändern.

=== Registrierung

Die Registrierung erfordert, dass jeder Benutzer sich ein Profil im System erstellt, mit dem sie ihre Gründungsprozesse speichern, einsehen und verwalten können.
Das System muss sicherstellen, dass jeder Benutzer authentifiziert und autorisiert und jeder Gründungsprozess mit genau einem Benutzerprofil verknüpft wird.

=== Bewilligung<sec-rolle-dv-bern-bewilligung>

Die Bewilligung erfordert Möglichkeiten, den für die Betriebsgründung notwendigen Behörden alle benötigten Daten zur Verfügung stellen zu können.
Das beinhaltet das Anbinden externer APIs, wenn vorhanden, oder Darstellung und Verwaltung der entsprechenden Dokumente, sowie Übertragungs- und Speichermöglichkeiten für diese.
Zudem soll den Benutzern der Status der einzelnen Schritte angezeigt (z.B. offen, bearbeitet, eingereicht, bewilligt), sowie ein Benachrichtigungssystem für die Kommunikation der Beteiligten untereinander, sowie von Statusupdates implementiert werden.

=== Finanzierung

Die Finanzierung erfolgt in vielen Fällen kreditbasiert.
Dazu wird den Benutzern ein Interface zur Auswahl ihrer bevorzugten Bank angezeigt, sowie die Schnittstelle zur Bonitätsprüfung an FINNOFLEET implementiert.

=== Erster Einkauf

Voraussetzung für die Bestellung bei Transgourmet ist ein Kundenkonto, welches über das Portal angelegt werden kann.
Ebenfalls kann der Warenkatalog und die Bestellung über das Portal durchgeführt werden.
Die dafür notwendigen Schnittstellen stellt Transgourmet zur Verfügung.
Die Aufgabe von DV Bern wird es sein, diese in die Benutzerschnittstelle des Portals zu integrieren.

==== Zusammenfassung

DV Bern ist an der Implementierung jeder der fünf Phasen der Customer Journey: Orientierung, Registrierung, Bewilligung, Finanzierung, erster Einkauf - nicht nur massgeblich mitbeteiligt, sondern bildet das technische Fundament der Plattform und ihrer Integrationsmöglichkeiten über alle Phasen hinweg. Dabei nimmt das Unternehmen die Rolle einer Beraterin ein, welche die technischen Realisierungsmöglichkeiten der fachlichen Fragestellungen erarbeitet, die sich aus dem Joint Venture ergeben.
Wir betrachten im Folgenden das ressourcenunabhängige Modell für jede der fünf Phasen der Customer Journey individuell.

== FINNOFLEET

FINNOFLEET bringt in das Joint Venture das ein, was es täglich tut: die *Finanzierung*.
Als Softwareunternehmen für die Kreditwertschöpfungskette ist FINNOFLEET im GastroStart-Verbund der *Finanzierungspartner* --- es verantwortet die Phase, in der aus Amiras Gründungsvorhaben ein finanzierbares Unternehmen wird.

Konkret stellt FINNOFLEET drei Bausteine bereit:

- *Bonitätsprüfung* --- die automatisierte Beurteilung der Kreditwürdigkeit auf Basis der von Amira erfassten Angaben (Scoring).
- *Kreditentscheid* --- die nachvollziehbare Zusage oder Absage einer Finanzierung, inklusive verständlicher Begründung.
- *Kontobereitstellung* --- die Eröffnung des Geschäftskontos und die Vergabe der IBAN als Grundlage für den späteren Zahlungsverkehr.

Diese Leistungen werden nicht als eigenständiges Portal, sondern als *API-Dienste* in die GastroStart-Journey eingebunden: GastroStart orchestriert die Kundenerfahrung, FINNOFLEET liefert die Finanzierungs-Capability im Hintergrund.

== Transgourmet

Als letzter Player im Joint Venture bringt Transgourmet die *Lieferfähigkeit* ein. 
Als führender Schweizer Grosshändler für Gastronomie und Hotellerie ist Transgourmet der Partner, der Amira nach der Gründung ihres Unternehmens mit den notwendigen Lebensmitteln und Zutaten beliefert (Siehe: @fig-szenario-lieferantenvertrag).
Die Eröffnung eines Kundenkontos bei Transgourmet ist die letzte Phase der Customer Journey und steht am Übergang von der Gründungsphase in den operativen Betrieb. 

== Öffentliche Verwaltung als Interoperabilitätspartner<sec-rolle-interoperabilitätspartner>

Aus Sicht von Amira und somit auch von GastroStart wird die öffentliche Verwaltung - ohne besondere Rücksicht ob Bundes, Kantons- oder Gemeindeebene - in ihrer Rolle als Interoperabilitätspartner abgebildet und behandelt.
Dies, weil die öffentliche Hand ihre hoheitlichen Handlungen nicht im Sinne eines wirtschaftlichen Angebots wie die anderen Mitglieder der Joint Venture zur Verfügung stellt. Auch ist es nicht im Sinne der Schweizer Rechtstradition, private Unternehmen mit der Vergabe von hoheitlichen Akten zu betrauen.
Aus diesen Gründen sind jene Teile der Customer Journey, wofür der Staat verantwortlich ist - bspw. der Eintrag im Handelsregister oder die Erteilung einer Betriebsbewilligung - und die Fähigkeit, diese zu vollziehen, ausserhalb des Wirkungsbereichs des Joint Ventures anzusiedeln. 

/*Auf der anderen Seite bildet GastroStart eine spezialisierte Schnittstelle für die Vorbereitung hin auf diesen Akten. */

