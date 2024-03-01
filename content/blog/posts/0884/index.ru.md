---
type: post
date: "2023-12-19T18:51:25+01:00"
title: "3.2.0"
tags:
    - Comentario
    - веб
    - софт
    - разработка
    - релиз
    - Go
    - Angular
    - Рождество
image: "https://res.cloudinary.com/yktoo/image/upload/v1703008279/blog/btiqaq585r1whbvbdtcs.jpg"
series: comentario
software: comentario
---

Перед наступающим Рождеством успело выйти ещё одно минорное обновление [Comentario 3.2.0](https://gitlab.com/comentario/comentario/-/releases/v3.2.0).

[Comentario](/software/comentario) — это быстрый и мощный свободный сервер комментариев для веб-страниц, написанный на {{< fl "Go" >}}.

## Что нового

<!--more-->

* Новая [настройка конфигурации](https://docs.comentario.app/en/configuration/backend/dynamic/markdown.tables.enabled/), позволяющая включить поддержку таблиц в комментариях ([#37](https://gitlab.com/comentario/comentario/-/issues/37)).
* Ещё одна [настройка](https://docs.comentario.app/en/configuration/backend/dynamic/domain.defaults.comments.enablevoting/), при помощи которой можно отключить функционал голосования за комменты и скрыть соответствующие элементы управления ([#26](https://gitlab.com/comentario/comentario/-/issues/26)).
* Емэйл-уведомления об ожидающем модерации комменте теперь сообщают причину постановки на модерацию:
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1703009034/blog/ktmboeipgvvwpr1fimen.png" "Емэйл-уведомление модератора." "border shadow" >}}
* Административный интерфейс надёжно защищён от {{< fl "CSRF" >}}-атак.
* Фронтенд обновлён до {{< fl "Angular" >}} **17**, а бэкенд до {{< fl "Go" >}} **1.21.5**.

Для полного списка изменений см. [CHANGELOG](https://gitlab.com/comentario/comentario/-/blob/master/CHANGELOG.md).

## Демо-версия

Увидеть новую версию в действии, а также её административный интерфейс (логин с емэйлом `admin@admin` и паролем `admin`), можно на демо-сайте:

{{< button "https://demo.comentario.app/" "Демо-сайт комментариев" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Демо админки Comentario" "btn-primary mb-3" >}}

## Установка

Если вы хотите установить {{< fl "Comentario" >}}, вот ссылки на документацию:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1702132791/blog/vhfwsdpiknlyvzehr2ed.jpg" >}}
