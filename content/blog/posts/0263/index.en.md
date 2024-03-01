---
type: post
date: "2015-11-14T00:00:00Z"
title: "yktoo.com 2.0"
tags:
    - Bootstrap
    - web
    - website
    - Yii
    - Yii2
---

It cost me quite an effort to make myself migrate my website to Yii 2.

And now, after about one and a half months of evening work (with breaks for workouts, birthday celebrations, recovering from insomnia and things like that) I can proudly present **yktoo.com version 2.0**.

The website has been built on [Yii framework 2.0](http://www.yiiframework.com/) and [Bootstrap 3](http://getbootstrap.com/), with a handful of extensions. Thanks to Bootstrap the website is built on the principles of {{< wiki "Responsive_web_design" "en" "responsive web design" >}}. This should make the pages look reasonably well on a broad range of devices, from mobile phones to desktops.

The structure of the website has also been revisited: the blog feed is now right on the [home page](/), and other sections have been moved around too. Due to that your RSS reader might show the last posts once again, sorry for that.

<!--more-->

Yii is also worth mentioning. Yii 2.x is a huge step forward as compared to the first version, with its PHP 5.4+ requirement to start with.

This step is, however, very painful for those poor web developers who need to migrate their code, as the compatibility between 1.x and 2.x is as good as non-existent. Of course, the migration guide is honest and open about it, but you only realise the magnitude of the trouble once you're into the migration process.

Every single line has to be reviewed and, most likely, rewritten. Everything in the framework that could be changed, was changed. All the classes have been renamed and scattered over numerous namespaces, method names and class hierarchies have been changed, all the fundamentals have been redesigned. The authors have written a [migration guide from the version 1.1](http://www.yiiframework.com/doc-2.0/guide-intro-upgrade-from-v1.html), but its contents is maybe some 10% of what you will actually need. Therefore you have to google every question you get, for instance, that `CHtml::link()` is now called `\yii\helpers\Html::a()`. The process is getting easier over time, but in the beginning it's a nightmare, with DB model migration (Active Record) being the worst. In my humble opinion, it would be a great idea to have a sort of "migration cookbook" in the docs.

Otherwise Yii deserves the highest praise for its architecture, implementation and documentation (well, at least for the ugly language it's written in). Its [asset bundle](http://www.yiiframework.com/doc-2.0/guide-structure-assets.html) structure, for example, is a remedy for a lot of issues of the first version.

So welcome, and should you spot any stupid (or not-so-stupid) mistake, please let me know via the [feedback form](/about/contact). Thanks in advance!
