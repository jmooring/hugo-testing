---
type: post
date: "2023-10-09T09:41:58+02:00"
title: "3.0.0-rc2"
tags:
    - Comentario
    - веб
    - софт
    - разработка
    - пререлиз
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png"
series: comentario
software: comentario
---

Между [первой](0877) и второй — перерывчик небольшой: вышла вторая пререлизная версия [Comentario 3.0.0-rc2](https://gitlab.com/comentario/comentario/-/releases/v3.0.0-rc2).

[Comentario](/software/comentario) — это быстрый и мощный свободный сервер комментариев для веб-страниц, написанный на {{< fl "Go" >}}.

## Что нового

<!--more-->

Наряду с исправлением мелких багов, основным значимым изменением в данной версии является наличие бинарных `.deb`- и `.rpm`-пакетов.

С их помощью {{< fl "Comentario" >}} можно [установить *локально*](https://edge.docs.comentario.app/en/installation/binary-package/) на сервер или виртуальную машину. При этом сервер будет запускаться в качестве {{< fl "systemd" >}}-сервиса.

### Конфигурация сервиса

Настройки сервиса {{< fl "Comentario" >}} берутся из двух файлов:

* `/etc/comentario/comentario.conf` — [статическая конфигурация](https://edge.docs.comentario.app/en/configuration/backend/static/);
* `/etc/comentario/secrets.yaml` — [секреты](https://edge.docs.comentario.app/en/configuration/backend/secrets/).

Чтобы изменения конфигурации вступили в силу, сервис нужно будет перезапустить:

```bash
sudo systemctl restart comentario.service
```

## Демо-версия

Увидеть новую версию в действии, а также её административный интерфейс (логин с емэйлом `admin@admin` и паролем `admin`), можно на демо-сайте:

{{< button "https://demo.comentario.app/" "Демо-сайт комментариев" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Демо админки Comentario" "btn-primary mb-3" >}}

## Установка

Если вы хотите опробовать новую версию в деле, документация вам в помощь:

* [Installation](https://edge.docs.comentario.app/en/installation/).
* [Migration](https://edge.docs.comentario.app/en/installation/migration/).
