---
title: Установка
menu: sound-switcher-indicator
weight: 200
---

[Установить](https://github.com/yktoo/indicator-sound-switcher/blob/dev/doc/install.md) {{< fl "Sound Switcher Indicator" >}} можно одним из способов, описанных ниже.

### PPA (рекомендуемый способ)

Если у вас {{< fl "Ubuntu" >}} или один из производных от него дистрибутивов, лучше использовать стандартный метод установки пакетов: персональный архив ({{< fl "Private Package Archive" >}}, {{< fl "PPA" >}}). В этом случае приложение будет в будущем обновляться автоматически.

Чтобы установить индикатор из [моего PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa), выполните следующие команды в Терминале:

```bash
sudo apt-add-repository ppa:yktooo/ppa
sudo apt-get update
sudo apt-get install indicator-sound-switcher
```

### Snap-пакет

Если у вас {{< fl "Ubuntu" >}}, то {{< fl "Sound Switcher Indicator" >}} проще всего установить прямо из {{< fl "Ubuntu Snap Store" >}}:

{{< snapcraft-card "indicator-sound-switcher" >}}

В других дистрибутивах, поддерживающих {{< wiki "Snappy_(система_управления_пакетами)" "ru" "snap-пакеты" >}}, установить приложение можно командой:

```bash
sudo snap install indicator-sound-switcher
```

{{< spoiler "Примечание на тему автозапуска индикатора" >}}
Из-за ограничений, накладываемых форматом {{< fl "snap" >}}, приложение невозможно зарегистрировать для автозапуска для всех пользователей (как это делает {{< fl "deb" >}}-пакет). Поэтому первый раз *приложение нужно запустить вручную* — впоследствии оно будет запускаться автоматически при входе в систему.
{{< /spoiler >}}

### Бинарный пакет

#### Debian, Ubuntu, Mint и т.д.

Если установка из {{< fl "PPA" >}} или {{< fl "snap" >}}-пакета невозможна или нежелательна, вы можете скачать бинарный `.deb`-пакет вручную.

1. Загрузите последнюю версию `.deb`-пакета, кликнув по кнопке загрузки ниже, либо перейдите в раздел [Packages](https://launchpad.net/~yktooo/+archive/ubuntu/ppa/+packages) на {{< fl "Launchpad" >}}, выберите нужную версию индикатора (кликните по ней, чтобы развернуть список файлов) и скачайте `.deb` оттуда.
2. Установите загруженный пакет с помощью {{< fl "Software Center" >}} или выполнив следующую команду в Терминале:
```bash
sudo dpkg -i /путь/к/скачанному/indicator-sound-switcher_*_all.deb
```

#### Arch Linux

Если у вас [pacman wrapper](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers), то используйте его, чтобы установить пакет `indicator-sound-switcher`.

Например, при наличии [yay](https://github.com/Jguer/yay) установка выглядит следующим образом:

```bash
yay -S indicator-sound-switcher
```

Если вы не используете хелпер, в [этой статье](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_and_upgrading_packages) *(англ.)* описывается, как самому собрать и установить пакет из исходников. Скачать соответствующий `PKGBUILD`-скрипт можно из [Arch User Repository](https://aur.archlinux.org/packages/indicator-sound-switcher) (см. ссылки в разделе "Package Actions").

### Исходный код

Чтобы установить приложение из исходного кода (так называемого {{< fl "source tarball" >}}):

1. Удостоверьтесь, что установлены требуемые пакеты (если `gir1.2-ayatanaappindicator3-0.1` отсутствует в вашем дистрибутиве, его можно заменить на `gir1.2-appindicator3-0.1`):
```bash
sudo apt install python3-gi gir1.2-gtk-3.0 gir1.2-ayatanaappindicator3-0.1 gir1.2-keybinder-3.0
```
2. Загрузите последнюю версию (`indicator-sound-switcher-*.tar.gz`), кликнув по кнопке загрузки ниже, либо перейдите в раздел [Packages](https://launchpad.net/~yktooo/+archive/ubuntu/ppa/+packages) на {{< fl "Launchpad" >}}, выберите нужную версию индикатора (кликните по ней, чтобы развернуть список файлов) и скачайте `.tar.gz` оттуда.
3. Распакуйте архив с исходным кодом: `tar xf indicator-sound-switcher-*.tar.gz`
4. Перейдите (`cd`) в каталог `indicator-sound-switcher-*`
5. Выполните команду `sudo python3 setup.py install`

