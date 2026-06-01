#import "template.typ": conf

#show: conf.with(
  title: "Learning-Path-Dokumentation: Enterprise Architecture Management in der Praxis",
  subtitle: "Die Verbindung von Customer Journeys mit Capabilities und Application-Landschaften",
  date: "BFH CAS Enterprise Architecture Management (EAM), 2026",
  abstract: [
    Dieses Dokument verfolgt einen doppelten Zweck: Es stellt das architektonische Artefakt vor,
    das während der kollaborativen Phase des CAS-EAM-Programms entwickelt wurde, und es zeichnet
    den individuellen Lernpfad des Autors über den gesamten Kurs hinweg nach.
    Verankert im Outside-In-Paradigma bildet die Arbeit eine konkrete Customer Journey über das
    Business Capability Management bis hinunter zur zugrunde liegenden Application- und
    Datenlandschaft ab.
    Die abschliessenden Kapitel liefern eine kritische methodische Reflexion und eine ehrliche
    Auseinandersetzung mit dem Kompetenzwandel, der während des Programms erreicht wurde.
  ],
  authors: (
    (
      name: "Jakob Albrecht",
      affiliation: "BFH CAS Enterprise Architecture Management",
      email: "jakob.albrecht@students.bfh.ch"
    ),
  ),
)

// ── Chapter Stream ──────────────────────────────────────────────────────────
#include "chapters/01_intro_context.typ"
#include "chapters/02_customer_journey.typ"
#include "chapters/03_ea_realization.typ"
#include "chapters/04_learning_path.typ"

// ── References ──────────────────────────────────────────────────────────────
#bibliography("refs.bib", style: "ieee", title: "Literaturverzeichnis")
