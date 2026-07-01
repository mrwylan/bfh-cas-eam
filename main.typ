#import "template.typ": conf

#show: conf.with(
  title: "Learning-Path-Dokumentation: Enterprise Architecture Management in der Praxis",
  subtitle: "Die Verbindung von Customer Journeys mit Capabilities und Application-Landschaften",
  date: "BFH CAS Enterprise Architecture Management (EAM), 2026",
  abstract: [
    /*nota: L'abstract è un riassunto completo e autonomo dell'intero lavoro (obiettivi, metodi, risultati e conclusioni).
    L'abstract svela tutti i passaggi dello studio, compresi i risultati finali e le conclusioni. 
    L'abstract è molto sintetico, solitamente compreso tra 150 e 250 parole.
    L'abstract segue una struttura logica serrata (Contesto → Problema → Metodo → Risultati → Conclusione).*/
    Diese Gruppenarbeit berichtet darüber, wie vier Kollegen aus ganz unterschiedlichen Unternehmen sich auf einer Idee für ein gemeinsames Unternehmen geeinigt haben und dieses in iterativen Schritten erarbeitet haben.
    In der Arbeit wird zunächst die Customer Journey beschrieben und abgegrenzt.
    Danach folgt die "Modellierungsreise" entlang der RIM-Methodik. 
    Anschliessend werden die Ressourcen wieder dazugenommen - wobei jeder der vier Kollegen am Schluss einer Vertiefung seines eigenen Anteils am Unternehmen präsentiert.


    /*
    Dieses Dokument verfolgt einen doppelten Zweck: Es stellt das architektonische Artefakt vor,
    das während der kollaborativen Phase des CAS-EAM-Programms entwickelt wurde, und es zeichnet
    den individuellen Lernpfad der Autoren über den gesamten Kurs hinweg nach.
    Verankert im Outside-In-Paradigma bildet die Arbeit eine konkrete Customer Journey über das
    Business Capability Management bis hinunter zur zugrunde liegenden Application- und
    Datenlandschaft ab.
    Die abschliessenden Kapitel liefern eine kritische methodische Reflexion und eine ehrliche
    Auseinandersetzung mit dem Kompetenzwandel, der während des Programms erreicht wurde.
    */
  ],
   authors: (
    (name: "Jan Sohnemann", affiliation: "DV Bern", email: "..."),
    (name: "Adrian Anghel", affiliation: "Finnofleet", email: "..."),
    (name: "Jakob Albrecht", affiliation: "Transgourmet", email: "..."),
    (name: "Giovanna Beier", affiliation: "Bundesverwaltung", email: "..."),
  ),
  eingereicht-von: "Giovanna Beier",   // ändert sich pro abgegebener Kopie
  kompendium: true,             // false = Abgabeversion, true = persönliches Kompendium

)


// ── Chapter Stream ──────────────────────────────────────────────────────────
#include "chapters/01_Einleitung.typ"
#include "chapters/02_Mitglieder.typ"
#include "chapters/03_customer_journey.typ"
#include "chapters/04_ea_realization.typ"
#include "chapters/05_ea_target-architecture.typ"
#include "chapters/06_learning_path.typ"

// ── References ──────────────────────────────────────────────────────────────
#bibliography("refs.bib", style: "ieee", title: "Literaturverzeichnis")
