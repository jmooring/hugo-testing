---
type: post
date: "2014-05-24T00:00:00Z"
title: "Где ступала моя нога"
tags:
    - блог
    - веб
    - сайт
image: "https://res.cloudinary.com/yktoo/image/upload/blog/emyruiomh9sf1183.png"
---

Некоторое время назад я запустил на сайте новый подраздел [Карта блога](/blog/map), который отображает на карте все места, о которых я когда-либо писал. Если кликнуть на маркере, появляется список постов:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/emyruiomh9sf1183.png" >}}

<!--more-->

Аналогичная функциональность была добавлена и в посты — в конце поста появился специальный раздел (отображается только в режиме просмотра полного текста поста):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/7kd7rs9wszhd1238.png" >}}

Для тех, кому интересны технические подробности, могу сообщить, что используется [Yii](http://www.yiiframework.com/)-расширение [EGMap](http://www.yiiframework.com/extension/egmap/). В нём также активирован кластерер, объединяющий близко расположенные точки при мелком масштабе.
