---
title: Sound Switcher Indicator
subtitle: Индикатор для выбора входа и выхода звука в Linux.
layout: product
icon: ssi-icon-64.png
software: sound-switcher-indicator
weight: 15
menu: sound-switcher-indicator
active: true
codeRepoType: github
codeRepoPath: yktoo/indicator-sound-switcher
licenses:
    - gpl3
aliases:
    - /ru/software/indicator-sound-switcher
seeAlso:
    - name: Sound Switcher Indicator в Snapcraft
      url: https://snapcraft.io/indicator-sound-switcher
    - name: Sound Switcher Indicator в AUR
      url: https://aur.archlinux.org/packages/indicator-sound-switcher
    - name: Мой Launchpad PPA
      url: https://launchpad.net/~yktooo/+archive/ppa
---

Это приложение отображает значок в области индикаторов или системном трее (зависит от того, каким десктопом вы пользуетесь). Меню индикатора позволяет переключать текущие порты входного и выходного звукового устройства (в терминах {{< fl "PulseAudio" >}} — {{< fl "source" >}} и {{< fl "sink" >}}, соответственно) в два клика:

{{< imgfig "screenshot.png" "Меню индикатора" >}}

Внешний вид устройств и их портов, отображаемых в меню, можно настроить с помощью соответствующего диалога:

{{< imgfig "prefs-devices.png" "Диалог настроек." >}}

> Разработка {{< fl "Sound Switcher Indicator" >}} ведётся при помощи [бесплатной лицензии JetBrains](/blog/posts/0359).
>
> {{< button "https://www.jetbrains.com/?from=SoundSwitcherIndicator" "![JetBrains logo](jetbrains.png)" >}}
