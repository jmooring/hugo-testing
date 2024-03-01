---
type: post
date: "2021-02-25T09:08:58+01:00"
title: "0.17"
tags:
    - Ymuse
    - софт
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Ubuntu
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/blog/wlfb8v23knjqaefztiwg.png"
series: ymuse
software: ymuse
---

Вышел [Ymuse](/software/ymuse) **0.17**. 

{{< fl "Ymuse" >}} — это программа-клиент для [Music Player Daemon](https://www.musicpd.org/).

## Что нового

<!--more-->

* Новая функция для добавления выделенного элемента библиотеки в выбранный плейлист ([#17](https://github.com/yktoo/ymuse/issues/17)):
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lefkmvf9eg3vb2qouvui.png" "Меню «Добавить к плейлисту»." >}}
  Функция поддерживается для всех элементов библиотеки: файлов, папок, исполнителей, альбомов, плейлистов и т.д. 
  Раньше для добавления элемента приходилось загружать плейлист в очередь воспроизведения, добавлять требуемое и сохранять очередь обратно в плейлист — теперь это делается в два клика.
* Настройка отображения обложки альбома разделена на две: для треков из библиотеки и для Интернет-потоков ([#30](https://github.com/yktoo/ymuse/issues/30)). При этом настройки интерфейса перестали помещаться на вкладке, так что настройки плеера переехали на отдельную вкладку:
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wxzfleujpz3ktuzcetxx.png" "Настройки плеера." >}}
  Смысл этого изменения в том, что запросы на скачивание картинки тормозят плеер, особенно при медленном соединении, а Интернет-потоки редко возвращают картинку обложки, поэтому для них опция по умолчанию выключена.
* Добавлены отсутствующие сочетания клавиш в соответствующее окно (вызываемое по <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>?</kbd>):
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/u2efnyhotahu3fpvp7zm.png" "Окно сочетаний клавиш." >}}

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
