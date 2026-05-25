// ── Chapter 3: Collaboration Phase — Outside-In Mapping ─────────────────────

= The Collaboration Phase: Outside-In Mapping

== Customer Journey Definition
Building on the case introduced in Section 1.2, the collaboration phase maps Amira's journey in detail across the six phases defined by the GastroStart portal.

#figure(
  caption: [Persona Profile: Amira],
  block(
    width: 100%,
    stroke: 0.5pt,
    radius: 4pt,
    clip: true,
  )[
    #block(
      width: 100%,
      fill: luma(60),
      inset: (x: 1em, y: 0.6em),
    )[
      #text(fill: white, weight: "bold", size: 1.05em)[Persona: Amira]
    ]
    #block(inset: 1em)[
      #grid(
        columns: (3cm, 1fr),
        row-gutter: 0.55em,
        [*Role*],         [Prospective founder, catering sector],
        [*Context*],      [No industry background; rough business concept in place],
        [*Goals*],        [Found a legally compliant business; overlook nothing essential],
        [*Frustrations*], [Opaque administrative processes; fear of making mistakes; no professional network],
        [*Need*],         [Step-by-step guidance; everything in one place],
      )
    ]
  ]
) <persona-amira>

The journey was structured across six phases:

+ *Initial Orientation* — Amira discovers GastroStart and assesses whether the portal meets her needs.
+ *Registration* — she creates an account and completes her founder profile.
+ *Business Concept* — the portal guides her through structuring and documenting her catering concept.
+ *Operating Permit* — GastroStart provides a step-by-step checklist for the Swiss Betriebsbewilligung process.
+ *Financing* — Amira uses the portal's planning tools to prepare a financing application.
+ *First Contract* — the journey concludes when Amira secures and documents her first catering assignment.

Each phase was decomposed into discrete touchpoints, capturing what Amira does, which system she interacts with, what she needs in that moment, her emotional state, and where the current architecture creates friction.
@fig-journey-map provides the consolidated journey map across all six phases.

#figure(
  caption: [Customer Journey Map: Amira on GastroStart],
  block(width: 100%, breakable: true)[
    #set text(size: 7.8pt)
    #table(
      columns: (2.5cm, 2.0cm, 2.1cm, 2.3cm, 1.2cm, 2.4cm, 2.5cm),
      inset: 5pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left, left, left, left, center, left, left),

      [*Phase*], [*Action*], [*Touchpoint*], [*Thought / Need*], [*Emotion*], [*Pain Point*], [*Opportunity*],

      [*1. Initial \ Orientation*],
      [Searches "Gastronomie gründen Schweiz"; lands on GastroStart],
      [Search engine → landing page],
      ["Does this cover catering specifically?"],
      [↓ −1],
      [Generic entry; catering vs. restaurant not differentiated],
      [Sector-specific onboarding flow],

      [*2. Registration*],
      [Creates account; fills founder profile],
      [Registration form],
      ["Why so much data upfront?"],
      [→ 0],
      [Handelsregister number required before company exists],
      [Progressive profiling per phase],

      [*3. Business \ Concept*],
      [Structures catering concept using guided template],
      [Concept wizard],
      ["Am I describing this at the right level of detail?"],
      [↑ +1],
      [Template generic; not tailored to catering operations],
      [Catering-specific template and worked examples],

      [*4. Operating \ Permit*],
      [Works through permit checklist; contacts cantonal authority],
      [GastroStart checklist + external cantonal site],
      ["Which canton rules apply? I work across cantons."],
      [↓↓ −2],
      [Redirect to inconsistent external pages; cross-canton gap],
      [Integrated canton-specific permit guide with direct links],

      [*5. Financing*],
      [Uses financial planner; drafts funding application],
      [Financial calculator + document generator],
      ["Will Swiss banks accept this format?"],
      [↓ −1],
      [No links to CH-specific funding programmes],
      [Pre-filled templates for CH funding programmes],

      [*6. First \ Contract*],
      [Documents first assignment; updates portal profile],
      [Assignment tracker],
      ["What are my ongoing reporting obligations?"],
      [↑↑ +2],
      [No post-launch compliance checklist],
      [Automated post-founding obligation guide],
    )
  ]
) <fig-journey-map>

The emotional curve across the journey was captured using a sentiment scale, revealing the critical moments where uncertainty peaks and reliable system support has the highest architectural impact @stickdorn2011.
Phase 4 (Operating Permit) marks the lowest point at −2, driven by system fragmentation and missing cross-canton guidance.
Phase 6 (First Contract) reaches the peak at +2 but leaves a structural gap: no post-launch compliance support is provided.
Both extremes are direct inputs for the pain point analysis in Section 3.2 and the capability mapping in Chapter 4.

== Pain Points and Value Drivers
The journey mapping exercise surfaced structural bottlenecks where the customer experience deteriorates due to underlying system limitations rather than process design failures.
This distinction is architecturally significant: process failures can be resolved through training and governance, whereas system-induced friction requires deliberate architectural intervention @temkin2010.

Primary pain points identified:

+ *Regulatory fragmentation*: Administrative requirements vary by canton and are difficult to navigate comprehensively (directly observable in Phase 4 of @fig-journey-map, emotion score −2).
+ *Financing opacity*: Amira has no knowledge of available financing options and credit processes, creating a capability gap in Phase 5.
+ *Procurement uncertainty*: No guidance exists for supplier selection and procurement planning, leaving a critical operational phase unsupported.
+ *Fear of costly mistakes*: The absence of validation mechanisms generates anxiety that slows progress and erodes trust in the portal.

Corresponding value drivers, areas where improved architectural support would yield measurable customer benefit:

+ *Consolidated access*: Centralising all founding-relevant information and tools in one place directly addresses the fragmentation pain point.
+ *Proactive guidance*: Replacing self-directed research with step-by-step workflows reduces the cognitive load on first-time founders and prevents errors before they occur.
+ *Data privacy transparency*: Explicit communication of how personal and business data is handled builds the trust required for Amira to engage fully with the platform.
+ *Error prevention by design*: Validation rules, contextual checklists, and progress indicators prevent mistakes at the system level rather than relying on the user's prior knowledge.

== Collaborative Synthesis
Architectural decisions in team settings are not purely analytical — they are social negotiations shaped by professional background, prior experience, and differing mental models of what architecture is for @bass2012.
The collaborative phase of this project made this dynamic explicit: a shared customer journey had to be negotiated across participants with heterogeneous perspectives before it could serve as a reliable input for the architectural analysis in Chapter 4.

*Group composition:*
_[N] participants; professional backgrounds included e.g. [Software Architect / Business Analyst / Project Manager / IT Consultant — replace with actual roles]._

*Divergence:*
Two structural divergence types emerged early in the workshop.
Technically oriented participants gravitated toward data flows and system dependencies, mapping touchpoints to application interfaces.
Business-oriented participants focused on the emotional reality of the customer experience, prioritising phases where trust and clarity were at stake.
_[Describe the concrete divergence that occurred in your group: Which specific journey phase or touchpoint was contested? What did each side argue?]_

*Consensus mechanism:*
_[Describe how the group resolved the divergence: e.g. dot-voting on contested touchpoints / structured debate facilitated by the lecturer / escalation to a shared evaluation criterion.]_
In retrospect, the mechanism was effective at resolving visible disagreements; however, it is worth noting whether any minority perspectives were suppressed that may resurface as implementation risks in Chapter 4.

*Synthesis outcome:*
The resulting journey map (@fig-journey-map) is a consensus artefact: it reflects decisions that no single participant would have made independently.
_[Note whether the group-synthesised journey deviates from your individual view of Amira's journey — and if so, on which phase or dimension.]_
This negotiated quality is precisely what gives the artefact its architectural legitimacy: it represents a shared understanding, not an individual analysis.
