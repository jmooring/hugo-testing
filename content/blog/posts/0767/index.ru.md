---
type: post
date: "2021-02-09T09:05:29+01:00"
title: "0.16"
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

Выпущена новая версия [Ymuse](/software/ymuse) **0.16**, программы-клиента для [Music Player Daemon](https://www.musicpd.org/).

В этом релизе исправлено несколько ошибок и добавлено несколько ~~новых~~ фич.

## Что нового

<!--more-->

* Добавлена кнопка регулятора громкости ([#20](https://github.com/yktoo/ymuse/issues/20)):
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/svlzlewuinrronoii34u.gif" "Регулятор громкости MPD в Ymuse." >}}
* Добавлена опция показа/скрытия панели инструментов на вкладке «Очередь» ([#23](https://github.com/yktoo/ymuse/issues/23)).
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fogws1tmmgdmdqmo3eab.gif" "Настройка показа панели инструментов." >}}
* Исправлена ошибка, приводившая к загрузке процессора и переполнению логов при потере соединения с {{< fl "MPD" >}} ([#26](https://github.com/yktoo/ymuse/issues/26), [#28](https://github.com/yktoo/ymuse/issues/28)).
* Исправлен сброс выделения при клике правой кнопкой в очереди воспроизведения ([#21](https://github.com/yktoo/ymuse/issues/21)).
* Обновлён компилятор {{< fl "Go" >}} (1.15.8) и зависимости `gompd` (2.2.0), `gotk3` (0.5.2), что в перспективе должно улучшить стабильность {{< fl "Ymuse" >}} ([#27](https://github.com/yktoo/ymuse/issues/27)). 

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
