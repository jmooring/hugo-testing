---
title: Sound Switcher Indicator
subtitle: Sound input/output selector indicator for Linux.
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
    - /en/software/indicator-sound-switcher
seeAlso:
    - name: Sound Switcher Indicator on Snapcraft
      url: https://snapcraft.io/indicator-sound-switcher
    - name: Sound Switcher Indicator in AUR
      url: https://aur.archlinux.org/packages/indicator-sound-switcher
    - name: My Launchpad PPA
      url: https://launchpad.net/~yktooo/+archive/ppa
---

This app shows an icon in the indicator area or the system tray (whatever is available in your desktop environment). Icon's menu allows you to switch the current sound input and output (i.e. *source* and *sink* in PulseAudio's terms, respectively) ports with just two clicks:

{{< imgfig "screenshot.png" "Indicator's menu." >}}

You can configure various aspects of ports and devices displayed by the menu using the Preferences dialog:

{{< imgfig "prefs-devices.png" "Preferences dialog." >}}

> Sound Switcher Indicator is being developed with a [free JetBrains License](/blog/posts/0359).
>
> {{< button "https://www.jetbrains.com/?from=SoundSwitcherIndicator" "![JetBrains logo](jetbrains.png)" >}}
