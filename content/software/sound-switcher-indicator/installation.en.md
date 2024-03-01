---
title: Installation
menu: sound-switcher-indicator
weight: 200
---

There are the following ways to get the indicator [installed](https://github.com/yktoo/indicator-sound-switcher/blob/dev/doc/install.md):

### PPA (recommended)

If you're on Ubuntu or one of its derivatives, it's always advisable to use the standard package distribution mechanism (Private Package Archive, PPA). This way you'll automatically get updated indicator versions in the future.

In order to install the application from [my PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa):

```bash
sudo apt-add-repository ppa:yktooo/ppa
sudo apt-get update
sudo apt-get install indicator-sound-switcher
```

### Snap package

If you use Ubuntu, you can get **Sound Switcher Indicator** installed by downloading it from the Ubuntu Snap Store:

{{< snapcraft-card "indicator-sound-switcher" >}}

For other Linux distributions, if yours provides support for {{< wiki "Snap_(package_manager)" "en" "snaps" >}}, the installation can be done with:

```bash
sudo snap install indicator-sound-switcher
```

{{< spoiler "Note on the indicator's autostart" >}}
Due to restrictions imposed by the snap format, it's not possible to make the app start automatically for all users, like the `deb` package does. You'll have to *start the app manually* for the first time. After that the indicator will start automatically after each login.
{{< /spoiler >}}

### Binary package

#### Debian, Ubuntu, Mint etc.

You can download and install the `.deb` binary package manually.

1. Download the latest `.deb` package using the download button below, or go to the [Packages](https://launchpad.net/~yktooo/+archive/ubuntu/ppa/+packages) Launchpad page, choose the right indicator version there (click to expand it) and download a `.deb` from there.
2. Install the downloaded package using the Software Center or with the command:
```bash
sudo dpkg -i /path/to/downloaded/indicator-sound-switcher_*_all.deb
```

#### Arch Linux

If you have a [pacman wrapper](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers) installed, you can use that to install the `indicator-sound-switcher` package.

For instance, if you are using [yay](https://github.com/Jguer/yay), simply run:

```bash
yay -S indicator-sound-switcher
```

In case you're not using a helper, refer to [this article](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_and_upgrading_packages) on how to manually build and install the package. You can download the `PKGBUILD` script from the [Arch User Repository](https://aur.archlinux.org/packages/indicator-sound-switcher) (see links under "Package Actions").

### Source tarball

In order to install the application from the source tarball:

1. Make sure the required dependencies are installed (you can replace `gir1.2-ayatanaappindicator3-0.1` with `gir1.2-appindicator3-0.1` if the former isn't available in your distro):
```bash
sudo apt install python3-gi gir1.2-gtk-3.0 gir1.2-ayatanaappindicator3-0.1 gir1.2-keybinder-3.0
```
2. Download the latest tarball (`indicator-sound-switcher-*.tar.gz`) using the download button below, or go to the [Packages](https://launchpad.net/~yktooo/+archive/ubuntu/ppa/+packages) Launchpad page, choose the right indicator version there (click to expand it) and download a `.tar.gz` from there.
3. Decompress the archive: `tar xf indicator-sound-switcher-*.tar.gz`
4. `cd` to the `indicator-sound-switcher-*` dir
5. Run `sudo python3 setup.py install`
