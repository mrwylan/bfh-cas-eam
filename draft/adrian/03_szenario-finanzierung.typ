// Draft für: chapters/03_customer_journey.typ  →  === Amira erhält eine Finanzierung
// Ersetzt das #todo-action in 03_customer_journey.typ:111.
//
// Format identisch zum Szenario "Amira gründet ihr Unternehmen" (03:97–108):
// Aktion/Touchpoint/… -Liste + Szenario-Grafik (Customer-Journey-Ansicht).
// Inhalt konsolidiert aus der Journey Map, Phase 4 «Finanzierung» (fig-journey-map).
//
// WICHTIG – Bild: Für Kapitel 3 wird eine SZENARIO-Grafik benötigt (kompakt,
// Customer-Journey-Ansicht) — NICHT die Geschäftstransaktionen-Grafik aus ch04.
// Analogon: assets/SZ_Unternehmensgruendung.svg (634×405) für "Amira gründet".
// Diese Szenario-View für die Finanzierung existiert im Archi-Modell noch NICHT
// (die View "Amira erhält eine Finanzierung" ist leer).
//
// ┌─────────────────────────────────────────────────────────────────────────┐
// │ TODO Adi: Szenario-View "Amira erhält eine Finanzierung" in Archi         │
// │ aufbauen (analog zur Gründungs-Szenario-View), als SVG exportieren nach   │
// │ assets/SZ_Finanzierung.svg, danach #figure unten einkommentieren.         │
// │ (Die Transaktions-Grafik "GTZ Amira erhält eine Finanzierung.svg" gehört  │
// │  zu Kapitel 4, siehe draft 04b — hier NICHT verwenden.)                   │
// └─────────────────────────────────────────────────────────────────────────┘

+ *Aktion:* Amira wählt einen Bankpartner, erfasst ihr Finanzierungsgesuch und lädt die Unterlagen hoch; im Hintergrund läuft die Bonitätsprüfung, anschliessend erhält sie den Kreditentscheid und ihre IBAN.
+ *Touchpoints:* GastroStart (Bankauswahl-UI), FINNOFLEET-Bonitäts-API, IBAN-Dashboard.
+ *Gedanke/Bedürfnis:* «Was, wenn ich abgelehnt werde? Erfahre ich, warum?»
// ^+ *Emotion:* ↓ −1
+ *Pain Point:* Der Kreditentscheid wird ohne Begründung zurückgegeben, und es fehlt eine Verlinkung zu alternativen Schweizer Förderprogrammen.
+ *Chance:* Transparentes Scoring-Feedback in verständlicher Sprache sowie vorausgefüllte Vorlagen für Schweizer Förderprogramme.

// Nach dem Export der Szenario-View einkommentieren:
// #figure(
//   image("../assets/SZ_Finanzierung.svg", width: 80%),
//   caption: [Archimate Modell der Customer Journey von Amira]
// ) <fig-szenario-finanzierung-cj>
