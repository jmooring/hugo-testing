---
type: post
date: "2020-12-28T11:10:39+01:00"
title: "2.3.5.2 + snap-пакет"
tags:
    - Sound Switcher Indicator
    - Ubuntu
    - Bionic Beaver
    - Focal Fossa
    - Groovy Gorilla
    - Linux
    - софт
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/gsychzzjqvcbxytpn9ff.png"
series: sound-switcher-indicator
software: sound-switcher-indicator
---

Выпущено очередное минорное обновление [Sound Switcher Indicator](/software/sound-switcher-indicator), версия **2.3.5.2**.

<!--more-->

Никаких изменений функционала в самом приложении данная версия не содержит.

Основной причиной для её выпуска послужило добавление возможности установить индикатор из {{< wiki "Snappy_(система_управления_пакетами)" "ru" "snap-пакета" >}}, о чём меня просили уже очень давно.

## Snap-пакет

Сдвинуть дело с мёртвой точки помог Дмитрий Максимов ([eth481642](https://github.com/eth481642)), собравший начальную версию в {{< fl "snapcraft" >}}, за что ему спасибо.

Есть у меня, однако, некоторые сомнения в разумности использования {{< fl "snap" >}}-пакетов для подобных приложений. Поскольку в нём по определению содержится всё необходимое для запуска — в данном конкретном случае интерпретатор {{< fl "Python" >}} со всеми необходимыми библиотеками — то весит такой пакет ни много ни мало **45 МБ**!

Для сравнения: размер [snap-пакета](https://snapcraft.io/ymuse) [Ymuse](/software/ymuse), полноценного скомпилированного приложения, всего лишь **2,5 МБ**.

Ну да ладно, меня попросили — я сделал. Теперь {{< fl "Sound Switcher Indicator" >}} можно установить из [Snap Store](https://snapcraft.io/indicator-sound-switcher):

{{< snapcraft-card "indicator-sound-switcher" >}}

## Автозапуск

Из-за, мягко говоря, довольно оригинальной архитектуры {{< fl "snap" >}}-пакетов сделать автозапуск индикатора для всех пользователей при его инсталляции не представляется возможным — в противоположность стандартному {{< fl "deb" >}}-пакету.

Поэтому при установке из {{< fl "snap" >}} автозапуск будет автоматически настроен для каждого пользователя отдельно при первом *ручном* запуске индикатора. После такого однократного запуска он будет стартовать автоматически при входе в систему.

## Поддержка Ubuntu в PPA

В моём [PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa) публикуются пакеты для {{< fl "Ubuntu 18.04 Bionic Beaver" >}}, {{< fl "20.04 Focal Fossa" >}} и {{< fl "20.10 Groovy Gorilla" >}}. Багрепорты принимаются по [обычному адресу](https://github.com/yktoo/indicator-sound-switcher/issues/).

## Установка

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ueoiwjjzqsrkv3i0vmr8.gif" "Установка Sound Switcher Indicator из snap-пакета." >}}

Чтобы установить или обновить приложение, следуйте описанию на [соответствующей странице](/software/sound-switcher-indicator/installation).
