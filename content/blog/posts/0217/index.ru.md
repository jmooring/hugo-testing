---
type: post
date: "2014-02-02T00:00:00Z"
title: "1.2.0"
series: sound-switcher-indicator
tags:
    - PulseAudio
    - Python
    - Saucy Salamander
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
    - звук
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/bfeb1axtu3ki2057.png"
software: sound-switcher-indicator
---

Наконец-то дошли руки выпустить обновление моего [Sound Switcher Indicator](/software/sound-switcher-indicator) — версия 1.2.0 позволяет выбирать не только входное/выходное устройство, а ещё и конкретный порт в нём:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/bfeb1axtu3ki2057.png" >}}

<!--more-->

Эти не столь уж кардинальные внешние изменения потребовали почти полного редизайна приложения, что, надеюсь, пошло ему на пользу. Мне наконец-то удалось решить проблемы с {{< wiki "Состояние_гонки" "ru" "гонками" >}} в потоках, перенеся обработку событий PulseAudio в GUI-поток и избавившись от сомнительного `Gdk.threads_init()`.

Основная реализация была написана во время долгого перелёта в [Египет](0209), в течение которого я очень страдал от отсутствия Интернета и, соответственно, возможности гуглить. Но финальная часть потребовала [консультации](http://stackoverflow.com/questions/20844540/handle-a-signal-in-another-thread-in-python) на StackOverflow и отняла много времени.

Установить или обновить приложение можно, как обычно, через мой Launchpad PPA согласно [инструкции](/software/sound-switcher-indicator).
