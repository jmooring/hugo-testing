---
type: post
date: "2022-08-19T18:50:57+02:00"
title: "0.21 Wayfarer"
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

Вышла версия [Ymuse](/software/ymuse) **0.21 Wayfarer**.

{{< fl "Ymuse" >}} — это программа-клиент для [Music Player Daemon](https://www.musicpd.org/).

## Что нового

<!--more-->

* Добавлена давно ожидавшаяся поддержка обложек альбома, содержащихся в аудиофайлах ([#52](https://github.com/yktoo/ymuse/issues/52), благодарность [@imsamuka](https://github.com/imsamuka)). В предыдущих версиях {{< fl "Ymuse" >}} использовал только обложки из файлов `cover.*`, находящихся в том же каталоге, что и аудиофайл.
* Добавлена настройка размера изображения обложки:
  {{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1660928665/blog/jeq6qyqsmbvor3uc63d1.png" "Настройка размера изображения обложки альбома." >}}
* Изображение обложки теперь всегда масштабируется с сохранением пропорций ([#59](https://github.com/yktoo/ymuse/issues/59)).
* Добавлена возможность перематывать текущий трек назад и вперёд на заданное количество секунд (по умолчанию **5**) при помощи сочетаний клавиш <kbd>Ctrl</kbd><kbd>Shift</kbd><kbd>←</kbd> и <kbd>Ctrl</kbd><kbd>Shift</kbd><kbd>→</kbd> ([#56](https://github.com/yktoo/ymuse/issues/56)).

## Видео-обзор

Видео-обзор [одной из предыдущих версий](0799) (на английском):

{{< youtube "h0g2gk5DM8s" >}}

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
