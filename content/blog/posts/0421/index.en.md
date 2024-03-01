---
type: post
date: "2019-10-10T15:35:51+02:00"
title: "Save trees, use Xournal"
tags:
    - Ubuntu
    - Linux
    - how-to
    - tips & tricks
    - software
    - PDF
image: "https://res.cloudinary.com/yktoo/image/upload/blog/25bk9kz1ii4s2514.png"
---

Joining the mass sustainability ~~hysteria~~ spree, I'd like to put my two cents into the future of my and others' grandchildren.

Many interactions with Dutch institutions result in a filled-in and signed document that needs to be emailed or uploaded.

Or another example: you visit [Russian Post](0257) where you're requested to fill out 117 copies of a certain form. Do not give in to the provocation and *do not* fill it in by hand!

<!--more-->

## Find deliverance in Xournal

Happy Linux users have the brilliant [Xournal](http://xournal.sourceforge.net/) at their disposal. I hardly ever print out documents since the moment I've discovered it.

Ubuntu provides *Xournal* in its mainline repositories. You can easily install it using the standard Ubuntu Software app, or using:

```bash
sudo apt install xournal
```

There's also a [snap](https://snapcraft.io/xournalpp) available.

## Using Xournal

*Xournal*'s interface is pretty much a no-brainer.

You can use this program as a notepad for drawings and notes, but in my opinion it's **PDF annotation** feature is where it really shines. All you need to do is open a PDF and there you go:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/25bk9kz1ii4s2514.png" "Xournal: annotating PDF has never been simpler." >}}

On the screenshot above, *Xournal* easily manages the **666**-page [WEF report](http://www3.weforum.org/docs/WEF_TheGlobalCompetitivenessReport2019.pdf) without a single hiccup.

Using the program, you can draw and add text blocks or images right on top of any PDF. So you can, for instance, scan your signature just once and then apply wherever is needed.

The annotations can be saved in a `.xoj` file, which will also store a reference (not content) to the original PDF.

And, finally, you can save a complete annotated version into another PDF using the **File ⇒ Export to PDF** menu item. Which you can later print out in the requested 117 copies.
