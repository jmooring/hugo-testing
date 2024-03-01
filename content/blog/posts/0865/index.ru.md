---
type: post
date: "2023-04-14T17:07:17+02:00"
title: "2.3.1"
tags:
    - Comentario
    - веб
    - софт
    - разработка
    - Go
    - Angular
image: "https://res.cloudinary.com/yktoo/image/upload/v1680875488/blog/aymiialjtcr6gxvtlh7d.png"
series: comentario
software: comentario
---

Вышла версия [Comentario](/software/comentario) **[2.3.1](https://gitlab.com/comentario/comentario/-/releases/v2.3.1)**.

{{< fl "Comentario" >}} — это легковесный, мощный и свободный сервер комментариев для веб-страниц, написанный на {{< fl "Go" >}} и {{< fl "Angular" >}}.

## Что нового

<!--more-->

* Новый график в Дашборде, показывающий ежедневное количество просмотров и комментариев за последние **30** дней по всем доменам пользователя:
{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1681485503/blog/os19mq1xygamb6fxplfu.png" "Новый Дашборд с графиком по всем доменам пользователя." "border shadow" >}}
* Сбор статистики оптимизирован, выигрыш в скорости будет особенно заметен на доменах с большим количеством просмотров и комментариев.
* Исправление: статистика отображается за корректный **30**-дневный интервал; в цифрах метрик используются те же цвета, что и на графике.
* Встраиваемая часть:
    * Исправлен сброс пароля комментатора.
    * Добавлен всплывающий диалог для сброса пароля (раньше пользователь для этого перенаправлялся на страницу во фронтенде).
    * Исправлено сохранение настроек пользователей, входящих через {{< fl "OAuth" >}}.
    * Новая настройка: тег `data-css-override="false"` полностью отключает загрузку {{< fl "CSS" >}} ([#10](https://gitlab.com/comentario/comentario/-/issues/10)).
    * Запуск {{< fl "Comentario" >}} больше не останавливается при сбоях загрузки {{< fl "CSS" >}} ([#12](https://gitlab.com/comentario/comentario/-/issues/12)).
    * Исправлены неработающие атрибуты `data-*`.
    * Для разработчиков добавлен {{< fl "yarn" >}}-скрипт `start`, осуществляющий автоматическую перекомпиляцию исходников при любом изменении.
* {{< fl "Helm chart" >}}: убрано значение `comentario.indexHtmlConfigMapName` как неиспользуемое.
* Схема базы данных по-прежнему сохраняет полную совместимость с {{< fl "Commento" >}} 1.8.0.

## Демо-версия

Увидеть {{< fl "Comentario" >}} в действии можно на [демо-сайте](https://demo.comentario.app/).

## Ресурсы

* [Репозиторий на GitLab](https://gitlab.com/comentario/comentario)
* [Документация](https://docs.comentario.app/)
* [История изменений](https://gitlab.com/comentario/comentario/-/blob/dev/CHANGELOG.md)
