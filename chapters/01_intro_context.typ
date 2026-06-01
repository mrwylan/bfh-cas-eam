// ── Chapter 1 & 2: Introduction, Context, and Theoretical Foundation ────────

= Einleitung und Kontext

== Zielsetzung und Geltungsbereich
Dieses Dokument erfüllt zwei explizite Anforderungen des BFH-CAS-Programms Enterprise Architecture Management.
Erstens dokumentiert es das architektonische Artefakt, das während der kollaborativen Projektphase entstanden ist.
Zweitens hält es den individuellen Lernpfad fest und erfasst die Entwicklung des architektonischen Denkens über die Dauer des CAS hinweg.
Die zweigeteilte Struktur spiegelt den Schwerpunkt der BFH auf den Praxis-Transfer wider: die Fähigkeit, theoretische Modelle in realen organisationalen Kontexten zu verankern und diesen Transfer kritisch zu beurteilen.

== Fallstudie / Unternehmensprofil
Amira plant, in der Schweiz ein Catering-Unternehmen zu gründen.
Sie hat ein grobes Konzept, aber keine Erfahrung mit den formalen Anforderungen einer Betriebsgründung im Gastgewerbe.
Handelsregistereintrag, Finanzierung, Ressourcenplanung und Beschaffung – sie weiss, dass diese Themen relevant sind, aber nicht, wie sie sie angehen soll.

GastroStart ist ein fiktives Portal, das Gründerinnen und Gründer im Gastgewerbe durch die zentralen Phasen der Betriebsgründung führt: von der ersten Orientierung über Registrierung, Geschäftskonzept und Betriebsbewilligung bis hin zur Finanzierung und zum ersten Vertrag.

Diese Customer Journey dient als Ausgangspunkt für die Modellierungsübung.
Aus ihr werden die relevanten Business Objects mit ihren Zuständen und Business Events identifiziert und in ArchiMate abgebildet.

== Methodisches Vorgehen
Die Arbeit verwendet die TOGAF Architecture Development Method (ADM) als primäres Prozess-Framework, ergänzt durch ArchiMate 3.1 als visuelle Modellierungssprache @opengroup2018togaf @opengroup2019archimate.
Wo die formale Notation für die Stakeholder-Kommunikation unnötigen Aufwand verursachte, wurden leichtgewichtige Canvas-Modelle als Zwischendarstellung eingesetzt.
Das Outside-In-Paradigma – die Verankerung architektonischer Veränderung in der Kundenerfahrung statt in internen IT-Belangen – dient durchgehend als übergeordnete Designphilosophie @ross2006enterprise.


// ── Chapter 2: Theoretical Foundation ───────────────────────────────────────

= Theoretische Grundlagen: Moderne EAM-Paradigmen

== Die Outside-In-Perspektive
Die traditionelle Enterprise-Architecture-Praxis war historisch von einer Inside-Out-Orientierung geprägt:
Technologie-Inventare, System-Rationalisierung und Infrastruktur-Optimierung sind die primären Eingaben.
Die Outside-In-Perspektive kehrt diese Logik um und behandelt die Customer Journey als primären architektonischen Treiber @temkin2010.
Architektonische Entscheidungen werden nicht an ihrer internen technischen Eleganz gemessen, sondern an ihrer messbaren Wirkung auf kundenseitige Ergebnisse.
Diese Verschiebung wird durch die capability-basierte Planung gestützt, die eine stabile Abstraktionsschicht zwischen volatilen Marktanforderungen und der sich langsamer verändernden Application-Landschaft bildet @ulrich2011.

Eine Customer Journey beschreibt die vollständige, durchgängige Abfolge von Erfahrungen, die eine definierte Persona im Zusammenspiel mit einer Organisation durchläuft – von der ersten Wahrnehmung über die aktive Auseinandersetzung bis zur Bewertung nach der Interaktion @lemon2016.
In einzelne Touchpoints zerlegt, erfasst sie an jeder Station sowohl die operative Dimension (was die Kundin tut) als auch die emotionale Dimension (wie die Kundin die Interaktion wahrnimmt).
Im Kontext des Enterprise Architecture Management fungiert die Customer Journey als primärer analytischer Treiber: Architektonische Entscheidungen werden nicht an ihrer internen technischen Qualität gemessen, sondern an ihrer messbaren Wirkung auf kundenseitige Ergebnisse @lemon2016 @temkin2010.

== Business Capability Management
Eine Business Capability definiert, was eine Organisation tut, unabhängig davon, wie es aktuell umgesetzt ist @ulrich2011.
Capabilities dienen als unveränderlicher Ankerpunkt, der die Kundenstrategie mit der IT-Umsetzung verbindet, weil sie über organisatorische Umstrukturierungen und Technologie-Erneuerungszyklen hinweg stabil bleiben.
In dieser Arbeit folgt das Capability Mapping der von der Business Architecture Guild empfohlenen Zerlegung auf Stufe drei und unterscheidet zwischen strategischen, Kern- und unterstützenden Capabilities @biz_arch_guild2017.

== Architektonische Guardrails und Governance
Ohne deterministische Engineering-Einschränkungen akkumulieren architektonische Entscheidungen als undokumentierte technische Schuld, die sich über einen IT-Lebenszyklus von zehn bis fünfzehn Jahren aufsummiert @fowler2018.
Guardrails – vorab genehmigte Patterns, Technologiestandards und Ausserbetriebnahme-Zeitpläne – verringern die Entscheidungslatenz auf Team-Ebene und bewahren zugleich die Kohärenz auf Portfolio-Ebene.
Governance ist in diesem Kontext kein bürokratisches Gate, sondern ein Feedback-Mechanismus, der lokale Entscheidungen mit der langfristigen strategischen Absicht in Einklang hält @zachman1987.
