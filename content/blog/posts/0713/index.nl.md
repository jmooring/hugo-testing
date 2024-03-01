---
type: post
date: "2020-04-02T15:00:25+02:00"
title: "Versie 2.0.0"
tags:
    - GitHub
    - InfoPi
    - Angular
    - Raspberry Pi
    - gadgets
    - domotica
    - doe-het-zelf
    - software
image: "https://res.cloudinary.com/yktoo/image/upload/blog/rs1f9dcy8kkwtsdsuld3.jpg"
series: infopi
software: infopi
---

Mijn infokiosk applicatie voor *Raspberry Pi*, bekend als [InfoPi](en;/software/infopi), heeft eindelijk een grote verandering ondergaan.

Vier jaar geleden [schreef](en;0278) ik over de initiële implementatie van InfoPi. Laten we nu even bekijken wat er allemaal in de nieuwe versie zit.

<!--more-->

## Tweede versie

Deze tweede incarnatie van *InfoPi* is bijna helemaal opnieuw ontwikkeld. Om maar eens een paar punten te noemen:

* De code is gemigreerd van *AngularJS* naar *Angular 9*.
* De Python-backend (webserver) wordt niet meer gebruikt.
* De applicatie kan worden gebundeld met de [Electron](https://www.electronjs.org/) browser in een `.deb`-pakket, dat vervolgens makkelijk uitgerold kan worden op je Raspberry Pi met behulp van het `dpkg` commando.
* De webpagina heeft ook een facelift ondergaan.

## Display

Tegenwoordig ziet er het applicatiescherm als volgt uit:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wnaauxybvl1limkdx8mi.jpg" "InfoPi 2.0.0 screenshot." >}}

Als je het tegen de vorige versie vergelijkt:

* De weerdetails zijn naar boven verplaatst.
* De Buienradar animatie is verschoven naar links.
* Aan de rechterkant van de Buienradar wordt nu de weersvoorspelling getoond.
* Trein- en busvertrektijden zitten nu zij aan zij.
* Cryptocurrency wisselkoersen zijn weggegooid.
* Er is een RSS-newsfeed bijgekomen.

Ik ben vooral trots op de splinternieuwe temperatuurgrafieken binnen de weersvoorspelling tegel (geïmplementeerd met [Chart.js](https://www.chartjs.org/)):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1585833788/blog/hag7jpcjyxtfv7fdfjjf.jpg" "InfoPi's temperatuurgrafiek." >}}

Hierop worden de laag- en de hoogwaarden van de luchttemperatuur weergegeven volgens de Buienradar. Wat ook opvallend is is dat naarmate de voorspelling verder in de toekomst ligt, het betrouwbaarheidsinterval breder wordt.

## Angular

Zoals je wellicht al weet, als je van *AngularJS* naar een latere *Angular* versie moet migreren, meestal betekent dat dat je de gehele code *from scratch* moet herschrijven. Dat heb ik ook gedaan.

Daarnaast heb ik ook de Python backend verwijderd. De enige functie daarvan was het omzeilen van het {{< wiki "Cross-origin_resource_sharing" "nl" "CORS" >}}-beleid van de browser dat ervoor zorgt dat een webpagina geen verzoek mag sturen richting een ander domein (zoals NS API).

In de laatste *InfoPi* versie wordt er een CORS proxy gebruikt (bijvoorbeeld [CORS Anywhere](https://cors-anywhere.herokuapp.com/)) tijdens de ontwikkeling en debugging. Dit brengt trouwens het risico van het delen van je persoonlijke API token met een onbekende partij met zich mee.

In de productie versie, die in Electron draait, wordt het CORS-beleid uitgeschakeld op het browser niveau. Omdat *InfoPi* een niet-interactief systeem is dat de gegevens alleen laat zien maar niet bewerken, loop je ook geen risico's van de uitgeschakelde browser beveiliging.

## Ziet er goed uit!

Als je interesse hebt in het bouwen van je eigen *InfoPi* instantie, dan kun je het beste [deze GitHub repository](https://github.com/yktoo/infopi) raadplegen.

Deze repository stelt o.a. een voorbeeld configuratiebestand (`src/environments/config.sample.ts`) ter beschikking. Dat moet worden gekopieerd en aangepast: je hoeft alleen maar de stappen uit de README te doorlopen.

## Plannen

Tests, meer tests!
