 

== Feedback Jarchow 
+ Digitalisierung 
+ Integration und STandardisierung - je nach Gebiet (Autos, Karten) fortgeschritten 
+ es geht darum, ob man eine ist, soll oder zielarchitektur beschreibt 
+ Bund soll zu unification streben 
+ Widerspruch von Operating Model und Behörden (kein OM)
+ wer daten standardisiert hat die macht
+ Standards sind am Aufkommen

== Einarbeitung Feedback 

Wie modellieren: 

+ Il «partner pubblico» non è un'organizzazione che siede nella JV, è un layer di interoperabilità: interfacce standardizzate (eCH-0258 per lo scambio dati), governate dalla DVS, consumate da GastroStart dall'esterno. La frammentazione (26 Kantone × 2110 Gemeinden) sparisce dietro questo layer nella misura in cui gli standard arrivano — e oggi ci arrivano su base volontaria. In ArchiMate ti servono Application Interfaces/Services esposti dal lato autorità e consumati da GastroStart, con gli standard eCH come Contract/Requirement. I punti d'aggancio concreti li hai già nel tuo §4:, Nutzerkonto (AGOV, il login unico delle autorità), Handelsregistereintrag (Zefix/EHRA).
  
    Betreibungsregisterauszug / Automatizzare la fornitura di allegati - Vertrauensinfrastruktur che fornisce i documenti validi e certificati. 
Modelli GastroStart contro questi Basisdienste.

+ Ricordi il *contrasto imposte-vs-servizi* che avevamo costruito? Ora si chiude con una precisione quasi imbarazzante. Le imposte funzionano grazie a uno strumento vincolante (StHG, Art. 128/46 BV). I servizi alle imprese non ce l'hanno → oggi solo eCH volontario → la frammentazione trapela (il tuo stesso §4 lo mostra: Bewilligungen cantonali al 30–55%, «grösste Dematerialisierungslücke» nei formulari cantonali). E lo strumento vincolante mancante? Lo stanno decidendo adesso. Alla fine del 2025 Bundesrat e KdK hanno adottato il Zielbild della futura collaborazione federale, prendendo una decisione di principio per sviluppare la DVS verso una piattaforma politica con definizione vincolante degli standard. La Rahmenvereinbarung prevedeva che entro il 2026 fossero sottoposte ai Träger le basi decisionali per uno sviluppo della DVS incentrato su una definizione degli standard vincolante per tutti e tre i livelli statali — e l'evaluazione del 2024 aveva mostrato che il potenziale non è ancora sfruttato, in particolare nella promozione dell'interoperabilità e nella costruzione di infrastrutture e servizi di base condivisi @dvs_organisation_2022, @dvs_organisation_2022

+ "was wäre wenn": la sovranità cantonale (Art. 3 BV) e il fatto che gli atti sovrani non si possono delegare a una JV privata sono il terreno che stai analizzando. Falsificarlo nell'Ist rende il modello non mappabile su eCH e DVS — esattamente il timore che esprimi.

+ Lösung: *Zielzustand*
  + «Angenommen, es gäbe ein eServices-Harmonisierungsgesetz analog zum StHG — wie verschiebt sich das Operating Model der öffentlichen Akteure?» 





*incapsulabilità: *

digitalieierung pro capability 


--> eCH-0258:  

hai eCH-0258 nel materiale di progetto. Ma è pensato per attori che stanno dentro il perimetro delle autorità. Un consorzio privato non ci si può agganciare, non perché manchi la tecnologia, ma perché l'accesso all'infrastruttura di scambio è esso stesso condizionato dallo statuto di diritto pubblico.

Lo standard dichiara fuori perimetro sia l'autorizzazione e l'autenticazione, sia il tipo di integrazione, che va concordato tra i partner. Cioè: eCH-0258 normalizza il formato dei messaggi, ma non dice chi può collegarsi.
Esempi: e-doc / passar 

distinguo: prestazioni già offerte e "incapsulatili" come IVA, AVS, --> qui potrei scrivere che in un futuro non troppo lontano, queste prestazioni potranno essere incapsulabili perché disponibili tramite interfaccia (ech-0258) tra gastrostart e l'erogatore della prestazione. dentro a gastrostart, amira riceve una conferma "ufficiale" (non so se ci sono già esempi per un'interfaccia di questo tipo)

nella mia visione (che si baserà su una finzione di un futuro con una base legale adatta e operabile), portali come gastrostart potranno incapsulare servizi come l'annuncio AVS/AI e IVA. risolvo con la finzione.
conferma ufficiale: 
lavorerò sempre e ancora con finzione, sia legale che tecnica (per esempio ci doteremo di una tecnologia che permette di tracciare l'autenticità degli atti che passano attraverso l'interfaccia)
aggiunta alla finzione: l'utente sarà messo in condizione di fare un controllo sull'ufficialità dell'interfaccia - ci sono degli esempi per questo? come risolvere l'aspetto della fiducia dell'utente?

*strategia dvs*
Il BBl 2024 45 (Strategia DVS), cap. 5.2, dice che gli standard aperti devono garantire che le prestazioni amministrative digitali siano in futuro integrabili anche in piattaforme di servizio di operatori privati. È intenzione federale dichiarata. La tua visione non è una finzione a livello di politica: è politica già scritta, senza strumento. E il cap. 5.3 descrive l'infrastruttura di fiducia con Basisregister e Vertrauensregister, utilizzabile da enti pubblici e imprese per emettere e verificare attestati elettronici.

Il *registro di fiducia* è una capability nuova, e cade dritta nella casella in alto a destra della tabella: va unificata e non è incapsulabile. Chi lo tiene deve essere pubblico, e l'esclusione di un operatore è un atto d'autorità. Quindi anche la tua finzione più permissiva — un privato che veicola atti ufficiali — non elimina il sovrano: lo sposta. Non è un dettaglio, è un rafforzamento del tuo argomento. Il coordinamento volontario non può nemmeno produrre il registro che renderebbe credibile il coordinamento volontario.

 *meccanismo*
ti chiedi come l'utente possa controllare l'ufficialità dell'interfaccia. Il modello svizzero risponde invertendo la domanda: l'app mostra chiaramente quale organizzazione sta facendo la richiesta di dati e se questa è classificata come affidabile nel registro ufficiale della Confederazione. Cioè: l'ancora di fiducia non sta nel portale privato, sta in un componente statale che risiede presso l'utente. GastroStart non deve essere creduta. Deve solo essere riconoscibile da qualcosa che l'utente ha già e di cui si fida.


Il *registro di fiducia* è una capability nuova, e cade dritta nella casella in alto a destra della tabella: va unificata e non è incapsulabile. Chi lo tiene deve essere pubblico, e l'esclusione di un operatore è un atto d'autorità. Quindi anche la tua finzione più permissiva — un privato che veicola atti ufficiali — non elimina il sovrano: lo sposta. Non è un dettaglio, è un rafforzamento del tuo argomento. Il coordinamento volontario non può nemmeno produrre il registro che renderebbe credibile il coordinamento volontario.

= Gedanken zum RSM (Goal: User Experience)
== Ablauforganisation 
== Rollen
== Arbeitsplatz
== Kanäle
- Web 
- Mobile first?
== Interaktionskomponenten 
- Human Interfaces (HMI
- Arbeitsplatz berücksichtigen
- Machine to Machine (MMI)
