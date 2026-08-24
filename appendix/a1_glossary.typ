// ── Anhang: Glossar ───────────────────────────────────────────────────────

= Glossar

Dieses Glossar erklärt die im Dokument verwendeten fachlichen und methodischen Begriffe kurz und nennt, wo vorhanden, gebräuchliche Synonyme oder im Text verwendete Alternativbezeichnungen. Es erhebt keinen Anspruch auf Vollständigkeit ausserhalb des Kontexts dieser Arbeit.

#figure(
  block(width: 100%, breakable: true)[
    #set text(size: 9pt)
    #table(
      columns: (3.4cm, 1fr),
      inset: 6pt,
      stroke: 0.4pt,
      fill: (x, y) => if y == 0 { luma(210) } else if calc.odd(y) { luma(248) } else { white },
      align: (left, left),

      [*Begriff*], [*Erklärung*],

      [ADM],
      [Siehe #emph[TOGAF ADM].],

      [AGOV],
      [Login- und Identitätsdienst der Schweizer Behörden; wird im Dokument als Beispiel eines Identity-Access-Management-Dienstes genannt (z. B. für das Produkt kiBon).],

      [Anti-Corruption Layer (ACL)],
      [Architekturmuster, das ein System vor unerwünschten Abhängigkeiten zu einem anderen, meist älteren System abschirmt, indem es Datenmodelle und Schnittstellen übersetzt.],

      [API #linebreak() (Application Programming Interface)],
      [Programmierschnittstelle, über die Systeme strukturiert Daten und Funktionen austauschen. #emph[Syn.: Schnittstelle.]],

      [API-First],
      [Architekturansatz, bei dem eine Programmierschnittstelle vor der eigentlichen Anwendung konzipiert wird, um Integrierbarkeit sicherzustellen.],

      [API-Gateway],
      [Zentrale Komponente, die eingehende API-Aufrufe bündelt, sichert und an die zuständigen Backend-Dienste weiterleitet.],

      [ArchiMate],
      [Offener Modellierungsstandard der The Open Group zur Darstellung von Unternehmensarchitekturen über die Schichten Business, Application und Technology @opengroup2019archimate.],

      [Bonitätsprüfung],
      [Automatisierte Beurteilung der Kreditwürdigkeit einer Person oder eines Unternehmens anhand definierter Kriterien. #emph[Syn.: Scoring.]],

      [Business Capability],
      [Siehe #emph[Geschäftsfähigkeit].],

      [Business Model Canvas],
      [Einseitiges Rahmenwerk zur Visualisierung eines Geschäftsmodells; Vorlage für das in dieser Arbeit verwendete Strategic Alignment Canvas @osterwalder2010.],

      [Business Object],
      [Siehe #emph[Geschäftsobjekt].],

      [Business Process],
      [Siehe #emph[Geschäftsprozess].],

      [CI/CD #linebreak() (Continuous Integration / Continuous Deployment)],
      [Automatisierte Praxis, Codeänderungen laufend zu integrieren, zu testen und auszuliefern.],

      [Customer Journey],
      [Die entlang der Erfahrung eines externen Kunden erzählte Abfolge von Phasen und Touchpoints, mit der eine Unternehmensarchitektur von aussen nach innen (Outside-In) hergeleitet wird @Spichiger2026GFbUA.],

      [Dematerialisierung],
      [Methodischer Schritt im RIM-Vorgehen, bei dem von den physischen und technischen Ressourcen einer Unternehmung abstrahiert wird, um deren Geschäftsobjekte, Zustände und Transaktionen ressourcenunabhängig zu modellieren. Gegenstück: #emph[Rematerialisierung].],

      [DVS #linebreak() (Digitale Verwaltung Schweiz)],
      [Strategisches Programm bzw. Trägerschaft von Bund, Kantonen und Gemeinden zur gemeinsamen digitalen Verwaltung in der Schweiz.],

      [eCH-Standards],
      [Vom Verein eCH herausgegebene, in der Regel freiwillige Schweizer E-Government-Standards für den Datenaustausch zwischen Behörden und Dritten, z. B. eCH-0258.],

      [EDIFACT],
      [Internationaler Standard für den elektronischen Austausch strukturierter Geschäftsdokumente (z. B. Bestellungen, Lieferavis, Rechnungen) zwischen Handelspartnern.],

      [eID],
      [Elektronischer Identitätsnachweis, mit dem sich eine Person gegenüber einem digitalen Dienst authentifiziert.],

      [EIAM],
      [Eidgenössisches Identity- und Access-Management; Basis für den eID-Login der Bundeskanzlei.],

      [EHRA],
      [Eidgenössisches Handelsregisteramt; koordiniert den Betrieb des Handelsregisters, u. a. über Zefix.],

      [Enterprise Architecture (EA)],
      [Siehe #emph[Unternehmensarchitektur].],

      [Enterprise Architecture Management (EAM)],
      [Die Disziplin, mit der eine Unternehmensarchitektur geplant, gesteuert und weiterentwickelt wird.],

      [FINMA #linebreak() (Eidgenössische Finanzmarktaufsicht)],
      [Aufsichtsbehörde über Banken, Versicherungen und weitere Finanzintermediäre in der Schweiz. Sie stellt eigene Anforderungen und anerkennt zusätzlich Selbstregulierungen der Branche als verbindlichen Mindeststandard; im Dokument im Kontext der regulatorischen Vorgaben an die Kreditanbahnung genannt. Siehe auch #emph[SBVg].],

      [Geschäftsfähigkeit],
      [Stabiler, redundanzfreier Baustein der funktionalen Dekomposition einer Unternehmung; abstrahiert von den sie unterstützenden Ressourcen, wird aber von diesen unterstützt @Spichiger2026GFbUA. #emph[Syn.: Business Capability, Fähigkeit.]],

      [Geschäftsobjekt],
      [Kapselt die statische Struktur des RIM: ein zentral wesentlicher, dematerialisierter Bestandteil des Unternehmenskontexts mit eigenen Zuständen @Spichiger2026GFbUA. #emph[Syn.: Business Object.]],

      [Geschäftsprozess],
      [Aggregation inhaltlich zusammenhängender Geschäftstransaktionen zu einem Ablauf. #emph[Syn.: Business Process.]],

      [Geschäftstransaktion],
      [Vorgang, der ein Geschäftsobjekt von einem Zustand in einen anderen überführt, mit definierten Inputs und Outputs. #emph[Syn.: Business Transaction.]],

      [GS1],
      [Internationale Organisation für Standards in der Lieferkette (u. a. Barcodes, Artikelnummern); im Dokument im Kontext der EDIFACT/GS1-Kontrakte mit Transgourmet erwähnt.],

      [Human-in-the-Loop],
      [Vorgehensmodell, bei dem KI-generierte Inhalte durchgehend von einer Person initiiert, gesteuert und verantwortet werden.],

      [IAM #linebreak() (Identity & Access Management)],
      [Verwaltung von digitalen Identitäten und deren Zugriffsrechten auf Systeme und Ressourcen.],

      [IBAN],
      [International Bank Account Number; eindeutige Kontonummer im internationalen Zahlungsverkehr.],

      [Inside-Out],
      [Modellierungsperspektive, die von den bestehenden Ressourcen, Systemen und Prozessen eines Unternehmens ausgeht. Gegenstück: #emph[Outside-In].],

      [Kernel Type],
      [Klassifikation eines Geschäftsobjekts nach seiner grundlegenden Natur (z. B. Contract, Data Object, Document, Entity, Event).],

      [Legacy-System],
      [Bestehendes, oft älteres System, dessen Modernisierung, Ablösung oder Weiterbetrieb eigens gesteuert werden muss (#emph[Legacy-Management]).],

      [Line of Failure],
      [Punkt in einer Journey bzw. einem Service Blueprint, an dem der Prozess ohne manuellen Eingriff strukturell nicht fortgesetzt werden kann @stickdorn2011.],

      [MFA #linebreak() (Multi-Factor Authentication)],
      [Authentifizierungsverfahren, das mindestens zwei unabhängige Nachweise der Identität verlangt.],

      [Microservices],
      [Architekturstil, bei dem eine Anwendung aus kleinen, unabhängig deploybaren Diensten besteht. Gegenstück: #emph[Monolith].],

      [Monolith],
      [Anwendung, die als eine zusammenhängende Einheit deployt wird, ggf. intern in Module gegliedert (#emph[modularer Monolith]). Gegenstück: #emph[Microservices].],

      [Operating Model],
      [Klassifikation nach Ross, Weill und Robertson entlang der Achsen Prozessstandardisierung und Datenintegration; die vier Ausprägungen sind Diversification, Coordination, Replication und Unification @ross2006enterprise.],

      [Outside-In],
      [Modellierungsperspektive, die bei der Erfahrung des externen Kunden (Customer Journey) ansetzt und daraus die Anforderungen an die Architektur ableitet. Gegenstück: #emph[Inside-Out].],

      [Pain Point],
      [Punkt in der Customer Journey, an dem der Kunde Reibung, Frustration oder ein ungelöstes Bedürfnis erlebt.],

      [Persona],
      [Fiktive, aber realistisch modellierte Nutzerin, die die Bedürfnisse einer Zielgruppe stellvertretend verkörpert und als Anker der Outside-In-Perspektive dient (in dieser Arbeit: Amira).],

      [Rematerialisierung],
      [Rückführung eines ressourcenunabhängig modellierten Geschäftsobjekts bzw. -prozesses auf konkrete Ressourcen, Systeme und Verantwortlichkeiten. Gegenstück: #emph[Dematerialisierung].],

      [Resource Independent Model (RIM)],
      [Ressourcenunabhängiges Modell einer Unternehmung, bestehend aus Geschäftsobjekten, deren Zuständen, Geschäftstransaktionen, Geschäftsprozessen und Geschäftsfähigkeiten @Spichiger2026GFbUA. #emph[Syn.: ressourcenunabhängiges Modell.]],

      [Resource Support Model (RSM)],
      [Modell der Ressourcen (Rollen, Kanäle, Arbeitsplätze, Interaktionskomponenten), die ein RIM konkret unterstützen; Ergänzung zum RIM auf der Ressourcenebene.],

      [SaaS #linebreak() (Software as a Service)],
      [Betriebsmodell, bei dem Software zentral betrieben und den Kundinnen und Kunden als Dienst zur Nutzung bereitgestellt wird.],

      [SBVg #linebreak() (Schweizerische Bankiervereinigung)],
      [Branchenverband der Schweizer Banken. Ihre #emph[Richtlinien] sind Selbstregulierung der Branche --- für die Kreditanbahnung namentlich die Mindestanforderungen bei Hypothekarfinanzierungen sowie die Richtlinien zur Prüfung, Bewertung und Abwicklung grundpfandgesicherter Kredite. Von der #emph[FINMA] anerkannte Richtlinien gelten als verbindlicher Mindeststandard und werden aufsichtsrechtlich durchgesetzt.],

      [Self-Contained System (SCS)],
      [Architekturmuster, bei dem eine fachliche Domäne inklusive Benutzeroberfläche, Logik und Daten als eigenständiges, lose gekoppeltes System realisiert wird.],

      [Service Blueprint],
      [Darstellung eines Dienstleistungsprozesses, die neben der sichtbaren Kundeninteraktion (Frontstage) auch die dahinterliegenden, unsichtbaren Abläufe (Backstage) abbildet @stickdorn2011.],

      [Strangler-Fig-Pattern],
      [Migrationsmuster, bei dem ein Legacy-System schrittweise durch neue Services ersetzt wird, statt es in einem Schritt vollständig abzulösen.],

      [Strategic Alignment Canvas],
      [Einseitiges, vom Business Model Canvas abgeleitetes Format, das architektonische Initiativen den strategischen Zielen einer Organisation gegenüberstellt @osterwalder2010.],

      [StHG],
      [Steuerharmonisierungsgesetz; harmonisiert die Steuergesetzgebung zwischen Bund und Kantonen und wird im Dokument als Beispiel eines verbindlichen Instruments vertikaler Zusammenarbeit angeführt.],

      [TOGAF #linebreak() (ADM)],
      [The Open Group Architecture Framework mit seiner Architecture Development Method (ADM), einem iterativen Phasenzyklus zur Erarbeitung einer Unternehmensarchitektur @opengroup2018togaf.],

      [Total Cost of Ownership (TCO)],
      [Summe aller direkten und indirekten Kosten eines Systems oder einer Capability über dessen bzw. deren gesamten Lebenszyklus.],

      [Touchpoint],
      [Konkreter Berührungspunkt zwischen Kunde und System bzw. Organisation innerhalb einer Customer Journey.],

      [Unternehmensarchitektur],
      [Die grundlegende Struktur einer Organisation, bestehend aus ihren Geschäfts-, Anwendungs-, Daten- und Technologie-Elementen sowie deren Beziehungen. #emph[Syn.: Enterprise Architecture, EA.]],

      [Value Driver],
      [Architektonische bzw. organisatorische Massnahme, die einen identifizierten Pain Point in einen Mehrwert für den Kunden überführt.],

      [Zefix],
      [Zentraler Firmenindex der Schweiz; öffentliches Register der im Handelsregister eingetragenen Unternehmen.],

      [Zustandsübergang],
      [Wechsel eines Geschäftsobjekts von einem Zustand in einen anderen, ausgelöst durch eine Geschäftstransaktion.],
    )
  ]
) <tbl-glossar>
