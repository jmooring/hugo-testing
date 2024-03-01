---
type: post
date: "2021-07-01T12:26:28+02:00"
title: "July update: out of beta, 25% discount"
tags:
    - once.to
    - news
    - Internet
    - web
    - Yktoo Solutions
    - software
    - link shortener
    - URL shortener
image: "https://res.cloudinary.com/yktoo/image/upload/blog/s3haesxb1fgf3otyk51i.png"
series: once.to
---

Today the world's best link shortener **[once.to](https://once.to/once)** has officially [lost its beta status](https://docs.once.to/en/blog/0013/)!

Here's a short summary of what we've been up to in the past thirty days or so.

<!--more-->

## Link statistics reset

Sometimes you want to clean up and start over again. When it comes to a link's statistical data, there's a number of possible reasons to do that, for example:

* When a link is just created, you may want to run a number of manual or automated tests to verify everything works as expected. This is particularly true for [links with a password](https://docs.once.to/en/blog/0006/) or complex use cases involving [advanced redirection rules](https://docs.once.to/en/blog/0007/);
* You’ve made a mistake and then fixed it;
* You retarget your link for another landing page and want to start over.

In **once.to** it's [possible now](https://docs.once.to/en/blog/0008/) for any link you own.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nvlcpiinrzrsggj4vtzl.png" "The Reset stats button in Link details." "border shadow" >}}

Read [this post](https://docs.once.to/en/blog/0008/) for more details.

## Specific HTTP status

In certain cases you might want to override the standard behaviour of **once.to** and explicitly specify the HTTP status code to be used when redirecting the visitor to the target URL.

You [can do that](https://docs.once.to/en/blog/0010/) using the Link properties dialog:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/gqzl0zdqstbou44ckfxj.png" "HTTP status code dropdown in the Link properties dialog." "shadow" >}}

The supported status codes are:

* `301 Moved Permanently`
* `302 Found`
* `303 See Other`
* `307 Temporary Redirect`
* `308 Permanent Redirect`

Refer to [once.to documentation](https://docs.once.to/en/kb/http-status-codes/) to learn more.

## UTM builder

You can now better integrate your links with Google Analytics (or a similar service) by applying UTM parameters to your links. The Link properties dialog has been enhanced with the so-called **UTM builder**:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/v7rdsbkgi0qrrpd6jskf.png" "The UTM builder of once.to." "shadow" >}}

Modifying the parameters will update the Target URL accordingly, keeping other parameters (if any) intact. And vice versa, every change to the Target URL will be reflected in the UTM builder fields.

This feature is available to every registered user, including those on the Free service plan.

More details on that [here](https://docs.once.to/en/blog/0011/).

## Timeline

The documentation site features a [timeline page](https://once.to/timeline), depicting the major milestones achieved by **once.to**.

## 25% July discount

Last but not least, to celebrate the official go-live of the service, we offer a **year-long 25% discount** for first-time buyers: use the code `GOLIVE2021` at the checkout.

The promotion is active during this month and ends on July 31, 2021, so be quick!
