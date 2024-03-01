---
type: post
date: "2016-09-30T00:00:00Z"
title: "2.1.0"
series: sound-switcher-indicator
tags:
    - PulseAudio
    - Python
    - Python 3
    - Sound Switcher Indicator
    - Ubuntu
    - Unity
    - Utopic Unicorn
    - звук
    - индикатор
software: sound-switcher-indicator
image: "https://res.cloudinary.com/yktoo/image/upload/blog/64k0x3l8omtq0538.png"
---

В связи с появлением некоторого количества свободного времени смог уделить больше внимания [Sound Switcher Indicator](/software/sound-switcher-indicator) и реализовать ещё кое-что, о чём давно просили.

<!--more-->

## Что нового {#whats-new}

* **Версия 2.1.0** (2016-09-29)

  * Добавлена поддержка файла конфигурации ([#30](https://github.com/yktoo/indicator-sound-switcher/issues/30)).<br />
    Подробности о формате файла [ниже](#config-file).
  * Секции «Входы» и «Выходы» теперь можно скрыть ([#32](https://github.com/yktoo/indicator-sound-switcher/issues/32)).
  * С помощью файла конфигурации можно переименовать как целые устройства, так и отдельные порты ([#31](https://github.com/yktoo/indicator-sound-switcher/issues/31)).
  * Неиспользуемые порты можно скрывать ([#13](https://github.com/yktoo/indicator-sound-switcher/issues/13)).
  * Добавлен французский перевод.

* **Версия 2.0.2** (2016-09-28)

  * Поддержка локализации меню ([#28](https://github.com/yktoo/indicator-sound-switcher/issues/28)).<br />
    Приложение использует стандартный механизм локализации [GNU gettext](https://www.gnu.org/software/gettext/). Новые переводы могут быть легко добавлены в виде файлов `.po`, с помощью пулл-реквестов.
  * Добавлены русский и испанский переводы.
  * Добавлена страница документации ({{< fl "manpage" >}}) ([#24](https://github.com/yktoo/indicator-sound-switcher/issues/24)).<br />
    Вызвать документацию в Ubuntu можно командой `man indicator-sound-switcher` (пока что там довольно мало содержимого, но, как говорится, зато она есть).

## Файл конфигурации {#config-file}

Файл конфигурации, по умолчанию это `~/.config/indicator-sound-switcher.json`, должен быть в формате {{< wiki "JSON" "ru" "JSON" >}}. Его наличие необязательно, все пункты в нём также являются опциональными.

Вот пример конфигурации (взят из [README](https://github.com/yktoo/indicator-sound-switcher/blob/master/README.md)):


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

Согласно ей:

* Секция «Входы» будет скрыта.
* Устройство `alsa_card.pci-0000_00_06.0` будет отображаться как `My lovely card`, его выход `Speaker` будет называться `Boombox`, а выход `S/PDIF` вообще пропадёт из меню.
* Устройство `alsa_card.pci-0000_01_00.1` получит в меню название `HDMI Audio`.
* Для всего остального ~~есть MasterCard~~ всё останется как есть, по умолчанию.

Названия устройств и их портов можно увидеть, запустив из консоли:

    indicator-sound-switcher -vv

Например:

```
DEB   + Card[0] added: `alsa_card.pci-0000_00_08.0`
 ...
DEB     + Card port added: `analog-input-mic` (`Microphone`); priority: 8700; direction: 2; available: Yes
 ...
DEB     + Card port added: `iec958-stereo-output` (`Digital Output (S/PDIF)`); priority: 0; direction: 1; available: Yes
 ...
```
