#import "template.typ": conf
#import "markers.typ": anhang-modus

#show: conf.with(
  title: "GastroStart – vom Gründungsvorhaben zur Unternehmensarchitektur",
  subtitle: [Anwendung der GFbUA-Methodik auf ein organisationsübergreifendes #box[Gründungsportal] für die Gastronomie],
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
    (name: "Giovanna Beier", affiliation: "Digitale Transformation und IKT-Lenkung, Bundeskanzlei", email: "giovanna.meier@gmail.com"),
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
//#include "draft/jakob/05_ea_target-architecture.typ"


// ── References ──────────────────────────────────────────────────────────────

#bibliography("refs.bib", style: "apa", title: "Literaturverzeichnis")
//dieser Styl wird im GFbUA benutzt: #bibliography("refs.bib", style: "apa", title: "Literaturverzeichnis")

// ── Anhang ───────────────────────────────────────────────────────────────────

#pagebreak()
#counter(page).update(1)
#counter(heading).update(0)
#anhang-modus.update(true)

#include "appendix/a1_glossary.typ"
#include "appendix/a2_semantic-anchors.typ"
#include "appendix/a3_togaf-adm-applied.typ"
#include "appendix/a4_werkzeug_reflexion.typ"
#include "appendix/a5_learning_path.typ"
