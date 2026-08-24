#import "template.typ": conf

#show: conf.with(
  title: "Learning-Path-Dokumentation: Enterprise Architecture Management in der Praxis",
  subtitle: "Die Verbindung von Customer Journeys mit Capabilities und Application-Landschaften",
  date: "BFH CAS Enterprise Architecture Management (EAM), 2026",
  abstract: [

Diese Gruppenarbeit berichtet darüber, wie vier Kollegen aus ganz unterschiedlichen Branchen der Wirtschaft sich auf einer Idee für ein gemeinsames Unternehmen geeinigt haben und dieses in iterativen Schritten erarbeitet haben.
In der Arbeit wird zunächst die Customer Journey beschrieben und abgegrenzt.
Danach folgt die "Modellierungsreise" entlang der RIM-Methodik. 
Anschliessend werden die Ressourcen wieder dazugenommen - wobei jeder der vier Kollegen am Schluss einer Vertiefung seines eigenen Anteils am Unternehmen präsentiert.

  ],
   authors: (
    (name: "Jan Sohnemann", affiliation: "DV Bern", email: "..."),
    (name: "Adrian Anghel", affiliation: "FINNOFLEET", email: "..."),
    (name: "Jakob Albrecht", affiliation: "Transgourmet", email: "..."),
    (name: "Giovanna Beier", affiliation: "Bundesverwaltung", email: "..."),
  ),
  eingereicht-von: "Giovanna Beier",   // ändert sich pro abgegebener Kopie
  kompendium: true,             // false = Abgabeversion, true = persönliches Kompendium

)

// ── Chapter Stream ──────────────────────────────────────────────────────────

#set page(numbering: "1")
#counter(page).update(1)

#include "chapters/01_Einleitung.typ"
#include "chapters/02_Mitglieder.typ"
#include "chapters/03_customer_journey.typ"
#include "chapters/04_ea_realization.typ"
#include "chapters/05_ea_target-architecture.typ"
#include "chapters/06_learning_path.typ"

// ── References ──────────────────────────────────────────────────────────────

#bibliography("refs.bib", style: "apa", title: "Literaturverzeichnis")
//dieser Styl wird im GFbUA benutzt: #bibliography("refs.bib", style: "apa", title: "Literaturverzeichnis")

// ── Anhang ───────────────────────────────────────────────────────────────────

#include "appendix/a1_glossary.typ"
#include "appendix/a2_semantic-anchors.typ"
#include "appendix/a3_togaf-adm-applied.typ"