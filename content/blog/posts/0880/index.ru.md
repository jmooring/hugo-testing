---
type: post
date: "2023-11-19T10:17:01+01:00"
title: "3.0.0"
tags:
    - Comentario
    - веб
    - софт
    - разработка
    - релиз
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1700385664/blog/seyqgwcnbnqk44r30lb6.png"
series: comentario
software: comentario
---

После семи месяцев разработки, **300** коммитов и двух пререлизов ([1](0877), [2](0879)) вышла финальная версия [Comentario 3.0.0](https://gitlab.com/comentario/comentario/-/releases/v3.0.0).

[Comentario](/software/comentario) — это быстрый и мощный свободный сервер комментариев для веб-страниц, написанный на {{< fl "Go" >}}.

## Что нового

<!--more-->

По сравнению с последним [пререлизом](0879) нового здесь вот что:

* Впервые в своей истории (включая его предшественника {{< fl "Commento" >}}), продукт получил почти стопроцентное покрытие {{< fl "end-to-end" >}}-тестами, гарантирующее отсутствие регрессий после изменений.
* Множество исправлений багов, обнаруженных в процессе реализации предыдущего пункта.
* Обновлён дизайн Дашборда: разделены графики просмотров и комментариев, добавлены «фоновые» графики страниц и пользователей:
  {{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1700385664/blog/seyqgwcnbnqk44r30lb6.png" "Обновлённый Дашборд в Comentario." "border shadow" >}}
* Прекращена поддержка безнадёжно устаревшего {{< fl "PostgreSQL" >}} **9.x**, добавлена поддержка версии **16**.
* Свойства домена: добавлен выбор протокола `http://` ↔ `https://`.
* Профиль: добавлено поле веб-сайта.
* Статическая конфигурация: добавлена версия используемого сервера БД и время на бэкенд-сервере.
* Импорт из {{< fl "Disqus" >}}: исправлен импорт «полуанонимных» пользователей.
* Встраиваемая часть: время комментария теперь является постоянной ссылкой на него.
* Встраиваемая часть: попап со справкой о формате {{< fl "Markdown" >}} превращён в [ссылку на документацию](https://docs.comentario.app/en/kb/markdown/).

Изменения в пререлизных версиях (по сравнению с версией **2.3.1**):

* Полностью переработанная структура базы данных.
* [Роли пользователей](https://docs.comentario.app/en/kb/permissions/roles/) в доменах.
* Глобальная привилегия [суперпользователя](https://docs.comentario.app/en/kb/permissions/superuser/).
* [Статическая](https://docs.comentario.app/en/configuration/backend/static/) и [динамическая](https://docs.comentario.app/en/configuration/backend/dynamic/) конфигурация {{< fl "Comentario" >}}.
* Возможность банить пользователей.
* Больше [настроек модерации](https://docs.comentario.app/en/configuration/frontend/domain/moderation/) (отправка на модерацию комментов, содержащих ссылки или изображения, или оставленных недавно зарегистрированными пользователями).
* [Расширения](https://docs.comentario.app/en/configuration/frontend/domain/extensions/), проверяющие текст комментариев на наличие спама или токсичного контента ([Akismet](https://docs.comentario.app/en/configuration/frontend/domain/extensions/akismet/), [APILayer SpamChecker](https://docs.comentario.app/en/configuration/frontend/domain/extensions/api-layer-spam-checker/), [Perspective](https://docs.comentario.app/en/configuration/frontend/domain/extensions/perspective/)).
* Намного более подробная статистика посещений (пока только сбор).
* Просмотр страниц и комментариев по всему домену.
* Загрузка аватаров пользователей.
* Логин через {{< fl "Facebook" >}}.
* Неинтерактивный [Single Sign-On](https://docs.comentario.app/en/configuration/frontend/domain/authentication/sso/).
* Поддержка изображений в комментариях.
* Возможность запретить ссылки в комментах.
* Опция для замены содержимого главной страницы.
* Бинарные сборки в виде `.deb`- и `.rpm`-пакетов, при установке которых {{< fl "Comentario" >}} [запускается](https://docs.comentario.app/en/installation/binary-package/) в виде {{< fl "systemd" >}}-сервиса.

Для полного списка изменений см. [CHANGELOG](https://gitlab.com/comentario/comentario/-/blob/master/CHANGELOG.md).

## Демо-версия

Увидеть новую версию в действии, а также её административный интерфейс (логин с емэйлом `admin@admin` и паролем `admin`), можно на демо-сайте:

{{< button "https://demo.comentario.app/" "Демо-сайт комментариев" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Демо админки Comentario" "btn-primary mb-3" >}}

## Установка

Если вы хотите опробовать новую версию в деле, вот ссылки на документацию:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).
