---
type: post
date: "2021-04-01T08:52:20+02:00"
title: "Grappen terzijde: de snelste link shortener ter wereld"
tags:
    - Nederland
    - once.to
    - nieuws
    - internet
    - web
    - Yktoo Solutions
    - software
    - link shortener
image: "https://res.cloudinary.com/yktoo/image/upload/blog/hsrz3lvxzubnlp4yjzbf.png"
series: once.to
---

Al is het 1 april vandaag, ik heb wel een serieuze mededeling voor jullie! Ik will jullie graag vertellen over wat me de afgelopen zes maanden bezighield — die een bijzonder drukke, interessante en leerzame tijd bleek te zijn.

In het kort, bij [Yktoo Solutions](https://once.to/ysol) zijn we bezig met het bouwen van de **beste link shortener ter wereld**. De shortener heet **[once.to](https://once.to/once)**.

Lees verder voor een intrigerend verhaal over wat dat allemaal is en waarom het zo fascinerend is.

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hsrz3lvxzubnlp4yjzbf.png" >}}

## Link shortener

Maar eerst, laten we eerst even kennismaken met link shorteners om te begrijpen waarom en hoe die worden gebruikt. (En als je dat al weet dan kun je dit stuk gerust overslaan.)

Je bent ongetwijfeld bekend met web-adressen, ofwel {{< wiki "URL" "nl" "URLs" >}}, die zich veelal in de adresbalk van je browser bevinden.

Er wordt steeds meer informatie geproduceerd op het internet en daardoor worden de adressen ook steeds ingewikkelder. Ze bestaan vaak uit allerlei vreemde symbolen en parameters, en als je nationale letters — zoals cyrillisch — in je URL hebt, dan wordt het echt een drama. In dat laatste geval worden de tekens conform de {{< wiki "Percent-encoding" "en" "percent-encoding" >}} geëncodeerd, wat meestal een onleesbare puinhoop oplevert, zoals:

`https://yktoo.com/ru/blog/post/2021/04/01-%D1%88%D1%83%D1%82%D0%BA%D0%B8-%D0%B2-%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%83-%D1%81%D0%B0%D0%BC%D1%8B%D0%B9-%D0%B1%D1%8B%D1%81%D1%82%D1%80%D1%8B%D0%B9-%D1%81%D0%BE%D0%BA%D1%80%D0%B0%D1%89%D0%B0%D1%82%D0%B5%D0%BB%D1%8C-%D1%81%D1%81%D1%8B%D0%BB%D0%BE%D0%BA-%D0%B2-%D0%BC%D0%B8%D1%80%D0%B5/`

De intimiderende URL hierboven leidt trouwens naar deze post in het Russisch.

Zo'n logge URL is natuurlijk onmogelijk uit te spreken of in te typen; ik deel dat ook niet zo snel op sociale media of messengers, omdat het er rommelig uitziet.

Om dit probleem aan te pakken, heeft de mensheid al geruime tijd geleden *link shorteners* (ook bekend als *URL shorteners*) uitgevonden. Er zijn er genoeg te vinden: `bit.ly` en `tinyurl.com` om er maar een paar te noemen.

Het idee achter een shortener is recht toe recht aan: je voert de volledige URL in en krijgt meteen een veel kortere URL terug. Als voorbeeld, voor de bovenstaande link kreeg ik [1e.to/8P2Fn5](https://1e.to/8P2Fn5).

Wanneer iemand die korte link later probeert te openen, wordt zijn browser automatisch omgeleid naar de oorspronkelijke, lange URL, terwijl de shortener service de gebruikersgegevens netjes registreert. Dankzij die gegevens kan de eigenaar van de link de statistieken ervan en het gedrag van de gebruikers later analyseren.

Volgens sommige studies krijgen korte links tot **39%** meer kliks in vergelijking met generieke URL’s. En, vanzelfsprekend, zijn ze veel makkelijker te delen.

## Beter: sneller, netter, goedkoper

Oké, maar waarom hebben we nog een link shortener nodig, vraag je je misschien af.

We zijn ervan overtuigd dat we in staat zijn om een service te bouwen die **simpelweg beter** is. We hebben de beste ontwikkelaars en ontwerpers in de wereld van link shorteners. We kiezen voor de slimste oplossingen en technologieën. En we hanteren strikte kwaliteitsnormen die zorgen voor ongeëvenaarde prestaties en een bugvrije ervaring voor onze gebruikers.

[once.to](https://once.to/once)'s slogan — **De snelste link shortener ter wereld** — is onderbouwd door onze [prestatievergelijking](https://once.to/fast) met andere (tijdelijk) populairdere analogen.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/adbyy2vbx5wexge1dtfx.svg" "De throughput van once.to vergeleken met soortgelijke services." >}}

Waarom is de prestatie van belang?

Zoals je misschien al gehoord hebt, hebben zoekmachines de neiging om trage websites [af te straffen](https://developers.google.com/web/updates/2018/07/search-ads-speed) door ze lager in hun zoekresultaten te plaatsen. En terecht: volgens de [statistieken van Google](https://www.thinkwithgoogle.com/consumer-insights/consumer-trends/mobile-site-load-time-statistics/), hakt ruim de helft (!) van de bezoekers af als het meer dan drie seconden duurt om een website te openen:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1617274911/blog/derdrpazmsbyojyupfeu.png" "Het percentage afgebroken bezoeken voor sites die langer dan 3 seconden geladen moeten worden. Bron: Google." >}}

Overweeg je nog steeds `t.ly` te gebruiken, waarbij het [gemiddeld 2.81 s duurt](https://once.to/fast) om *alleen je bezoeker door te verwijzen* naar je website?

## Nog beter

We zijn zeer ambitieus en ongelooflijk productief: alles wat je in [onze webapplicatie](https://once.to/once) ziet is gedurende het afgelopen halfjaar *van nul af aan* ontwikkeld.

{{< spoiler "Technologieën die we gebruiken" >}}
Een paar woorden over de gebruikte technologie:

* Onze backend is a gedistribueerd systeem gebouwd op basis van {{< wiki "Go_(programmeertaal)" "nl" "Go" >}} en {{< wiki "MongoDB" >}}.
* De frontend is geïmplementeerd met {{< wiki "Angular" >}}.
* Onze projecten worden gebouwd door een volautomatische CI-pipeline in {{< wiki "GitLab" >}} en afgetest door duizenden automatische testen.
* De service draait in een {{< wiki "Kubernetes" "en" >}} cluster, waarbij het vrijwel onbeperkt {{< wiki "horizontal scaling" "en" "horizontaal schaalbaar" >}} is.
{{< /spoiler >}}

We zijn natuurlijk pas in het begin van onze route en we hebben nog vele uitdagingen voor de boeg. Maar de belangrijkste maatstaven voor ons blijven altijd de **kwaliteit** en de **functionaliteit** van ons product, wat zich onvermijdelijk zal vertalen in de beste prijs/prestatieverhouding voor de eindgebruiker.

Momenteel biedt **once.to** een [gratis serviceplan en nog twee betaalde plans](https://once.to/free), met uitgebreidere features.

Vandaag kondigen we de openbare beta beschikbaarheid van onze service aan. Iedereen komt in aanmerking voor een **gratis proefperiode** van **30** dagen gedurende deze fase.

## Wat zit er al in

Wat we momenteel aanbieden:

* Een razendsnelle redirect-engine met een gemiddelde redirect-tijd van ca. **65 milliseconden**.
* Een mogelijkheid om "anonieme" korte links aan te maken op de [hoofdpagina](https://once.to/once).
* Voor een geregistreerde gebruiker:
    * Een dashboard met complete redirect-statistieken.
    * Eigen domeinen om korte links aan te maken, met geautomatiseerde uitgifte van SSL-certificaten door [Let's Encrypt](https://once.to/lets).
    * Twee gelijkwaardige "community" domeinen voor korte links: `once.to` en `1e.to`.
    * Branded (gecustomizede) links.
    * Links met een afloopdatum, die op een bepaald moment vervallen.
    * Toekomstige links, die pas vanaf een bepaald moment werken.
    * Het bijwerken en verwijderen van links.
    * Het tijdelijke of permanente uitschakelen van links.
    * Link QR-codes.
    * Geavanceerde statistieken, met onder andere cijfers per browser, devicetype, taal, land etc.
    * HTTP-redirects van type **301** (permanent) en **302** (tijdelijk).
* Meertalige interface voor Nederlands, Engels en Russisch.
* Webapplicatie die ook voor een mobiel scherm ontwikkeld is.
* [Productdocumentatie](https://docs.once.to/en/) (nu nog een beetje beperkt maar groeiend).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xdfx7qliv8emldv3qqib.png" "Het dashboard van once.to." >}}

## Onze ambities

Als het om onze plannen gaat, is de lijst nog veel, veel langer. Om maar een paar van onze geprioriteerde taken te noemen:

* Flexibelere statistieken.
* "Slimme" redirects die de gebruiker doorsturen naar verschillende URLs op basis van zijn taal/land/toestel/browser enz.
* Links beveiligd met een wachtwoord.
* Link tags.
* Linkexport en -import.
* Login via sociale netwerken.
* Downloadbare statistische rapporten.

## Beta-versie

De service is momenteel in actieve ontwikkeling, er worden vrijwel dagelijks nieuwe functies toegevoegd aan [once.to](https://once.to/once).

Er komt in de nabije toekomst ook een blog voor **once.to**. In de tussentijd, voel je vrij om te spelen met de service en je korte links te delen! Volg ons ook op [Facebook](https://www.facebook.com/once.to.links), [Twitter](https://twitter.com/once__to) en [LinkedIn](https://www.linkedin.com/company/once-to/).

Tot snel!
