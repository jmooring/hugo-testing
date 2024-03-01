---
type: post
date: "2024-03-01T15:28:06+01:00"
title: "3.5.0"
tags:
    - Comentario
    - веб
    - софт
    - разработка
    - релиз
    - Go
    - Angular
    - PostgreSQL
    - SQLite
image: "https://res.cloudinary.com/yktoo/image/upload/v1709303351/blog/tf3czhpofujlxezoj0eh.jpg"
imageCredit: "Изображение: кибермозг."
series: comentario
software: comentario
---

Выпущена версия [Comentario 3.5.0](https://gitlab.com/comentario/comentario/-/releases/v3.5.0).

[Comentario](/software/comentario) — это быстрый и мощный свободный сервер комментариев для веб-страниц, написанный на {{< fl "Go" >}}.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1709303351/blog/tf3czhpofujlxezoj0eh.jpg" >}}

## Что нового

<!--more-->

### Поддержка SQLite

Главным новшеством в версии **3.5.0** является, безусловно, [встроенная поддержка](https://docs.comentario.app/en/installation/requirements/#sqlite) файловой базы данных {{< fl "SQLite" >}}. Попробовать {{< fl "Comentario" >}} в деле стало теперь совсем просто: достаточно лишь [установить бинарный пакет](https://docs.comentario.app/en/installation/binary-package/), и сервер тут же будет запущен и готов к использованию.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1709307684/blog/igyms1own0oicxj45avl.gif" "Установка Comentario из пакета." "border shadow" >}}

Этот же подход можно использовать для простых, не сильно загруженных веб-сайтов (работает же это для {{< fl "remark42" >}}) — таким образом, вы экономите время на настройку и деньги на оплату отдельного экземпляра {{< fl "PostgreSQL" >}}.

### SMTP без аутентификации

Имя пользователя и пароль стали необязательными в [настройках сервера SMTP](https://docs.comentario.app/en/configuration/backend/secrets/#email-sending). Если они не указаны, {{< fl "Comentario" >}} не будет пытаться провести аутентификацию при подключении к серверу для отправки емэйлов.

### Прочие изменения

* Встраиваемые комментарии: панель профиля пользователя получила новый облик (используются иконки вместо надписей)
* Встраиваемые комментарии: панель инструментов модератора ({{< fl "Moderator tools" >}}) удалена за ненадобностью — единственная кнопка переехала на панель профиля
* Встраиваемые комментарии: панель сортировки в отсутствие комментов теперь скрывается
* Исправлен {{< fl "API" >}}-эндпоинт для получения количества комментариев ([#66](https://gitlab.com/comentario/comentario/-/issues/66))
* Инструментарий обновлён до {{< fl "Go" >}} **1.22**, {{< fl "Hugo" >}} **0.123.6**
* Документация: добавлены [подробные инструкции](https://docs.comentario.app/en/configuration/idps/) по настройке авторизации через {{< fl "Facebook" >}}, {{< fl "Google" >}}, {{< fl "Twitter" >}}, {{< fl "GitHub" >}}, {{< fl "GitLab" >}} ([#67](https://gitlab.com/comentario/comentario/-/issues/67))
* Прочие обновления документации

## Демо-версия

Увидеть новую версию в действии, а также её административный интерфейс (логин с емэйлом `admin@admin` и паролем `admin`), можно на демо-сайте:

{{< button "https://demo.comentario.app/" "Демо-сайт комментариев" "btn-primary mb-3" >}}
{{< button "https://edge.comentario.app/" "Демо админки Comentario" "btn-primary mb-3" >}}

## Установка

Если вы хотите установить {{< fl "Comentario" >}}, вот ссылки на документацию:

* [Getting started](https://docs.comentario.app/en/getting-started/).
* [Installation](https://docs.comentario.app/en/installation/).
* [Migration](https://docs.comentario.app/en/installation/migration/).
