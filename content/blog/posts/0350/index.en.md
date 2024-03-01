---
type: post
date: "2019-07-28T00:00:00Z"
title: "Self-hosting Commento with Docker Compose"
tags:
    - cloud
    - Commento
    - Disqus
    - Docker
    - Docker Compose
    - Linux
    - software
    - software development
    - how-to
image: commento.png
fulltextUrl: 'https://yktoo.solutions/blog/2019/07/28-self-hosting-commento-with-docker-compose/'
---

{{< div "alert alert-warning" >}}
**WARNING:**\
Commento is abandoned. I strongly recommend [using Comentario](/software/comentario) instead.
{{< /div >}}

---

A while ago I've made a decision to migrate off Disqus, which is arguably the most popular external commenting system for website owners.

## Why Commento?

The problem with Disqus, as with many other "free" products, was that you're most likely the product here. It has a ridiculously huge footprint (think *megabytes*) and "enriches" your page with more than a *hundred* additional HTTP requests.

Next to that, it shows ads—which you can buy off at "only" $9/month with their Plus plan. How bad should it be to start to search for alternatives?
