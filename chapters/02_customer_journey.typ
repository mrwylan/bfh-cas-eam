// ── Chapter 3: Collaboration Phase — Outside-In Mapping ─────────────────────

= The Collaboration Phase: Outside-In Mapping

== Customer Journey Definition
Building on the case introduced in Section 1.2, the collaboration phase maps Amira's journey in detail across the six phases defined by the GastroStart portal.

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

+ *[Pain Point 1]*: [Description — link to responsible system or integration gap]
+ *[Pain Point 2]*: [Description — link to responsible system or integration gap]
+ *[Pain Point 3]*: [Description — link to responsible system or integration gap]

Corresponding value drivers — areas where improved architectural support would yield measurable customer benefit:

+ *[Value Driver 1]*: [Expected improvement and architectural lever]
+ *[Value Driver 2]*: [Expected improvement and architectural lever]

== Collaborative Synthesis
The peer group consisted of [N] participants from [describe professional backgrounds].
Divergent mental models of the customer journey emerged early: technical participants focused on data flows, while business-oriented participants prioritized emotional states and service quality indicators.
The reconciliation process followed a structured workshop format: individual journey maps were created in parallel, then merged through facilitated negotiation, and finally validated against available customer data.
The final synthesized journey map represents a consensus artifact that neither individual participant would have produced independently — a direct demonstration of the collaborative value that BFH's EAM curriculum is designed to generate.
