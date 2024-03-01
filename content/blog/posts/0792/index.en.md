---
type: post
date: "2021-09-08T10:51:12+02:00"
title: "💡Characters & Compose key: how to type unusual characters in Linux"
tags:
    - Linux
    - Ubuntu
    - Gnome
    - Gnome Characters
    - Gnome Character Map
    - Gnome Tweaks
    - compose
    - software
    - how-to
    - tips & tricks
    - emoji
image: "https://res.cloudinary.com/yktoo/image/upload/blog/hnn2tkz7h5novfdi9t3x.png"
---

A devoted reader of my blog might have noticed that I care about typography. For instance, my use of em-dash — which I love — or ⌀, the diameter symbol. That involves the use of special techniques while typing.

It's also worth noting that many people prefer to communicate with emojis over letters nowadays (which is even reflected [in modern architecture](0324)).

While it's quite trivial to enter such characters on a smartphone, it may get tricky when it comes to a Linux desktop. But fear not, for that is actually taken care of: there are even multiple ways of inserting your favourite 🐱.

<!--more-->

I'll elaborate on those ways from trivial to advanced.

## Characters

If we're talking **Gnome** (for example, a stock **Ubuntu**), there's the [Characters](https://gitlab.gnome.org/GNOME/gnome-characters) (`gnome-characters`) application readily available out-of-the-box.

It allows you to browse emojis and other characters, arranged in groups. When you click on a character, you'll get a popup that allows you to copy it to the clipboard (there's still a question why fly-agaric is filed under "Food & Drink" though):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hinhtjs8fwuyfmeswzvn.gif" "Gnome Characters." >}}

Even better, you can filter emojis by name here:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/mvtwvjn6n4ilkaju7mja.png" "Filter in Gnome Characters." >}}

## Character Map

Next to the Gnome Characters there's also a bit less user-friendly **Character Map** app ([gucharmap](https://wiki.gnome.org/Apps/Gucharmap)). You can install it using the button below:

{{< apt-button "gucharmap" "Install Character Map" >}}

<p></p>

or with the following command in the Terminal:

```bash
sudo apt install gucharmap
```

This one is more suitable for searching for various letters and symbols rather than emojis; its search feature is also a bit hacky for you need to be exact in your search query.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/mbkibtq93kcppns4famm.png" "Character Map (`gucharmap`)." >}}

## Compose key for advanced typing

The above applications come in handy if you only occasionally search for a specific emoji, but they're hardly usable during routine text typing.

In the latter case your best choice is the so-called {{< wiki "Compose key" >}}. It's a key you designate for entering the *compose mode*, when you "assemble" a character from parts.

By default there's no *Compose* key assigned in the system. In order to configure it you'll first need to install the [Gnome Tweaks](https://wiki.gnome.org/Apps/Tweaks) utility app using the button below:

{{< apt-button "gnome-tweaks" "Install Tweaks" >}}

<p></p>

or by running the following in the Terminal:

```bash
sudo apt install gnome-tweaks
```

Having installed and started **Tweaks**, navigate to *Keyboard & Mouse* and click the button next to *Compose Key*:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/qvpqsshuyboixnig4jmu.png" "Compose Key setting in Gnome Tweaks." >}}

You'll get a number of options to choose from. My personal preference is right <kbd>Alt</kbd>, as it's both convenient and not conflicting with other shortcuts I'm using.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/go9lrixq5cmugbjem2kz.png" "Compose Key selection in Gnome Tweaks." >}}

Once you've assigned the compose key, you'll be able to build up lots of different characters.

You'll always need to tap the compose key first, followed by other characters, for instance:

* Em dash: <kbd>-</kbd><kbd>-</kbd><kbd>-</kbd>
* Left angle quote `«`: <kbd>&lt;</kbd><kbd>&lt;</kbd>, right quote `»`: <kbd>&gt;</kbd><kbd>&gt;</kbd>
* Euro sign `€`: <kbd>C</kbd><kbd>=</kbd>
* Copyright sign `©`: <kbd>o</kbd><kbd>c</kbd>
* Right arrow `→`: <kbd>-</kbd><kbd>&gt;</kbd>
* Character `é`: <kbd>e</kbd><kbd>'</kbd>
* Character `¾`: <kbd>3</kbd><kbd>4</kbd>

As you see, the above is consistent and can easily be memorised. Some other combinations are less evident, but can still be remembered if you use them often.

Good news is that these combinations can usually be typed in any order, and they work in every text field.

[X.org documentation](https://www.x.org/releases/X11R7.7/doc/libX11/i18n/compose/en_US.UTF-8.html) provides the complete list of available compose combinations, whereas I list a few more common ones under the spoiler below.

{{< spoiler "More compose combination examples" >}}
{{< table "table table-narrow table-striped mx-auto" >}}
|Combination                         |Result   |
|------------------------------------|:-------:|
|<kbd>'</kbd><kbd>a</kbd>            |á|
|<kbd>"</kbd><kbd>a</kbd>            |ä|
|<kbd>\`</kbd><kbd>a</kbd>           |à|
|<kbd>~</kbd><kbd>a</kbd>            |ã|
|<kbd>^</kbd><kbd>a</kbd>            |â|
|<kbd>c</kbd><kbd>a</kbd>            |ǎ|
|<kbd>&lt;</kbd><kbd>s</kbd>         |š|
|<kbd>o</kbd><kbd>a</kbd>            |å|
|<kbd>-</kbd><kbd>a</kbd>            |ā|
|<kbd>,</kbd><kbd>a</kbd>            |ą|
|<kbd>b</kbd><kbd>a</kbd>            |ă|
|<kbd>?</kbd><kbd>a</kbd>            |ả|
|<kbd>.</kbd><kbd>a</kbd>            |ȧ|
|<kbd>a</kbd><kbd>e</kbd>            |æ|
|<kbd>A</kbd><kbd>E</kbd>            |Æ|
|<kbd>o</kbd><kbd>e</kbd>            |œ|
|<kbd>O</kbd><kbd>E</kbd>            |Œ|
|<kbd>d</kbd><kbd>h</kbd>            |ð|
|<kbd>D</kbd><kbd>H</kbd>            |Ð|
|<kbd>o</kbd><kbd>o</kbd>            |°|
|<kbd>o</kbd><kbd>x</kbd>            |¤|
|<kbd>o</kbd><kbd>c</kbd>            |©|
|<kbd>o</kbd><kbd>r</kbd>            |®|
|<kbd>s</kbd><kbd>o</kbd>            |§|
|<kbd>s</kbd><kbd>s</kbd>            |ß|
|<kbd>S</kbd><kbd>S</kbd>            |ẞ|
|<kbd>t</kbd><kbd>h</kbd>            |þ|
|<kbd>T</kbd><kbd>H</kbd>            |Þ|
|<kbd>t</kbd><kbd>m</kbd>            |™|
|<kbd>x</kbd><kbd>x</kbd>            |×|
|<kbd>.</kbd><kbd>.</kbd>            |…|
|<kbd>.</kbd><kbd>^</kbd>            |·|
|<kbd>&lt;</kbd><kbd>&lt;</kbd>      |«|
|<kbd>&gt;</kbd><kbd>&gt;</kbd>      |»|
|<kbd>/</kbd><kbd>/</kbd>            |\\|
|<kbd>/</kbd><kbd>C</kbd>            |₡|
|<kbd>/</kbd><kbd>o</kbd>            |ø|
|<kbd>/</kbd><kbd>O</kbd>            |Ø|
|<kbd>?</kbd><kbd>?</kbd>            |¿|
|<kbd>'</kbd><kbd>&lt;</kbd>         |‘|
|<kbd>'</kbd><kbd>&gt;</kbd>         |’|
|<kbd>,</kbd><kbd>c</kbd>            |ç|
|<kbd>,</kbd><kbd>C</kbd>            |Ç|
|<kbd>"</kbd><kbd>&lt;</kbd>         |“|
|<kbd>"</kbd><kbd>&gt;</kbd>         |”|
|<kbd>!</kbd><kbd>!</kbd>            |¡|
|<kbd>-</kbd><kbd>-</kbd><kbd>-</kbd>|—|
|<kbd>-</kbd><kbd>-</kbd><kbd>.</kbd>|–|
|<kbd>-</kbd><kbd>:</kbd>            |÷|
|<kbd>-</kbd><kbd>d</kbd>            |đ|
|<kbd>-</kbd><kbd>D</kbd>            |Đ|
|<kbd>-</kbd><kbd>L</kbd>            |£|
|<kbd>^</kbd><kbd>0</kbd>            |⁰|
|<kbd>^</kbd><kbd>1</kbd>            |¹|
|<kbd>^</kbd><kbd>2</kbd>            |²|
|<kbd>^</kbd><kbd>3</kbd>            |³|
|<kbd>^</kbd><kbd>_</kbd><kbd>a</kbd>|ª|
|<kbd>^</kbd><kbd>_</kbd><kbd>o</kbd>|º|
|<kbd>_</kbd><kbd>0</kbd>            |₀|
|<kbd>_</kbd><kbd>1</kbd>            |₁|
|<kbd>_</kbd><kbd>2</kbd>            |₂|
|<kbd>_</kbd><kbd>3</kbd>            |₃|
|<kbd>~</kbd><kbd>n</kbd>            |ñ|
|<kbd>\|</kbd><kbd>c</kbd>           |¢|
|<kbd>=</kbd><kbd>y</kbd>            |¥|
|<kbd>=</kbd><kbd>c</kbd>            |€|
|<kbd>1</kbd><kbd>2</kbd>            |½|
|<kbd>1</kbd><kbd>4</kbd>            |¼|
|<kbd>3</kbd><kbd>4</kbd>            |¾|
{{< /table >}}
{{< /spoiler >}}

There's a nice bonus to compose typing that the characters show up on screen as you type, and turn into the final character once it's finished.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/elcnj8hy1esl9tbgld32.gif" "Example of compose text typing." >}}

Should you wish to cancel the Compose mode after hitting the compose key, simply press <kbd>Esc</kbd>.

## Unicode code-point entry for wizards

The most advanced (and, perhaps, efficient) way of dealing with weird characters is a direct code entry of the desired Unicode code-point. It may even be the only way when it comes to, say, {{< wiki "Spacing Modifier Letters" >}} or {{< wiki "Combining Diacritical Marks" >}}.

You enter the character by pressing <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>U</kbd>, followed by a hexadecimal character code, and, finally, an <kbd>Enter</kbd>.

Here's an example of putting an accent above a Cyrillic {{< fl "е́" >}} — which is supposed to be achieved by combining the letter {{< fl "е" >}} with the *Combining Acute Accent* (code `301`), and not by typing the Latin `é` instead:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ngdeit5oghnqu2idwvgt.gif" "Example of typing an Acute Accent (`U+0301`) using code entry." >}}

## That's it

I hope this will prove useful, feel free to comment if I missed something in this post!
