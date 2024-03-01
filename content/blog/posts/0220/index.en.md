---
type: post
date: "2014-05-24T00:00:00Z"
title: "Where my foot has trod"
tags:
    - blog
    - web
    - website
image: "https://res.cloudinary.com/yktoo/image/upload/blog/emyruiomh9sf1183.png"
---

A while ago I've added a new section to my website, [Blog Map](/blog/map), which shows all places I ever blogged about. You can view related posts by clicking a place marker:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/emyruiomh9sf1183.png" >}}

<!--more-->

A reverse functionality has also been added to blog posts. At the end of every text you can see a new section, which is only visible in the single-post view mode:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/7kd7rs9wszhd1238.png" >}}

For the nerdy ones I have to say that I'm making use of the [Yii](http://www.yiiframework.com/) extension called [EGMap](http://www.yiiframework.com/extension/egmap/). It also provides a clusterer, which merges adjacent points into one spot at smaller scales.
