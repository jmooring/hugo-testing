---
title: Ymuse
subtitle: Makkelijke, functionele en snelle cliëntapplicatie voor Music Player Daemon.
layout: product
icon: ymuse-icon-64.png
software: ymuse
weight: 20
menu: ymuse
active: true
codeRepoType: github
codeRepoPath: yktoo/ymuse
licenses:
    - apache2
seeAlso:
    - name: Ymuse in Snapcraft
      url: https://snapcraft.io/ymuse
    - name: Ymuse in AUR
      url: https://aur.archlinux.org/packages/ymuse
    - name: Ymuse-bin in AUR
      url: https://aur.archlinux.org/packages/ymuse-bin
    - name: Ymuse Flathub-repository
      url: https://github.com/flathub/com.yktoo.ymuse
---

**Ymuse** is een makkelijke, functionele en snelle front-end voor [Music Player Daemon](https://www.musicpd.org/) geschreven in Go.

{{< carousel >}}
https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png Ymuse hoofdvenster (Wachtrij-tabblad).
https://res.cloudinary.com/yktoo/image/upload/blog/cwcmqjichatv2yklt2fu.png Ymuse hoofdvenster: lichtthema.
https://res.cloudinary.com/yktoo/image/upload/blog/wjiqs1dyzbrvppslficd.png Ymuse hoofdvenster: donkerthema.
https://res.cloudinary.com/yktoo/image/upload/blog/wqud8spomcmuduvgar9d.png Ymuse Mediatheek-tabblad.
https://res.cloudinary.com/yktoo/image/upload/blog/pnwj9nlucfuobw0vcv0l.png Ymuse Streams-tabblad.
https://res.cloudinary.com/yktoo/image/upload/blog/tgvhoi8k04gsgod6jvsa.png Ymuse Instellingen: Algemeen
https://res.cloudinary.com/yktoo/image/upload/blog/lgnnkthbnj5hk4uu5pwm.png Ymuse Instellingen: Interface
https://res.cloudinary.com/yktoo/image/upload/blog/m4q41rd2klmfrcdft7nx.png Ymuse Instellingen: Automatisering
https://res.cloudinary.com/yktoo/image/upload/blog/vile5cveex5bd4vefg6e.png Ymuse Instellingen: Speler
https://res.cloudinary.com/yktoo/image/upload/blog/vrqyquxgoncgxygly6kk.png Ymuse Instellingen: Kolommen
{{< /carousel >}}

## Kenmerken van Ymuse

* Verbinding met een lokale of remote MPD server via TCP of Unix domainsocket, automatisch verbinding maken en herstellen.
* Weergeven, sorteren en schudden van de afspeelwachtrij. Slepen en verwijderen van tracks.
* Filteren van de afspeelwachtrij op een zoekpatroon.
* Opslaan van de afspeelwachtrij als een afspeellijst (nieuw of bestaand).
* MPD-bibliotheek zoek- en bladerfuncties.
* Bladeren, toevoegen en hernoemen van afspeellijsten.
* Lijst van eigen streams (Internetradio's), die bewerkt kan worden.
* Selectie van zichtbare wachtrijkolommen.
* Configureren speler titelgegevens met behulp van Go templates.
* Aan- en uitzetten van verschillende MPD-modi (*Willekeurigmodus*, *Herhaalmodus*, *Wegwerpmodus*).
* Het huidige nummer spoelen naar een willekeurige locatie.
* Ondersteuning voor lichte en donkere desktopthema's.
* Meertalig. Meegeleverde talen:
    * Duits
    * Engels
    * Nederlands
    * Japans
    * Russisch

Kijk vooral eerst op de [FAQ-pagina](faq) als je een vraag, een featurerequest of een bugrapport hebt.

Hieronder vind je een korte videodemonstratie van de applicatie:

{{< youtube "h0g2gk5DM8s" >}}
