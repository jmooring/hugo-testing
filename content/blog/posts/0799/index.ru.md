---
type: post
date: "2021-11-24T15:02:06+01:00"
title: "0.18"
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

Вышел [Ymuse](/software/ymuse) **0.18**.

{{< fl "Ymuse" >}} — это программа-клиент для [Music Player Daemon](https://www.musicpd.org/).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png" "Ymuse в светлой и тёмной темах." >}}

## Что нового

<!--more-->

Из видимых изменений в данной версии лишь одно: в диалоге настроек появилась новая вкладка «Автоматизация» ({{< fl "Automation" >}}), на которой можно задать действия после замены содержимого очереди — например, после двойного клика по плейлисту в Библиотеке:

* Перейти во вкладку «Очередь» (включено по умолчанию);
* Запустить воспроизведение.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1637762165/blog/m4q41rd2klmfrcdft7nx.png" "Вкладка «Автоматизация»." >}}

Есть также и довольно важные внутренние изменения:

* Код обновлён до {{< fl "Go" >}} 1.17 и последних версий `gotk3` и `gompd`; минимальная требуемая версия {{< fl "GTK" >}} теперь **3.22**.
* Проект мигрировал с системы сборки {{< fl "Travis CI" >}}, начавшей постепенно затягивать гайки, на [GitHub Actions](https://github.com/yktoo/ymuse/actions). Пока вроде бы полёт нормальный, вот только сборка {{< fl "snap" >}}-пакета занимает чуть ли не час.

## Видео-обзор

Видео-обзор новой версии (на английском):

{{< youtube "h0g2gk5DM8s" >}}

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
