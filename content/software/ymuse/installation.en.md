---
title: Installation
menu: ymuse
weight: 200
---

### Ubuntu

If you use Ubuntu, the simplest way to get **Ymuse** installed is downloading it from the Ubuntu Snap Store:

{{< snapcraft-card "ymuse" >}}

As of Ubuntu **23.04**, you can also install it via `apt`:

```bash
sudo apt install ymuse
```

### Snap package

In case your distro provides support for {{< wiki "Snap_(package_manager)" "en" "snaps" >}}, the installation can be done with:

```bash
sudo snap install ymuse
```

### Flatpak

If you have `flatpak` [installed](https://flatpak.org/setup/), the app can be installed from [Flathub](https://flathub.org/apps/details/com.yktoo.ymuse) with:

```bash
flatpak install com.yktoo.ymuse
```

### Arch Linux

If you have a [pacman wrapper](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers) installed, you can use that to install the `ymuse` or the `ymuse-bin` package.

For instance, if you are using [yay](https://github.com/Jguer/yay), simply run:

```bash
yay -S ymuse
# Or use a bin build to avoid downloading Go toolchain
yay -S ymuse-bin
```

In case you're not using a helper, refer to [this article](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_and_upgrading_packages) on how to manually build and install the package.

### Binary package

There are also binary builds (`.deb`, `.rpm`) and a source tarball available: see [](download).
