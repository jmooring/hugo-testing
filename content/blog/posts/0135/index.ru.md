---
type: post
date: "2011-12-16T00:00:00Z"
title: "Интеграция Google Music с Убунту"
tags:
    - Google
    - Google Music
    - Linux
    - Ubuntu
    - музыка
image: "https://res.cloudinary.com/yktoo/image/upload/blog/fqvawschyngs0829.png"
---

Месяц назад я [рассказывал](0126) об открытии облачного сервиса для хранения музыки [Google Music](http://music.google.com/) (сервис по-прежнему формально доступен только для обитателей США, что едва ли вызывает у меня угрызения совести).

Моя эпопея с загрузкой 130 ГБ музыки в облако успешно завершилась примерно за четыре дня, и теперь вся моя коллекция доступна мне везде, где есть интернет — с некоторыми ограничениями (которые, возможно, будут устранены, когда сервис выйдет из стадии беты).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fqvawschyngs0829.png" >}}

<!--more-->

Эти ограничения, впрочем, можно обойти. Например, возможность загружать mp3-файлы из облака появляется при установке расширения Chrome [Music Plus for Google Music](http://chrome.google.com/webstore/detail/ipfnecmlncaiipncipkgijboddcdmego). Оно же устраняет необходимость переходить на вкладку Google Music, чтобы приостановить воспроизведение или перейти на следующий/предыдущий трек.

Но мне больше понравилось расширение [Play/Pause 4 Grooveshark & Google Music](http://chrome.google.com/webstore/detail/ocimhajpehjmepnegklahceceebnened), которое просто добавляет кнопку воспроизведения/паузы прямо на панель инструментов (имеются аналогичные расширения для кнопок [«Назад»](http://chrome.google.com/webstore/detail/iklcgmiodfcphjidljmbbblgbicapmhf) и [«Вперёд»](http://chrome.google.com/webstore/detail/niblnbcmjmbbadnkhjecmfgnlhafkhja)):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/90ca6ffxmbx20709.png" >}}

Однако при всех своих удобствах, Google Music по-прежнему остаётся страницей, работающей в браузере, и интеграция с системой как таковая отсутствует: мне в первую очередь не хватало возможности управлять плеером с помощью клавиатуры.

Поиски в интернетах вывели на приложение **Google Music Frame**, он же [Nuvola Player](http://launchpad.net/nuvola-player) (автор Jiří Janoušek), позволяющее «внедрить» Google Music в Убунту.

Google Music Frame по сути представляет собой просто страницу Google Music, встроенную в приложение — иное решение вряд ли будет возможно до тех пор, пока Google не предоставит полноценного API для этого сервиса:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/9a1ev959go1f0008.png" >}}

Плеер добавляет свои пункты в кнопку Панели запуска:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/bhlxrchffx6z3444.png" >}}

А также интегрирует сервис в Ubuntu Sound Menu:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/48j6fg0gea3g2059.png" >}}

Итак, чтобы установить приложение:

    sudo apt-add-repository  ppa:nuvola-player-builders/stable
    sudo apt-get update
    sudo apt-get install google-music-frame

После установки в Dash появляется приложение **Google Music Frame**:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/5lxabv4tvwer2401.png" >}}

Приложение может выводить стандартные уведомления Убунту при смене трека, а также реагировать на нажатия клавиш управления вопроизведения. Последними можно назначить любые комбинации клавиш на клавиатуре с помощью стандартного **Центра управления GNOME**:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hw422agc3cjn2736.png" >}}

Для полного счастья не хватает только, чтобы облачную музыку мог воспроизводить {{< wiki "Music_Player_Daemon" "ru" "MPD" >}}. С приходом API, может быть, дождёмся?
