---
type: post
date: "2016-09-30T00:00:00Z"
title: "2.1.0"
series: sound-switcher-indicator
tags:
    - indicator
    - PulseAudio
    - Python
    - Python 3
    - sound
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
    - Utopic Unicorn
software: sound-switcher-indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/64k0x3l8omtq0538.png"
---

I've been able to pay a bit more attention to the [Sound Switcher Indicator](/software/sound-switcher-indicator) and implement some of the long asked-for features.

<!--more-->

## What's new  {#whats-new}

* **Version 2.1.0** (2016-09-29)

  * Added support for configuration file ([#30](https://github.com/yktoo/indicator-sound-switcher/issues/30)).<br />
    See [below](#config-file) for details about its format.
  * The sections `Inputs` and `Outputs` can be hidden now ([#32](https://github.com/yktoo/indicator-sound-switcher/issues/32)).
  * Device and port names can now be configured ([#31](https://github.com/yktoo/indicator-sound-switcher/issues/31)).
  * Unused ports can be blacklisted (hidden from the menu) ([#13](https://github.com/yktoo/indicator-sound-switcher/issues/13)).
  * French translation added.

* **Version 2.0.2** (2016-09-28)

  * The menu can now be localised ([#28](https://github.com/yktoo/indicator-sound-switcher/issues/28)).<br />
    I've made use of the standard localisation library [GNU gettext](https://www.gnu.org/software/gettext/). New translations can easily be added as `.po` files, and merged from pull requests.
  * Russian and Spanish translations added.
  * Added a manpage ([#24](https://github.com/yktoo/indicator-sound-switcher/issues/24)).<br />
    It can be viewed using `man indicator-sound-switcher` (there's not much information yet, but at least it's there).

## The configuration file {#config-file}

The configuration file, by default `~/.config/indicator-sound-switcher.json`, must be in the {{< wiki "JSON" "en" "JSON" >}} format. The file is optional, and so are all its values.

Here's a sample config taken from the [README](https://github.com/yktoo/indicator-sound-switcher/blob/master/README.md):


```json
{
    "show_inputs": false,
    "show_outputs": true,
    "devices": {
        "alsa_card.pci-0000_00_06.0": {
            "name": "My lovely card",
            "ports": {
                "analog-output-speaker": "Boombox",
                "iec958-stereo-output": false
            }
        },
        "alsa_card.pci-0000_01_00.1": {
            "name": "HDMI Audio"
        }
    }
}
```

According to the above:

* The `Inputs` section will be hidden.
* The device `alsa_card.pci-0000_00_06.0` will be referred to as `My lovely card`. Its speaker output will be called `Boombox`, and its S/PDIF port will be hidden from the menu.
* The device `alsa_card.pci-0000_01_00.1` will be named `HDMI Audio` in the menu items.
* For the rest all the defaults will apply.

Device and port names can be found in the console output of:

    indicator-sound-switcher -vv

For example:

```
DEB   + Card[0] added: `alsa_card.pci-0000_00_08.0`
 ...
DEB     + Card port added: `analog-input-mic` (`Microphone`); priority: 8700; direction: 2; available: Yes
 ...
DEB     + Card port added: `iec958-stereo-output` (`Digital Output (S/PDIF)`); priority: 0; direction: 1; available: Yes
 ...
```
