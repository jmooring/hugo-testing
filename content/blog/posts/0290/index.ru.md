---
type: post
date: "2016-09-25T00:00:00Z"
title: "2.0.1"
series: sound-switcher-indicator
tags:
    - Gnome Control Center
    - PulseAudio
    - Python
    - Python 3
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
    - Utopic Unicorn
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/fea8e5qk2bg91390.png"
software: sound-switcher-indicator
---

Минуло уж более двух лет с момента последнего релиза [Sound Switcher Indicator](/software/sound-switcher-indicator) (1.2.2). Всё это время меня донимали [просьбами](https://github.com/yktoo/indicator-sound-switcher/issues/3) добавить поддержку переключения профилей устройств. Дело в том, что большинство звуковых карт без этого невозможно переключить на цифровой порт, такой как S/PDIF или HDMI.

И вот, я торжественно представляю **Sound Switcher Indicator 2.0.1**, который *наконец-то* поддерживает переключение профилей:

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fea8e5qk2bg91390.png" "Sound Switcher Indicator 2.0.1." >}}

## Что изменилось {#whats-new}

Внешне не очень много:

* Меню индикатора теперь отображает все доступные порты на всех устройствах, каждый пункт состоит из *описания устройства* и *имени порта*.
* Меню учитывает доступность портов. Например, если вы выдёргиваете штеккер наушников, пункт `Headphones` пропадёт из меню, а вместо него, вероятно, появится `Speakers`.

В плане же внутренней реализации изменилось почти всё:

* Код переписан под Python 3.
* Приложение теперь работает с устройствами и профилями. Если порт, на который переключается пользователь, в текущем профиле недоступен, будет выбран и активизирован наиболее подходящий из поддерживаемых.
* Прекращена поддержка версий для GTK+2 и Ubuntu старше 14.10 Utopic.
* Требуется как минимум PulseAudio v4.0.

Всё это потребовало уймы времени на чтение [PulseAudio API](https://freedesktop.org/software/pulseaudio/doxygen/), а также копание исходников [Gnome Control Center](https://github.com/GNOME/gnome-control-center), чтобы разобраться как в нём организована работа с устройствами и профилями. (Замечу в сторону, что разрабатывать этот псевдо-объектно-ориентированный код на C должно быть сущим кошмаром. А полностью уследить за утечками памяти вообще, наверное, нереально.)

## Установка {#installation}

Установить или обновить приложение можно, как обычно, через мой Launchpad PPA согласно [инструкции](/software/sound-switcher-indicator/installation).
