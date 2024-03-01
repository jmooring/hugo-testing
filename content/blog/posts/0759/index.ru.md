---
type: post
date: "2020-09-06T15:31:14+02:00"
title: "0.15"
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
software: ymuse
---

Вышел корректирующий релиз [Ymuse](/software/ymuse) **0.15**, программы-клиента для [Music Player Daemon](https://www.musicpd.org/).

<!--more-->

В версии 0.15 исправлена [ошибка](https://github.com/yktoo/ymuse/issues/11) отображения файлов в папках, в имени которых содержится апостроф (`'`).

Для её решения потребовался [очередной патч](https://github.com/fhs/gompd/pull/61) в библиотеке `gompd`.

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
