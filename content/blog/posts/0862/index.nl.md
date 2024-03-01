---
type: post
date: "2023-04-07T15:45:31+02:00"
title: "Commento is dood. Lang leve Comentario!"
tags:
    - cloud
    - Commento
    - Comentario
    - Disqus
    - Docker
    - Linux
    - web
    - software
    - softwareontwikkeling
    - Go
image: "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png"
series: comentario
software: comentario
---

Ik gebruikte Commento, de webcomment-engine, al een tijdje zowel op deze website als op enkele andere sites. Ik heb destijds zelfs [een post geschreven (in het Engels)](en;0350) over het draaien van Commento met Docker Compose. Enkele jaren geleden was Commento een gratis en lichtgewicht alternatief voor Disqus, Facebook Comments en dergelijke.

Maar Commento is nu dood. Darom heb ik besloten het opnieuw te lanceren onder de nieuwe naam **[Comentario](https://comentario.app/)** (ja, met één *m*)!

<!--more-->

## Commento is verlaten

Op een gegeven moment hield de ontwikkeling van Commento op. Er is geen enkele wijziging geweest in de afgelopen twee jaar, en nog langer geen significante verbetering. Het project is duidelijk verlaten ongeacht de steeds groeiende [lijst van issues](https://gitlab.com/commento/commento/-/issues).

Op een dag voelde ik dat ik het helemaal zat was en besloot ik zelf er een alternatief voor te ontwikkelen (net zoals ik vroeger deed met de [Sound Switcher Indicator](en;/software/sound-switcher-indicator) en [Ymuse](/software/ymuse), wat uiteindelijk een prima oplossing bleek).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png" >}}

## Ontmoet Comentario

Dus ik ben begonnen aan een lange tocht om de commentserver te herimplementeren.

Ik heb het {{< fl "Comentario" >}} genoemd. Het is Spaans voor "commentaar" en dat relateert hem aan {{< fl "Commento" >}}, wat hetzelfde in Italiaans betekent.

Eenvoudig gezegd is **[Comentario](https://comentario.app/)** een **volledig herschreven** Commento. De versionering ervan [begon](https://gitlab.com/comentario/comentario/-/releases) vanaf **2.0.1** (voortbouwend op de versie 1.8.0 van zijn voorganger).

Alle drie onderdelen zijn in Comentario opnieuw geïmplementeerd:

* Backend (Go)
* Integreerbaar deel (Typescript dat getranspileerd wordt naar ES6 Javascript)
* Administratieve UI (Angular)

Tot aan de laatste [release 2.3.0](https://gitlab.com/comentario/comentario/-/releases/v2.3.0) blijft Comentario compatibel met de originele database van Commento, maar de gehele codebase is volledig verwerkt.

## Wat is er anders?

Waarin verschilt Comentario van zijn voorganger Commento? Er is uiteraard een enorme lijst van veranderingen als gevolg van de hoeveelheid verricht werk.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1680877677/blog/qyoppijmu3zffyk9usah.png" "De Administratieve UI van Comentario." "border shadow" >}}

Op dit moment biedt Comentario minstens dezelfde functionaliteit als Commento, of meer. Hieronder worden enkele noemenswaardige verschillen genoemd:

* Comentario maakt gebruik van allerlaatste softwareversies: Go 1.20, Postgres 15.x (oudere versies worden ook ondersteund tot 9.6), ES6 enz.
* Alle issues met OAuth identityproviders (Google, GitHub, GitLab, Twitter) zijn opgelost, ook met gebruikersavatars.
* Het **integreerbare deel**:
    * Code is gemoderniseerd en herimplementeerd m.b.v. Typescript.
    * Layouts zijn geoptimaliseerd voor alle schermafmetingen.
    * Login, Signup en Markdown Help zijn popupdialogen geworden.
    * Login, Signup en Comment Editor gebruiken het `form` HTML-element en de juiste `autocomplete`-attribuutwaarden, waardoor ze compatibel zijn geworden met wachtwoordmanagers.
    * Verbeteringen t.o.v. WCAG (accessibility), inclusief toetsenbordnavigatie.
    * Er zijn subtiele animaties toegevoegd.
    * Ondersteuning voor toetsen in dialogen (<kbd>Escape</kbd> annuleert, <kbd>Enter</kbd> (<kbd>Ctrl</kbd><kbd>Enter</kbd> in een multiline-veld) past de dialoog toe).
    * Heleboel andere issues en inconsistenties zijn opgelost.
* De **Administratieve UI**:
    * Ondersteuning voor alle schermafmetingen, vanaf mobieltelefoons tot XL-desktops;
    * Ondersteuning voor meertalige UI;
    * Nieuw dashboardscherm dat statistieken voor al je domeinen toont;
    * Degelijke authenticatie o.b.v. HTTP-only cookies;
    * Uitvoerige invoervalidatie;
    * Domein klonenfunctie;
    * Domein data-export downloadt de dumpfile i.p.v. versturen downloadlink via e-mail;
  * Automatische end-to-endtesten met Cypress om regressies te voorkomen (in uitvoering).

## Prestaties

In alle eerlijkheid, het datamodel van Commento was onvolwassen en vreemd. Het maakte gebruik van bizarre ontwerpbeslissingen, wat resulteerde in enorme prestatieverlies.

Een van zijn belangrijkste functies, het laden van commentaren, gebruikte een database query om alle commentaren op de pagina te laden, vervolgens *een query voor elke commentator* om hun gegevens te laden, en bovendien nog *een query voor elk commentaar* om commentaarstemmen op te halen. Dit was — op zijn zachtst gezegd — gewoon verschrikkelijk. Stel, je had een pagina met **500** commentaren van **100** commenters: het laden van commentaren voor deze ene pagina zou **601** SQL-queries genereren!

Comentario lost die krankzinnigheid op door *alle commentaren, stemmen en commentatoren in één query* binnen te halen.

Er waren tal van andere plaatsen waar de interactie met de database niet optimaal was, zij het niet zo opvallend als in het bovengenoemde geval. Comentario heeft ook enkele resource-leaks aangepakt, robuuste foutafhandeling geïmplementeerd en talrijke problemen in de beveiliging en invoervalidatie opgelost.

Tot aan de huidige Comentario [versie **2.3.0**](https://gitlab.com/comentario/comentario/-/releases/v2.3.0) blijft de databasestructuur ongewijzigd; ik heb besloten me eerst te concentreren op het verbeteren van de server- en de cliëntcode, maar het datamodel is zeker de eerstvolgende op mijn prioriteitenlijst.

## Wat is het volgende?

Dit is nog maar het begin, want ik ben van plan veel nieuwe coole functies toe te voegen (die in Commento ontbraken).

Voel je vrij om:

* Een commentaar [hieronder](#blog-post-comments) achter te laten (m.b.v. Comentario natuurlijk!);
* Comentario [demowebsite](https://demo.comentario.app/) uit te proberen;
* [Comentario-documentatie](https://docs.comentario.app/) te bestuderen;
* Een issue [op GitLab](https://gitlab.com/comentario/comentario) in te schieten;
* [Comentario 2.3.0](https://gitlab.com/comentario/comentario/-/releases/v2.3.0) te downloaden en installeren.
