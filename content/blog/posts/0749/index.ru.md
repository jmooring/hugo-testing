---
type: post
date: "2020-06-06T15:50:25+02:00"
title: "2.3.4"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Eoan Ermine
    - Focal Fossa
    - Linux
    - софт
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/tz9luieerecw7gkumsoi.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

Вышло минорное обновление [Sound Switcher Indicator](/software/sound-switcher-indicator), версия **2.3.4** (а также несколько предыдущих).

Изменения по сравнению с предыдущим [релизом 2.3.0](0597):

<!--more-->

* **2.3.4**
  * Исправлены символьные иконки ([#88](https://github.com/yktoo/indicator-sound-switcher/issues/88)).
  * В диалоге настроек убран внешний отступ у вкладок.
* **2.3.3**
  * Исправлены поломанные в **2.3.1** {{< fl "SVG" >}}-иконки ([#87](https://github.com/yktoo/indicator-sound-switcher/issues/87)). Оказалось, что портит их оптимизатор {{< fl "SVGO" >}}, а точнее, один из его плагинов: {{< fl "convertPathData" >}}.
  * Обновлены русский и нидерландский переводы.
* **2.3.2**
  * Исправлена вредная проблема, выражавшаяся в том, что файлы локализации не попадали в пакет ([#82](https://github.com/yktoo/indicator-sound-switcher/issues/82)).
* **2.3.1**
  * Обновлены русский и нидерландский переводы.
  * Вместо тёмной и светлой иконок использована одна символьная ([#80](https://github.com/yktoo/indicator-sound-switcher/issues/80)).

## Диалог настроек

В диалоге настроек был убран внешний отступ у вкладок, что выглядит намного лучше (подсмотрено у {{< fl "Nautilus" >}}):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ywpgistj83d0fdwyug3h.png" "Диалог настроек Sound Switcher Indicator." >}}

## Поддержка Ubuntu

В моём [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) публикуются пакеты для {{< fl "Ubuntu 18.04 Bionic Beaver" >}}, {{< fl "19.10 Eoan Ermine" >}} и {{< fl "20.04 Focal Fossa" >}}. Багрепорты принимаются по [обычному адресу](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Установка

Чтобы установить или обновить приложение, следуйте описанию на [соответствующей странице](/software/sound-switcher-indicator/installation).
