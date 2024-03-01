---
type: post
date: "2013-10-25T00:00:00Z"
title: "Aikikai Amersfoort website"
tags:
    - aikido
    - Amersfoort
    - Netherlands
    - sport
    - web
    - website
    - Yii
image: "https://res.cloudinary.com/yktoo/image/upload/blog/8ghogu0wxhqr1069.png"
---

I've done something useful in my spare time. I crafted a website for my aikido school (or {{< fl "dojo" >}}) called **Aikikai Amersfoort**, which is now located at [aikikai-amersfoort.nl](http://aikikai-amersfoort.nl/).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/8ghogu0wxhqr1069.png" >}}

The former website was really ancient-looking, built back in 2004 and totally outdated. For example, one had to download an .avi file if they wanted to watch a video. YouTube did not exist at that remote moment.

<!--more-->

The redesign project was initiated by another web developer, also a member of our club. He created a Joomla-based version, but that was never finished. Later he's quit aikido altogether and focused on his other hobby, playing bass.

I offered my service to our sensei and started to dig into the intricacies of Joomla. It didn't take long until I gave up due to a number of reasons. For instance, the used version was outdated and an upgrade was necessary. After some deliberation I've made a quick [Yii](http://www.yiiframework.com/) based prototype in a couple of hours, reusing some parts of [my own website](/). The result looked very satisfying, so we've decided to ditch Joomla. In a couple of nights I've finished the main functionality (user and post management, news feed, agenda). To make our lives easier I've implemented [Markdown](http://daringfireball.net/projects/markdown/syntax) syntax for posts, which Yii [supports](http://www.yiiframework.com/doc/api/1.1/CMarkdown) out-of-the-box.

I've also added bells and whistles for the admin: a New Post button in the main menu and a status line at the bottom of every post:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/c6yrswy0p0oy1337.png" >}}

A bit more effort was required to embed a Google map denoting two our locations, but with the EGMap extension it turned out to be quite straightforward:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/pf78ur0lhkg10864.png" >}}

The website is in Dutch, which is the only language needed for its audience. And, of course, all the trendy social stuff: [Facebook](http://www.facebook.com/pages/Aikikai-Amersfoort/233137963447868), [Twitter](http://twitter.com/aiki_amersfoort), [Google+](http://plus.google.com/112010950208592078236), [YouTube](http://www.youtube.com/user/JoginderSinghAikido).

I can conclude that Yii is a pretty handy thing, especially for a lightweight website like this. I'm also looking at [Symfony](http://symfony.com/) and [Symfony CMF](http://cmf.symfony.com/), the latter gets quite positive reviews.

The new website officially went live on October 20<sup>th</sup>.
