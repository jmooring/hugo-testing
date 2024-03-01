---
type: post
date: "2011-07-20T00:00:00Z"
title: "Скрипт для смены обоев Gnome/Unity"
tags:
    - Gnome
    - Linux
    - Ubuntu
    - Unity
    - обои
    - инструкция
    - полезные советы
---

**Внимание:** этот скрипт не работает в GNOME 3 и Ubuntu 11.10; для этих систем нужно использовать [новую версию скрипта](0122).

Этот bash-скрипт выбирает случайный файл изображения (.jpg, .jpeg или .png) из заданного каталога и устанавливает его в качестве обоев рабочего стола.

<!--more-->

В данной задаче есть небольшая хитрость. Когда скрипт запускается из cron, переменная `DBUS_SESSION_BUS_ADDRESS`, необходимая `gconftool-2`, не установлена. Для её инициализации добавлен специальный фрагмент кода.

Код протестирован во всех версиях Ubuntu вплоть до 11.04 Natty Narwhal. Он работает как с Gnome, так и с Unity.

Всё, что нужно настроить в нижеприведённом скрипте, это путь к каталогу с изображениями `dir_wallpapers`.

```bash
#!/bin/bash
#================================================================================
# Description
#   Script to set a random wallpaper in Gnome/Unity
# Synopsis
#   rotate-wallpaper
# Author
#   Dmitry Kann, http://yktoo.com/
# License
#   Public domain
#================================================================================
# Setup vars
dir_wallpapers="$HOME/Pictures/"  # Path to wallpaper directory

# Exports DBUS variable which is not set when called from cron session
export_variables() {
user=$(whoami)
pid=$(pgrep -u $user gnome-panel)
for dbusenv in $pid; do
  DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$pid/environ | sed -e 's/DBUS_SESSION_BUS_ADDRESS=//')
  data="DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS"
  eval "export $data"
done
}

# Fill array with picture files (replace spaces with colons to fool the array)
files=( $(find "$dir_wallpapers" -type f \( -iname '*.jpeg' -o -iname '*.jpg' -o -iname '*.png' \) | sed s/' '/':'/g) )
# Get number of members in the array
N=${#files[@]}
# Randomize N
((N=RANDOM%N))
# Get the normal file name (change colons back to spaces)
file=${files[$N]//:/ }
# Change desktop wallpaper
export_variables
gconftool-2 --type string --set /desktop/gnome/background/picture_filename "$file"
```
