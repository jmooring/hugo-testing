---
type: post
date: "2017-04-16T00:00:00Z"
title: "Docker Indicator 0.1.0"
tags:
    - Docker
    - Docker Indicator
    - Python 3
    - Ubuntu
    - Unity
    - Yakkety Yak
    - Zesty Zapus
    - индикатор
image: "https://res.cloudinary.com/yktoo/image/upload/blog/raqp0z0dsc0l0578.png"
software: docker-indicator
---

Если вы часто работаете с [Docker-контейнерами](https://www.docker.com/), то, наверное, заметили, что плодятся эти контейнеры как кролики по весне. Порой обнаруживаешь неиспользуемый контейнер, которые годами пылится и покрывается паутиной где-то глубоко в списке остановленных.

Чтобы упростить управление своим контейнерным хозяйством, я написал простое [приложение-индикатор](https://unity.ubuntu.com/projects/appindicators/) для {{< fl "Ubuntu/Unity" >}} с логичным названием [Docker Indicator](https://github.com/yktoo/indicator-docker).

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/raqp0z0dsc0l0578.png" "Икона Docker Indicator." >}}

## Что мы умеем {#features}

Это бета-версия, которая умеет пока не очень много, но всё же может быть уже полезна:

* Меню отображает список контейнеров — как активных, так и остановленных. Список предоставляется демоном {{< fl "Docker" >}} и обновляется автоматически.
* По клику на пункте меню соответствующий контейнер останавливается или запускается.
* Также при остановке и запуске любого контейнера — причём необязательно посредством индикатора — выводится всплывающее уведомление.

Вот как это выглядит:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/6hyjhs5ko1970245.png" "Скриншот Docker Indicator 0.1.0." >}}

## Установка {#install}

Так же, как и [Sound Switcher Indicator](/series/sound-switcher-indicator), этот индикатор написан на {{< fl "Python 3" >}}.

Сначала нужно вручную установить [Docker Python API](https://github.com/docker/docker-py) — к сожалению, в репозиториях Убунту как сам {{< fl "Docker" >}}, так и его {{< fl "API" >}} очень старых версий. Установка в {{< fl "Ubuntu" >}} очень проста:

```bash
sudo pip3 install docker
```

Сам индикатор можно установить из [моего PPA](https://launchpad.net/~yktooo/+archive/ubuntu/ppa):

```bash
sudo apt-add-repository ppa:yktooo/ppa
sudo apt update
sudo apt install indicator-docker
```

В данный момент доступны сборки для {{< fl "Ubuntu 16.10 Yakkety Yak" >}} и {{< fl "Ubuntu 17.04 Zesty Zapus" >}}. При входе в систему приложение стартует автоматически.

К слову, приступив к разработке, я обнаружил, что, во-первых, у {{< fl "Docker" >}} есть превосходный, полностью [документированный Python API](https://docker-py.readthedocs.io/en/stable/), а во-вторых, что утилиты общаются с демоном посредством {{< fl "REST" >}}-запросов к веб-серверу последнего (их даже видно в логе, если запустить индикатор с ключом `-vv`). Я просто в восторге.

## Жалобы и предложения {#bug-reports}

Отчёты об ошибках лучше всего отправлять в [трекер на GitHub](https://github.com/yktoo/indicator-docker/issues), прикрепив консольный вывод индикатора, запущенного как:

```bash
indicator-docker -vv
```

## Исходный код {#source-code}

Исходный код приложения находится в [моём репозитории GitHub](https://github.com/yktoo/indicator-docker).

## Планы на будущее {#to-do}

* Соорудить свою сборку `python3-docker`, чтобы его не нужно было устанавливать через `pip`.
* Добавить файл настроек.
* Добавить функцию удаления контейнера.
* Добавить возможность работы с образами ({{< fl "images" >}}).
* … и ещё много всего можно добавить.

А вообще, в свете [недавних новостей](https://insights.ubuntu.com/2017/04/05/growing-ubuntu-for-cloud-and-iot-rather-than-phone-and-convergence/) об отказе {{< fl "Canonical" >}} от развития {{< fl "Unity" >}} будущее индикаторов в целом довольно туманно…
