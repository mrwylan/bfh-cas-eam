#import "template.typ": conf

#show: conf.with(
  title: "Das Inside-Out-Mapping: Realisierung der Enterprise Architecture",
  subtitle: "Auszug aus der Learning-Path-Dokumentation – Kapitel 4",
  date: "BFH CAS Enterprise Architecture Management (EAM), 2026",
  authors: (
    (
      name: "Jakob Albrecht",
      affiliation: "BFH CAS Enterprise Architecture Management",
      email: "jakob.albrecht@students.bfh.ch"
    ),
  ),
)

// ── Chapter Stream ──────────────────────────────────────────────────────────
#include "chapters/04_ea_realization.typ"

// ── References ──────────────────────────────────────────────────────────────
// Typst lists only works cited in the included chapter by default.
#bibliography("refs.bib", style: "ieee", title: "Literaturverzeichnis")
