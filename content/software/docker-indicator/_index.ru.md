---
title: Docker Indicator
subtitle: Индикатор для управления контейнерами Docker.
layout: product
icon: docker-indicator-icon-64.png
software: docker-indicator
weight: 40
menu: docker-indicator
active: false
codeRepoType: github
codeRepoPath: yktoo/indicator-docker
licenses:
    - gpl3
seeAlso:
    - name: My Launchpad PPA
      url: 'https://launchpad.net/~yktooo/+archive/ppa'
---

Приложение-индикатор для {{< fl "Linux" >}}, обладающее следующим функционалом:

* Меню отображает список контейнеров — как активных, так и остановленных. Список предоставляется демоном {{< fl "Docker" >}} и обновляется автоматически.
* По клику на пункте меню соответствующий контейнер останавливается или запускается.
* Также при остановке и запуске любого контейнера — причём необязательно посредством индикатора — выводится всплывающее уведомление.

Вот как это выглядит:

{{< imgfig "screenshot.png" "Меню индикатора." >}}

Нравится? В [Этом документе (англ.)](https://github.com/yktoo/indicator-docker/blob/master/INSTALL) объясняется, как его установить.
