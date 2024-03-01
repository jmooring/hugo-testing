---
type: post
date: "2022-05-14T10:27:01+02:00"
title: "2.3.8"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Focal Fossa
    - Hirsute Hippo
    - Impish Indri
    - Jammy Jellyfish
    - Linux
    - софт
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/tz9luieerecw7gkumsoi.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

Вышла багфикс-версия **2.3.8** переключателя звукового устройства для {{< fl "Linux" >}} [Sound Switcher Indicator](/software/sound-switcher-indicator).

## Что нового

В этой версии исправлены два серьёзных бага.

<!--more-->

* Приложение могло неверно обрабатывать переключение и отображение портов на устройствах с несколькими *потоками* (в терминах {{< fl "PulseAudio" >}} это {{< fl "sources" >}} и {{< fl "sinks" >}}). В отдельных случаях это приводило к полной неработоспособности переключателя ([#107](https://github.com/yktoo/indicator-sound-switcher/issues/107)).
* При нажатии сочетания клавиш, привязанного к несуществующему порту, индикатор некорректно пытался переключиться на это несуществующее устройство ([#118](https://github.com/yktoo/indicator-sound-switcher/issues/118)).

Для исправления этих проблем (особенно первой) пришлось немало покопаться в коде и поэкспериментировать с профилями {{< fl "PulseAudio" >}}. После чего я могу заключить, что поддержка этих профилей там пока что далека от совершенства: нескольких переключений бывает достаточно, чтобы ввести сервер звука в полный ступор, после чего помогает только его рестарт (`pulseaudio -k`).

## А ещё

А ещё, а ещё — у нас **300** звёзд [на GitHub](https://github.com/yktoo/indicator-sound-switcher) и более **2100** пользователей {{< fl "snap" >}}-пакета!

## Поддержка Ubuntu в PPA

В моём [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) публикуются пакеты для {{< fl "Ubuntu 18.04 Bionic Beaver" >}}, {{< fl "20.04 Focal Fossa" >}}, {{< fl "21.04 Hirsute Hippo" >}}, {{< fl "21.10 Impish Indri" >}} и {{< fl "22.04 Jammy Jellyfish" >}}. Багрепорты принимаются по [обычному адресу](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Установка

Чтобы установить или обновить приложение, следуйте описанию на [соответствующей странице](/software/sound-switcher-indicator/installation).
