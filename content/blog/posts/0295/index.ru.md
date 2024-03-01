---
type: post
date: "2016-11-04T00:00:00Z"
title: "2.1.1"
series: sound-switcher-indicator
tags:
    - PulseAudio
    - Python
    - Python 3
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
    - Yakkety Yak
    - звук
    - индикатор
software: sound-switcher-indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/64k0x3l8omtq0538.png"
---

[Sound Switcher Indicator](/software/sound-switcher-indicator) становится всё сложнее и хитрее, благо поток идей у пользователей не иссякает. В версии **2.1.1** изменения коснулись в основном файла конфигурации (`$HOME/.config/indicator-sound-switcher.json`).

## Что нового

<!--more-->

* По умолчанию собирается для **Ubuntu 16.10 Yakkety Yak** (но доступны сборки и для остальных версий, поддерживаемых Canonical).
* Конфигурация отдельных портов в JSON-файле теперь может быть также представлена объектом (раньше это могли быть либо строка, либо `false`), позволяющим указать:
    * Отображаемое название порта.
    * Предпочтительный профиль звуковой карты ([#26](https://github.com/yktoo/indicator-sound-switcher/issues/26)).
    * Доступность порта ([#39](https://github.com/yktoo/indicator-sound-switcher/issues/39)).
* Добавлен нидерландский перевод.
* Файлы локализации, если они доступны, теперь компилируются в процессе установки, что позволяет устанавливать приложение прямо из рабочей копии исходного кода ([#35](https://github.com/yktoo/indicator-sound-switcher/issues/35)).

Подробности и пример конфигурации приведены в файле [README](https://github.com/yktoo/indicator-sound-switcher/blob/master/README.md).
