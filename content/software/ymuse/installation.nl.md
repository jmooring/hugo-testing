---
title: Installatie
menu: ymuse
weight: 200
---

### Ubuntu

Als je Ubuntu gebruikt, is de eenvoudigste manier om **Ymuse** te installeren het te downloaden van de Ubuntu Snap Store:

{{< snapcraft-card "ymuse" >}}

Vanaf Ubuntu **23.04** kun je het ook installeren m.b.v. `apt`:

```bash
sudo apt install ymuse
```

### Snap package

Als je Linuxdistributie ondersteuning biedt voor {{< wiki "Snap_(package_manager)" "en" "snaps" >}}, dan kan de installatie gedaan worden met:

```bash
sudo snap install ymuse
```

### Flatpak

Als je `flatpak` [geïnstalleerd](https://flatpak.org/setup/) hebt, dan kun de applicatie installeren vanuit [Flathub](https://flathub.org/apps/details/com.yktoo.ymuse) met:

```bash
flatpak install com.yktoo.ymuse
```

### Arch Linux

Als je een [pacman wrapper](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers) geïnstalleerd hebt, dan kun je die gebruiken om `ymuse` of `ymuse-bin` te installeren.

Bijvoorbeeld, als je gebruikmaakt van [yay](https://github.com/Jguer/yay), hoef je alleen te draaien:

```bash
yay -S ymuse
# Of gebruik de bin-build om de Go-toolchain niet te hoeven te downloaden
yay -S ymuse-bin
```
Indien je geen helper gebruikt, raadpleeg dan [dit artikel](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_and_upgrading_packages) over hoe je het pakket handmatig bouwt en installeert.

### Binair pakket

Er zijn ook binaire builds (`.deb`, `.rpm`) en een source tarball beschikbaar: zie [](download).
