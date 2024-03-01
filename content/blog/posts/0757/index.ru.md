---
type: post
date: "2020-08-13T18:18:31+02:00"
title: "0.14"
tags:
    - Ymuse
    - софт
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Ubuntu
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/blog/wlfb8v23knjqaefztiwg.png"
series: ymuse
---

Тихо и, как говорится, незаметно, вышла версия [Ymuse](/software/ymuse) **0.14**. {{< fl "Ymuse" >}} — это десктопная программа-клиент для [Music Player Daemon](https://www.musicpd.org/), о которой я [рассказывал](0748) ранее.

Что нового в этой версии?

<!--more-->

## Album art

Основным новшеством является отображение обложки альбома в плеере, рядом с наименованием трека.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1597326567/blog/vx7vpdn1lrskop110ts6.png" "Ymuse 0.14 — отображение обложки альбома." >}}

Его можно отключить в настройках программы; по умолчанию отображение включено.

Обложка извлекается с помощью команды {{< fl "MPD" >}}, поддержку которой мне пришлось самостоятельно [добавить](https://github.com/fhs/gompd/pull/60) в библиотеку `gompd` (а попутно ещё и [исправить](https://github.com/gotk3/gotk3/pull/634) баг в `gotk3`).

{{< fl "MPD" >}} же, в свою очередь, [ищет](https://www.musicpd.org/doc/html/protocol.html#the-music-database) обложки в той же папке, что и трек, в файле со следующими названиями:

* `cover.png`
* `cover.jpg`
* `cover.tiff`
* `cover.bmp`

## Задержка применения настроек

Также добавлена задержка применения настроек плеера. Изменения применяются теперь через секунду, а не после каждой буквы или клика:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/glusxmlp663hpfseq0py.gif" "Задержка применения настроек Ymuse." >}}

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
