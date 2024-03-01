---
type: post
date: "2022-05-29T12:33:13+02:00"
title: "0.20 Volodymyr"
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
image: "https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png"
series: ymuse
software: ymuse
---

Вышла версия [Ymuse](/software/ymuse) **0.20 Volodymyr**.

{{< fl "Ymuse" >}} — это программа-клиент для [Music Player Daemon](https://www.musicpd.org/).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png" "Ymuse в светлой и тёмной темах." >}}

## Что нового

<!--more-->

* **Диалог выходов звука MPD**\
  Теперь можно активировать и деактивировать аудиовыходы {{< fl "MPD" >}} при помощи специального диалога ([#44](https://github.com/yktoo/ymuse/issues/44)):
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/eunuwzc30u8xtvybk6nw.png" "Диалог выходов звука MPD." >}}
  Диалог вызывается с помощью соответствующего пункта главного меню (под «сэндвич»-кнопкой в заголовке окна) либо комбинацией клавиш <kbd>Ctrl</kbd><kbd>O</kbd>.

  Доступные аудиовыходы настраиваются стандартным способом в [конфигурационном файле MPD](https://mpd.readthedocs.io/en/stable/user.html#configuring-audio-outputs).

* Исправлена ошибка, из-за которой функция Библиотеки **Добавить к плейлисту** добавляла треки к неправильный список ([#51](https://github.com/yktoo/ymuse/issues/51)).

## Видео-обзор

Видео-обзор [одной из предыдущих версий](0799) (на английском):

{{< youtube "h0g2gk5DM8s" >}}

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
