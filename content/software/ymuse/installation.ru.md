---
title: Установка
menu: ymuse
weight: 200
---

### Ubuntu

Если у вас {{< fl "Ubuntu" >}}, то {{< fl "Ymuse" >}} проще всего установить прямо из {{< fl "Ubuntu Snap Store" >}}:

{{< snapcraft-card "ymuse" >}}

Начиная с {{< fl "Ubuntu" >}} **23.04** его также можно установить с помощью `apt`:

```bash
sudo apt install ymuse
```


### Snap-пакет

Если ваш дистрибутив поддерживает {{< wiki "Snappy_(система_управления_пакетами)" "ru" "snap-пакеты" >}}, то установить приложение можно командой:

```bash
sudo snap install ymuse
```

### Flatpak

Если у вас [установлен](https://flatpak.org/setup/) `flatpak`, программа устанавливается из [Flathub](https://flathub.org/apps/details/com.yktoo.ymuse) командой:

```bash
flatpak install com.yktoo.ymuse
```

### Arch Linux

Если у вас [pacman wrapper](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers), то используйте его, чтобы установить пакет `ymuse` или `ymuse-bin`.

Например, при наличии [yay](https://github.com/Jguer/yay) установка выглядит следующим образом:

```bash
yay -S ymuse
# Можно также установить bin-версию, сэкономив время на загрузке Go toolchain
yay -S ymuse-bin
```

Если вы не используете хелпер, в [этой статье](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_and_upgrading_packages) *(англ.)* описывается, как самому собрать и установить пакет из исходников.

### Бинарная сборка

Также для {{< fl "Ymuse" >}} доступны для загрузки бинарные пакеты (`.deb`, `.rpm`) и архив с исходным кодом, см. [](download).
