---
type: post
date: "2021-04-01T08:52:20+02:00"
title: "Jokes aside: World's fastest link shortener"
tags:
    - Netherlands
    - once.to
    - news
    - Internet
    - web
    - Yktoo Solutions
    - software
    - link shortener
image: "https://res.cloudinary.com/yktoo/image/upload/blog/hsrz3lvxzubnlp4yjzbf.png"
series: once.to
---

Even though it's April 1<sup>st</sup>, I have some serious story for you today! It's about what I've been up to for the last six months, which has been a pretty busy, interesting, and eye-opening time for me.

Long story short: we at [Yktoo Solutions](https://once.to/ysol) are busy building the **best link shortener in the world**, which we called **[once.to](https://once.to/once)**.

Do read on for intriguing details explaining what that is and why it is so fascinating.

<!--more-->

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hsrz3lvxzubnlp4yjzbf.png" >}}

## Link shortener

But first of all, let's briefly introduce you to link shorteners and explain what it's used for.

You are undoubtedly familiar with web addresses, the so-called {{< wiki "URL" "en" "URLs" >}}, which you normally see in your browser's address bar.

Now, there's ever growing amount of informational content in the world, which often causes those addresses to become more and more intricate. They may contain all sorts of characters and parameters, and it gets particularly tricky when it comes to URLs with national characters — for instance, Cyrillic — which get {{< wiki "Percent-encoding" "en" "percent-encoded" >}}. This usually results in an unreadable mess like this:

`https://yktoo.com/ru/blog/post/2021/04/01-%D1%88%D1%83%D1%82%D0%BA%D0%B8-%D0%B2-%D1%81%D1%82%D0%BE%D1%80%D0%BE%D0%BD%D1%83-%D1%81%D0%B0%D0%BC%D1%8B%D0%B9-%D0%B1%D1%8B%D1%81%D1%82%D1%80%D1%8B%D0%B9-%D1%81%D0%BE%D0%BA%D1%80%D0%B0%D1%89%D0%B0%D1%82%D0%B5%D0%BB%D1%8C-%D1%81%D1%81%D1%8B%D0%BB%D0%BE%D0%BA-%D0%B2-%D0%BC%D0%B8%D1%80%D0%B5/`

The intimidating URL above leads to this same post in Russian, by the way.

Such an unwieldy URL is obviously impossible to pronounce nor to type over; I'm also not very enthusiastic about posting that on social media or messengers because it looks messy.

To address this problem, the humanity has invented *link shorteners* (also known as *URL shorteners*) quite a while ago. There's plenty of them out there: `bit.ly` and `tinyurl.com` just to mention a couple.

The idea behind a shortener is utterly simple: you enter the full URL and get a much shorter one in return. In the case of the link above, for example, I got [1e.to/8P2Fn5](https://1e.to/8P2Fn5).

When someone tries to open that short link later, their browser gets automatically redirected to the original, long URL, whereas the shortener service records the user's data provided by the browser. Thanks to that, the owner of the link can analyze the link's statistics and the behaviour of its users.

Short, attractive links are especially valuable for marketing purposes: according to some studies, branded short links enjoy up to **39%** more clicks when compared to generic short URLs. And, of course, they're much easier to share.

## Faster, Cheaper, Better

So why do we need yet another link shortener, you might ask.

We strongly believe we're capable of building a service that is **simply better**. We have the best developers and designers in the world of link shorteners. We opt for the smartest solutions and technologies. And we have strict quality standards which ensure unparallelled performance and a bug-free experience.

[once.to](https://once.to/once)'s tagline — **World's fastest link shortener** — is founded upon our [performance comparison](https://once.to/fast) with other (still) more popular analogs.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/adbyy2vbx5wexge1dtfx.svg" "The throughput of once.to compared with similar services." >}}

Why is the performance important?

As you might have heard, search engines tend to [punish sluggish websites](https://developers.google.com/web/updates/2018/07/search-ads-speed) by lowering them in their search results. And rightly so: according to [stats by Google](https://www.thinkwithgoogle.com/consumer-insights/consumer-trends/mobile-site-load-time-statistics/), about a half (!) of visits get abandoned if a website takes longer than three seconds to open:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/v1617274911/blog/derdrpazmsbyojyupfeu.png" "The percentage of abandoned visits for sites taking longer than 3 seconds to load. Source: Google." >}}

So, are you still considering using `t.ly`, which takes [2.81 s on average](https://once.to/fast) *only to redirect* to your website?

## Even better

We're very ambitious and incredibly productive: all you can see in [our web application](https://once.to/once) has been developed *from scratch* during the last half-year.

{{< spoiler "Technologies we use" >}}
A few words about the technology stack used:

* Our backend is a distributed system built with {{< wiki "Go_(programming_language)" "en" "Go" >}} and {{< wiki "MongoDB" >}}.
* The frontend is implemented using {{< wiki "Angular_(web_framework)" "en" "Angular" >}}.
* The projects are built using a fully automated CI pipeline in {{< wiki "GitLab" >}}, which involves thousands of automated tests.
* The service is running in a {{< wiki "Kubernetes" >}} cluster, supporting virtually unlimited {{< wiki "horizontal scaling" >}}.
{{< /spoiler >}}

Certainly, we are still at the beginning of our journey and we have many challenges ahead of us. But the key metrics for us will always be the **quality** and the **functionality** of our product — which will inevitably translate into the best price/performance ratio for the end user.

**once.to** currently offers a [free service plan and two paid ones](https://once.to/free), which provide more features.

Today we're announcing the public beta availability of our service. Everyone is entitled to a **free trial** period of **30** days during this public beta phase.

## What's in the box

What we are offering right now:

* An abnormally fast redirect engine with an average redirect time of ca. **65 milliseconds**.
* A possibility to create "anonymous" short links right from the [home page](https://once.to/once).
* For a registered user:
    * A dashboard showing complete link redirect statistics.
    * Custom domains to create short links on, with automated SSL certificate provisioned by [Let's Encrypt](https://once.to/lets).
    * Two equivalent "community" domains for short links: `once.to` and `1e.to`.
    * Branded (customised) links.
    * Expiring links, which stop working after a certain moment.
    * Future links, which start working at a certain moment.
    * Link editing and deletion.
    * Deactivating a link (temporarily or permanently).
    * Link QR codes.
    * Advanced link usage statistics, including figures by browser, device type, language, country etc.      
    * HTTP redirects of type **301** (permanent) and **302** (temporary).
* Complete multilingual support for English, Dutch, and Russian.
* Mobile-first web application.
* Product [documentation](https://docs.once.to/en/) (a bit limited, but evolving).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xdfx7qliv8emldv3qqib.png" "once.to dashboard." >}}

## Our aspirations

When it comes to our plans, the list gets much, much longer. Just to mention some of our prioritised tasks:

* More flexible statistics.
* Smart redirects, allowing for switching the destination URL based on the user's language/country/device/browser etc.
* Password-protected links.
* Link tags.
* Bulk link export and import.
* Login via social networks.
* Downloadable statistical reports.

## Beta version

The service is currently under active development, and new features are added to [once.to](https://once.to/once) virtually on a daily basis.

In the near future **once.to** will get an own blog. In the meantime, feel free to play with the service and share your short links! Also, follow us on [Facebook](https://www.facebook.com/once.to.links), [Twitter](https://twitter.com/once__to), and [LinkedIn](https://www.linkedin.com/company/once-to/).

Stay tuned for more!
