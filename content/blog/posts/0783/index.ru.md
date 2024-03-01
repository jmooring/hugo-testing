---
type: post
date: "2021-06-18T16:25:37+02:00"
title: "2.3.6"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Focal Fossa
    - Groovy Gorilla
    - Hirsute Hippo
    - Linux
    - софт
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/tz9luieerecw7gkumsoi.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

Вышла версия **2.3.6** переключателя звукового устройства для {{< fl "Linux" >}} [Sound Switcher Indicator](/software/sound-switcher-indicator), с улучшениями в обработке сочетаний клавиш и отображении устройств.

<!--more-->

## Что нового

В новой версии два заметных усовершенствования.

* Отныне можно назначать одну и ту же комбинацию клавиш на несколько разных портов устройств ([#106](https://github.com/yktoo/indicator-sound-switcher/issues/106)). В случае, когда комбинации соответствует более одного порта, нажатие её будет вызывать циклическое переключение между соответствующими портами.
* В списке устройств в диалоге настроек теперь дополнительно отображаются изготовитель и наименование продукта ([#105](https://github.com/yktoo/indicator-sound-switcher/issues/105)), чтобы было легче различать похожие устройства:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lu73q8ojuvfso6oenuvq.png" "Диалог настроек." >}}

## Поддержка Ubuntu в PPA

В моём [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) публикуются пакеты для {{< fl "Ubuntu 18.04 Bionic Beaver" >}}, {{< fl "20.04 Focal Fossa" >}}, {{< fl "20.10 Groovy Gorilla" >}} и {{< fl "21.04 Hirsute Hippo" >}}. Багрепорты принимаются по [обычному адресу](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Установка

Чтобы установить или обновить приложение, следуйте описанию на [соответствующей странице](/software/sound-switcher-indicator/installation).
