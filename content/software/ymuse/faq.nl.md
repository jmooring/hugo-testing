---
title: FAQ
menu: ymuse
weight: 100
---

Veelgestelde vragen over [Ymuse](/software/ymuse).

{{< toc >}}

## Hoe spreek ik "Ymuse" uit?

Als *waj-mjoez*.

## Kun je ondersteuning van MPRIS toevoegen aan Ymuse?

Dat is niet nodig, want er is al het project [mpDris2](https://github.com/eonpatapon/mpDris2) (zie volgende vraag).

## Kan ik mediaknoppen op mijn toetsenbord toewijzen om Ymuse te bedienen?

Niet direct. Maar er is een nog beter alternatief: je kunt je {{< abbr "MPD" "Music Player Daemon" >}}-instantie koppelen aan jouw desktop environment met behulp van [MPRIS](https://wiki.archlinux.org/title/MPRIS). De eenvoudigste manier om dat te doen is door het pakket [mpDris2](https://github.com/eonpatapon/mpDris2) te installeren.

Dan gaat MPD reageren op de mediatoetsen, ongeacht of Ymuse draait of niet.

In Ubuntu kun je het makkelijk doen met:

```bash
sudo apt install mpdris2
```

## Waarom kan ik niet meerdere tracks slepen in de wachtrij?

Het slepen van losse tracks wordt ondersteund vanaf versie [0.22 Xylophone](en;/blog/posts/0878). Om het slepen van meerdere tracks mogelijk te maken is een uitgebreid onderzoek nodig naar de werking van drag-n-drop in GTK. Het komt aan de orde zodra ik er tijd voor heb.
