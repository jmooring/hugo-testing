---
type: post
date: "2014-02-08T00:00:00Z"
title: "1.2.1"
series: sound-switcher-indicator
tags:
    - Precise Pangolin
    - PulseAudio
    - Python
    - Quantal Quetzal
    - Raring Ringtail
    - Saucy Salamander
    - Sound Switcher Indicator
    - Trusty Tahr
    - Ubuntu
    - Unity
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/64k0x3l8omtq0538.png"
software: sound-switcher-indicator
---

После [предыдущего](0217) релиза [Sound Switcher Indicator](/software/sound-switcher-indicator) о нём [написал](http://www.webupd8.org/2014/02/sound-switcher-ubuntu-indicator.html) довольно известный ресурс Web Upd8, и я ~~проснулся знаменитым~~ сразу начал получать багрепорты, фичереквесты, вопросы и предложения.

Так, например, выяснилось, что индикатор используют в предыдущих версиях Убунту (вплоть до 12.04).

<!--more-->

## Изменения

* При установке создаётся ярлык в папке автозагрузки, так что индикатор запускается автоматически после входа в систему.
* Бэк-порт всех текущих возможностей на GTK+ версии 2 (для этого в репозитории создана отдельная [ветка](https://github.com/yktoo/indicator-sound-switcher/tree/gtk2)), благодаря чему индикатор работает в следующих версиях Убунту:
  * GTK+ версии 2:
      * **12.04** LTS ({{< fl "Precise Pangolin" >}})
      * **12.10** ({{< fl "Quantal Quetzal" >}})
      * **13.04** ({{< fl "Raring Ringtail" >}})
  * GTK+ версии 3:
      * **13.10** ({{< fl "Saucy Salamander" >}})
      * **14.04** LTS ({{< fl "Trusty Tahr" >}}) — протестирован в Trusty Alpha 2.
* Добавлена иконка программы по умолчанию, которая будет отображаться, если используется нестандартная тема оформления. Я сделал её более контрастной, чтобы она была хорошо заметна как в светлых, так и в тёмных темах:
  {{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/64k0x3l8omtq0538.png" >}}

## Установка

Установить или обновить приложение можно, как обычно, через мой Launchpad PPA согласно [инструкции](/software/sound-switcher-indicator).

**Внимание**: поскольку поддержка 13.04 (Raring Ringtail) окончена, Launchpad больше не принимает билдов для неё. Вы можете скачать GTK+2-версию [отсюда](http://ppa.launchpad.net/yktooo/ppa/ubuntu/pool/main/i/indicator-sound-switcher/).
