---
type: post
date: "2021-09-04T11:02:58+02:00"
title: "September update: statistics, redirects, abuse reports"
tags:
    - once.to
    - news
    - Internet
    - web
    - Yktoo Solutions
    - software
    - link shortener
    - URL shortener
    - security
    - cybersecurity
    - scammers
    - crooks
image: "https://res.cloudinary.com/yktoo/image/upload/blog/s3haesxb1fgf3otyk51i.png"
series: once.to
---

We're back with a number of updates about the world's fastest link shortener **[once.to](https://once.to/once)**!

This edition's highlights: phishing, abuse, slugs and redirects!

## Dirty Rotten Scoundrels

Shortly after [once.to went out of beta](0785) the service got flooded with phishing and otherwise malevolent links. There were dozens of them created during a short timespan, all leading to pages mimicking login pages of banks, Facebook, Google and so on.

<!--more-->

Since our service was young and relatively unknown back then, there was a moment when Google Safe Browsing added the entire `1e.to` domain to the list of "deceptive pages" (read more on this in [once.to blog](https://docs.once.to/en/blog/0015/)). That was an unexpected setback for us.

We managed to get ourselves out of trouble quite promptly, though:

* We've banned all malicious links, as well as users who created them. Some even tried to buy a paid subscription using a stolen credit card!
* We created a blacklist of domains and URLs the user cannot link to.
* We also blacklisted other URL shorteners and dynamic DNS services.
* We integrated [Google reCAPTCHA](https://www.google.com/recaptcha/) and activated it for anonymous users. This proved a significant burden for those willing to shorten numerous abusive links.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/q4xxhjz1qmlhsybx4vnx.png" "Google reCAPTCHA in action." >}}

There was a happy ending: `1e.to` was eventually removed from the deceptive site list and we never had that problem reoccurred since.

## Link redirect unwrapping

The next step in our holy war against scammers was the so-called [redirect unwrapping](https://docs.once.to/en/blog/0016/). The idea behind it is quite simple: when someone submits a long URL `A` that redirects the user to another address `B`, then this address `B` is used as the target URL for the short link.

This technique, however, doesn't stop after a single redirect. If the address `B` further redirects the user again, [once.to](https://once.to/once) will follow that and all subsequent redirects until it arrives at the final destination.

For example:

`http://facebook.com/yktoo` → `https://facebook.com/yktoo` → `https://www.facebook.com/yktoo`

This brings a number of benefits:

* Firstly, it reduces the time required for the visitor to get to the ultimate destination URL (which [is important](https://once.to/fast)).
* Secondly, it caps the number of redirects at **10**. This is consistent with how most browsers handle that: they will also give up after ten consecutive redirects.
* Thirdly, scammers often try to disguise the final address under a pile of redirects via different services. The point of that is pretty unclear to me as it's trivial for an automated service to untangle the entire redirect chain. Anyway, that's none of the problem anymore.
* And last but not least: it's not possible to shorten a non-existent or an unavailable URL, which is a win-win both for [once.to](https://once.to/once) and for the end user:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nmvfbirfoonhn2y8sbqo.png" "An attempt to shorten a non-existent URL." "border shadow" >}}

This redirect unwrapping technique is currently only applied to anonymous links, but will be extended to all shortened URLs in the future.

## Abusive links

In a rare case when a malicious link has infiltrated our service despite the measures mentioned above, any visitor can easily report it using a dedicated [abuse report form](https://once.to/abuse):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ktfwuvsudllmmltxqxnq.png" "once.to Abuse Report form." "border shadow" >}}

The form will automatically verify that the submitted link is indeed served by **once.to** and isn't banned yet.

## Beautified statistics

In the thick of our fight with scammers we at [once.to](https://once.to/once), nonetheless, don't forget about honest users. That said, we did have to reprioritize our tasks for a while in the wake of the events of last summer, but now we're back on track for new, exciting features.

One of the long-planned enhancements was improving link statistical charts.

It is now possible to view statistics by links, or, to be precise, by *slugs*:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/uopblhtcvqgsr3a8dfru.png" "Statistics by a link's slug." "border shadow" >}}

The slugs in the legend below the pie chart are clickable, and you can navigate directly to the corresponding link's property page.

Not only the slugs are now clickable in the legend, but referrers, too:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/togrjzwlveu2qy6uyexx.png" "Clickable referrer items in the legend." "border shadow" >}}

Legend items for the *Countries* and *Languages* dimensions now display a tooltip deciphering the corresponding ISO code, when you hover it with the mouse:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hwhebunbeeodfstbigi4.png" "Language code tooltip." "border shadow" >}}

## Stats on a mobile 

The new legend also improves the overall experience with pie charts on a small screen, like on a mobile phone, which wasn't quite up-to-par previously. The chart and its legend are scaled to fit the screen nicely:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/lhbd6uecijbxyq0gzutd.png" "Link statistics pie chart on a mobile screen." "border shadow" >}}

## Newsletter email

Yesterday the first edition of **once.to** newsletter was sent out. We intend to make such mailings regular, once or twice per month, to keep our users up-to-date.

Should you also be interested in receiving the newsletter, feel free to [register a free account](https://once.to/signup) and tick off the Newsletter checkbox during the sign-up.

## To be continued

The above is only a small selection of visible features landed in [once.to](https://once.to/once) over the past two months; there's also a lot of under-the-hood improvements aimed at optimising and stabilising the service.

And there's much more to come yet, so stay tuned.
