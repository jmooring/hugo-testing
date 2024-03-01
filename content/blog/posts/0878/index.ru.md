---
type: post
date: "2023-10-04T17:39:19+02:00"
title: "0.22 Xylophone"
tags:
    - Ymuse
    - софт
    - MPD
    - Media Player Daemon
    - Go
    - GTK
    - Linux
    - Ubuntu
    - Debian
    - Yktoo Solutions
image: "https://res.cloudinary.com/yktoo/image/upload/v1696435031/blog/kk4yvcrmub7dmqq25tc7.png"
series: ymuse
software: ymuse
---

Вышла версия [Ymuse](/software/ymuse) **0.22 Xylophone**.

{{< fl "Ymuse" >}} — это быстрая и удобная программа-клиент для [Music Player Daemon](https://www.musicpd.org/).

## Доступность

Сперва самая хорошая новость: {{< fl "Ymuse" >}} официально доступен в стандартных [репозиториях Ubuntu](https://packages.ubuntu.com/search?suite=all&searchon=names&keywords=ymuse) (начиная с **23.04** [Lunar Lobster](https://packages.ubuntu.com/lunar/ymuse)) и [Debian](https://packages.debian.org/source/testing/ymuse) (пока что в {{< fl "Testing" >}}).

Также, напомню, он есть в [Snap store](https://snapcraft.io/ymuse), [Flathub](https://flathub.org/apps/com.yktoo.ymuse) и [AUR](https://aur.archlinux.org/packages/ymuse).

## Что нового

Основные новшества:

<!--more-->

* Новая иконка с музой ([#79](https://github.com/yktoo/ymuse/issues/79))
* Поддержка драг-н-дропа в очереди воспроизведения ([#34](https://github.com/yktoo/ymuse/issues/34))
* Поддержка режима повторения единственного трека ([#76](https://github.com/yktoo/ymuse/issues/76))
* Немецкий перевод ([#68](https://github.com/yktoo/ymuse/issues/68))
* Возможность заменить или добавить всё содержимое библиотеки из контекстного меню элемента Файлы ([#69](https://github.com/yktoo/ymuse/issues/69))
* Убраны предупреждения при отсутствии файла конфигурации {{< fl "Ymuse" >}} ([#70](https://github.com/yktoo/ymuse/issues/70))

Теперь чуть подробнее.

### Иконка

[Jeppe Zapp](https://github.com/mrzapp) нарисовал новую иконку приложения (ему не нравился [бокал с мартини](https://res.cloudinary.com/yktoo/image/upload/t_s640/blog/wlfb8v23knjqaefztiwg.png)), на которой явственно присутствует муза (женского, кстати, пола, никаких тут «Муза №1» и «Муза №2»):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1696435031/blog/kk4yvcrmub7dmqq25tc7.png" "Муза Ymuse." >}}

Также тут недвусмысленно присутствует отсылка к автору в виде буквы «`Y`».

### Драг-н-дроп

Одна из самых часто запрашиваемых фич, реализация которой требует недюжинного таланта и усидчивости в силу отсутствия какой-либо внятной документации по данной теме (особенно в связке {{< fl "GTK" >}}-{{< fl "Go" >}}-{{< fl "gotk3" >}}).

[Willem 14mRh4X0r](https://github.com/14mRh4X0r) проявил инициативу и [сделал](https://github.com/yktoo/ymuse/pull/80) упрощённый вариант драг-н-дропа, поддерживающий перетаскивание отдельных треков, — что, конечно же, намного лучше, чем ничего:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1696433931/blog/holgvagxkhixsyd0wiwr.gif" "Драг-н-дроп в Ymuse в действии." "border shadow" >}}

Реализация перетаскивания нескольких треков пока ждёт своего героя.

### Повтор одиночного трека

Тоже совершенно логичная фича для аудиоплеера. {{< fl "MPD" >}} поддерживает два отдельных переключателя: «повтор» и «одиночный», но, чтобы не размножать кнопки, я решил совместить их в одной — кнопка «Повтор» получила дополнительное состояние *одиночный*:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1696433931/blog/jqglm5zj1xt3s3kqe2dc.gif" "Режим повтора всех или одного трека." "border shadow" >}}

## Установка

Как установить {{< fl "Ymuse" >}}, читайте на [странице приложения](/software/ymuse).
