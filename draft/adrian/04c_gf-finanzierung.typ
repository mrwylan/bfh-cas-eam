// Draft für: chapters/04_ea_realization.typ  →  === Geschäftsfähigkeiten Finanzierung erhalten
// Ersetzt das #todo-action in 04_ea_realization.typ:945.
//
// Quelle: Archi-Modell "gastrostart", Strategy-Capability "Gründungsvorhaben finanzieren".
// HINWEIS: Diese Capability ist im Archi-Modell (noch) NICHT in Teilfähigkeiten zerlegt.
// Die folgende Dekomposition ist ein Vorschlag in deutscher Sprache, im Format der
// bestehenden Sektion "Geschäftsfähigkeiten für die Registrierung". Bei Bedarf als
// Capability-View in Archi nachmodellieren und exportieren (siehe SVG-Hinweis unten).

Die übergeordnete Geschäftsfähigkeit lautet *Gründungsvorhaben finanzieren*. Sie wird von FINNOFLEET getragen und in fünf Teilfähigkeiten zerlegt:

1. Finanzierungsantrag-Management
• Erfassung des Finanzierungsgesuchs mit Betrag, Verwendungszweck und Laufzeit.
• Verwaltung der erforderlichen Unterlagen (Businessplan, Kostenaufstellung, Bewilligungsnachweis).
• Vollständigkeitsprüfung und Nachforderung fehlender Angaben.

2. Bonitätsprüfung
• Automatisierte Beurteilung der Kreditwürdigkeit auf Basis der Antragsdaten.
• Scoring nach definierten Kriterien (u. a. Einkommenssicherheit, Risikoprofil).
• Bereitstellung eines nachvollziehbaren Prüfergebnisses.

3. Kreditentscheidung
• Ableitung von Zusage oder Absage aus dem Prüfergebnis.
• Festlegung der Konditionen (Zinssatz, Laufzeit) bei Zusage.
• Begründung des Entscheids in verständlicher Sprache.

4. Konto- und IBAN-Bereitstellung
• Eröffnung des Geschäftskontos nach positivem Entscheid.
• Vergabe der IBAN als Grundlage für den späteren Zahlungsverkehr.

5. Finanzierungskommunikation
• Transparente Rückmeldung des Scoring-Ergebnisses an die Kundin.
• Verweis auf alternative Förderprogramme im Fall einer Absage.

// ┌─────────────────────────────────────────────────────────────────────────┐
// │ OPTIONALER SVG-EXPORT (durch Adi):                                        │
// │  Falls eine Grafik gewünscht ist (analog zu "GF Behördeninteration.svg"): │
// │  1. In Archi ein Capability-View "Gründungsvorhaben finanzieren" anlegen  │
// │     mit den fünf Teilfähigkeiten (Composition).                           │
// │  2. Als SVG exportieren nach assets/GF_Finanzierung.svg                   │
// │  3. Untenstehendes #figure einkommentieren.                               │
// └─────────────────────────────────────────────────────────────────────────┘

// #figure(
//   image("../assets/GF_Finanzierung.svg", width: 80%),
//   caption: [Geschäftsfähigkeiten der Phase «Finanzierung erhalten»]
// ) <fig-GF_Finanzierung>
