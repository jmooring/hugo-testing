---
type: post
date: "2020-02-04T20:34:34+01:00"
title: "2.3.0"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Eoan Ermine
    - Linux
    - софт
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/wlsrdmzkpaw2361u3qyb.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

Увидел свет очередной релиз [Sound Switcher Indicator](/software/sound-switcher-indicator) — **2.3.0**.

В этой версии я наконец-то добавил то, что очень часто [просили](https://github.com/yktoo/indicator-sound-switcher/issues/38): возможность назначать глобальные комбинации клавиш для переключения *портов* (входов и выходов).

<!--more-->

## Диалог настроек

В обновлённом диалоге настроек, в свойствах порта появилась кнопка, с помощью которой можно перейти в режим задания сочетания клавиш.

После появления соответствующего диалога можно также нажать <kbd>Backspace</kbd>, чтобы стереть ранее введённую комбинацию, либо <kbd>Escape</kbd> для отмены.

Выглядит это так:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tb1ostp0z4dmsgqybrhv.gif" "Выбор глобальной комбинации клавиш в диалоге настроек Sound Switcher Indicator." >}}

Если выбранная комбинация клавиш уже используется в другом порту, она будет оттуда удалена и переназначена на данный.

## Поддержка Ubuntu

В моём {{< fl "PPA" >}} публикуются пакеты для {{< fl "Ubuntu 18.04 Bionic" >}}, {{< fl "19.04 Disco" >}} и {{< fl "19.10 Eoan" >}}. Багрепорты принимаются по [обычному адресу](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Установка

Чтобы установить или обновить приложение, следуйте описанию на [соответствующей странице](/software/sound-switcher-indicator/installation).
