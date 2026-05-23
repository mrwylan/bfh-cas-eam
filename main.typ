#import "template.typ": conf

#show: conf.with(
  title: "Deterministic Engineering Systems Architecture",
  date: "May 2026",
  abstract: [
    This paper outlines a highly disciplined approach to decoupled text configuration
    using the Typst typesetting system. By treating documentation as compile-target
    source code, teams can enforce structural guardrails and isolate layout changes
    from underlying semantic prose tracks.
  ],
  authors: (
    (
      name: "Lead Architect",
      affiliation: "Systems Optimization Group",
      email: "architect@engine.internal"
    ),
  ),
)

// Content Stitched Stream
#include "chapters/01_introduction.typ"

// References
#bibliography("refs.bib", style: "ieee", title: "References")
