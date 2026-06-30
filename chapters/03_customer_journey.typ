#import "../markers.typ": theorie-anker, design-entscheid, stolperstein, frage, todo-action;
// ── 02_customer_journey.typ — Chapter 3: Collaboration Phase: Outside-In Mapping ──

//= Die Kollaborationsphase: Outside-In-Mapping

= Die Reise beginnt: die Customer Journey und Phasenmodell
In diesem Kapitel wird die Customer Journey erklärt - und wie wir daraus ein Phasenmodell skizziert haben, welches am Kundenerlebnis entlang entstanden ist.
#todo-action([Zitatintegrieren: @Spichiger2026GFbUA, S. 52 - Start mit der Geschichte]) 

== Amira und ihre Geschichte <sec-amira-und-ihre-geschichte>
Amira, eine 34-jährige Quereinsteigerin, will ein Catering-Unternehmen gründen. 
Sie hat schon einen Konzept dafür. 
Sie hat keine Erfahrung, will nichts falsch machen und braucht Orientierung. 
Sie googelt "catering aufmachen schweiz", da sie sich eine Schritt für Schritt-Anleitung wünscht.
Sie möchte durch das Prozess der Unternehmensgründung geführt werden. 
Bei der Suche erfährt sie, dass die Punkte Bewilligungen, Finanzierung, Ressourcenplanung und Beschaffung besonders wichtig sind. 
Sie landet bei “Gastrostart” und erfährt in der kurzen Einführung auf der Startseite, dass dieses Portal sie bei all dem unterstützen kann. 
Sie ist erleichtert und registriert sich. 

#design-entscheid[
  Gastrostart bietet auch Dienstleistungen und Funktionalitäten für die Unterstützung des Betriebes eines Gastrounternehmens - unter Anderem Funktionalitäten für die Überwachung von Zahlungsfälligkeiten und ein Einkaufsplanungsmodul. Gemeinsam haben wir uns entschieden, nur das Onboarding von Amira abzubilden, da sonst das Szenario zu gross geworden wäre.]

== Exkurs: die Persona von Amira als Verankerung in die Outside-in-View
Aufbauend auf der im Abschnitt #ref(<sec-amira-und-ihre-geschichte>, supplement: none) beschriebene Customer Journey wurde Amiras Persona entwickelt. 
Dies, um der Endkundin konkreter und besser vorstellbar zu gestalten - wodurch sie unvergesslich geworden ist. Die Angaben von Amira bilden den Ausgangspunkt für die Modellierung von Gastrostart als Produkt. 

#figure(
  caption: [Persona-Profil: Amira],
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
  below: 0pt,
)[
  #text(fill: white, weight: "bold", size: 1.05em)[Persona: Amira]
]
#set par(justify: false)
    #table(
      columns: (3cm, 1fr),
      align: left,
      stroke: (top: none, x: none, y: 0.5pt + luma(200)),
      inset: (x: 1em, y: 0.55em),
      [*Rolle*],         [Angehende Gründerin, Catering-Branche],
      [*Kontext*],       [Kein Branchenhintergrund; grobes Geschäftskonzept vorhanden],
      [*Ziele*],         [Ein rechtskonformes Catering-Unternehmen gründen; nichts Wesentliches verpassen],
      [*Frustrationen*], [Intransparente Verwaltungsprozesse; Angst vor kostspieligen Fehlern; kein berufliches Netzwerk],
      [*Bedürfnis*],     [Schritt-für-Schritt-Begleitung über Registrierung, Bewilligungen, Finanzierung und Beschaffung – alles an einem Ort],
    )
  ]
) <persona-amira>
