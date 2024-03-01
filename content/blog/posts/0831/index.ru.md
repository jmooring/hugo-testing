---
type: post
date: "2022-06-05T17:35:57+02:00"
title: "Ymuse на Flathub"
tags:
    - Ymuse
    - софт
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Flathub
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/blog/spobjqjbkliyovl7wrav.png"
series: ymuse
software: ymuse
---

С сегодняшнего дня [MPD](https://www.musicpd.org/)-клиент [Ymuse](/software/ymuse) официально доступен в открытом софтверном репозитории [Flathub](https://flathub.org/apps/details/com.yktoo.ymuse).

Просили об этом уже [давно](https://github.com/yktoo/ymuse/issues/12), но всё руки не доходили.

<!--more-->

Потом меня разобрало любопытство, захотелось разобраться, как делаются флэтпаки. У меня уже немалый опыт создания {{< fl "snap" >}}-пакетов как для [Ymuse](/software/ymuse), так и для [Sound Switcher Indicator](/software/sound-switcher-indicator), интересно было сравнить.

Оказалось, что построить `.flatpak` в принципе проще — многие стандартные манипуляции `flatpak-builder` делает за тебя автоматически, — но в то же время документации по формату в сравнении со снэпами заметно меньше. Поэтому часто разбираться приходится, что называется, методом научного тыка.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/spobjqjbkliyovl7wrav.png" "Ymuse попадает на Flathub." >}}

Так или иначе, {{< fl "Ymuse" >}} официально [принят на Flathub](https://github.com/flathub/com.yktoo.ymuse) и может отныне быть установлен командой:

```bash
flatpak install com.yktoo.ymuse
```

## Flatpak

Как установить сам `flatpak`, читайте на [офсайте](https://flatpak.org/setup/). В Убунту он есть в стандартных репозиториях и может быть установлен командой:

```bash
sudo apt install flatpak gnome-software-plugin-flatpak
```

После этого нужно добавить основной репозиторий — {{< fl "Flathub" >}}:

```bash
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
```

И перезапустить текущий сеанс (хотя из командной строки он работает сразу).
