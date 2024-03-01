---
title: Ymuse
subtitle: Простой, удобный, быстрый клиент для Music Player Daemon.
layout: product
icon: ymuse-icon-64.png
software: ymuse
weight: 20
menu: ymuse
active: true
codeRepoType: github
codeRepoPath: yktoo/ymuse
licenses:
    - apache2
seeAlso:
    - name: Ymuse в Snapcraft
      url: https://snapcraft.io/ymuse
    - name: Ymuse в AUR
      url: https://aur.archlinux.org/packages/ymuse
    - name: Ymuse-bin в AUR
      url: https://aur.archlinux.org/packages/ymuse-bin
    - name: Flathub-репозиторий Ymuse
      url: https://github.com/flathub/com.yktoo.ymuse
---

**Ymuse** — это простое в использовании, но в то же время богатое функционалом и быстрое приложение-клиент для [Music Player Daemon](https://www.musicpd.org/), написанное на {{< fl "Go" >}} и использующее графическую библиотеку {{< fl "GTK" >}}.

{{< carousel >}}
https://res.cloudinary.com/yktoo/image/upload/blog/e6ecokfftenpwlwswon1.png Главное окно Ymuse (вкладка «Очередь»).
https://res.cloudinary.com/yktoo/image/upload/blog/cwcmqjichatv2yklt2fu.png Главное окно Ymuse: светлая тема.
https://res.cloudinary.com/yktoo/image/upload/blog/wjiqs1dyzbrvppslficd.png Главное окно Ymuse: тёмная тема.
https://res.cloudinary.com/yktoo/image/upload/blog/wqud8spomcmuduvgar9d.png Ymuse: вкладка «Библиотека».
https://res.cloudinary.com/yktoo/image/upload/blog/pnwj9nlucfuobw0vcv0l.png Ymuse: вкладка «Потоки».
https://res.cloudinary.com/yktoo/image/upload/blog/tgvhoi8k04gsgod6jvsa.png Настройки Ymuse: Общие
https://res.cloudinary.com/yktoo/image/upload/blog/lgnnkthbnj5hk4uu5pwm.png Настройки Ymuse: Интерфейс
https://res.cloudinary.com/yktoo/image/upload/blog/m4q41rd2klmfrcdft7nx.png Настройки Ymuse: Автоматизация
https://res.cloudinary.com/yktoo/image/upload/blog/vile5cveex5bd4vefg6e.png Настройки Ymuse: Плейер
https://res.cloudinary.com/yktoo/image/upload/blog/vrqyquxgoncgxygly6kk.png Настройки Ymuse: Столбцы
{{< /carousel >}}

## Возможности Ymuse

* Подключение к локальному или сетевому серверу {{< fl "MPD" >}} по {{< fl "TCP" >}} или {{< fl "Unix" >}}-сокету, автоматическое восстановление подключения.
* Отображение очереди воспроизведения, сортировка по любому свойству, перетаскивание, перемешивание, удаление треков из очереди.
* Фильтрация очереди по подстроке.
* Сохранение очереди в виде плейлиста (существующего или нового).
* Просмотр и поиск по библиотеке {{< fl "MPD" >}}.
* Просмотр списка плейлистов, удаление и переименование плейлиста.
* Собственный список потоков (Интернет-радиостанций) с возможностью добавления, удаления и редактирования элементов.
* Настройка отображаемых столбцов в списке воспроизведения.
* Настройка отображаемого текста в плеере (используется синтаксис {{< fl "Go template" >}}).
* Переключение режимов {{< fl "MPD" >}} ({{< fl "random" >}}, {{< fl "repeat" >}} и {{< fl "consume" >}}).
* Перемотка трека в произвольное место.
* Поддержка как светлой, так и тёмной тем оформления.
* Поддержка локализации. Доступные языки:
    * английский
    * немецкий
    * нидерландский
    * русский
    * японский

Загляните на страницу [](faq), если у вас возник вопрос, или вы хотите отправить предложение или отчёт об ошибке.

Вот короткое видео, демонстрирующее основные возможности приложения (*англ.*):

{{< youtube "h0g2gk5DM8s" >}}
