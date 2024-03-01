---
type: post
date: "2013-12-13T00:00:00Z"
title: "DKLang Localization Package 4.01 & 5.0"
tags:
    - Delphi
    - DKLang
    - FireMonkey
    - GitHub
    - i18n
image: "https://res.cloudinary.com/yktoo/image/upload/blog/26gk9mjql1p41061.png"
software: dklang-localization-package
---

*Happy Friday the 13th! [Bruce Miller](http://rules-of-thumb.com/), the current maintainer of DKLang, is bringing great news for Delphi developers.*

It's been five years since [DKLang Localization Package](/software/dklang-localization-package) was last revised (time flies!). You might think that it had been abandoned, but no, it did its intended job well enough and it was solid enough that it didn't need an update.

<!--more-->

That is, until now. The past couple of years [Embarcadero](http://www.embarcadero.com/) (the current group behind Delphi) have been expanding Delphi to new platforms using a new framework, {{< wiki "FireMonkey" "en" "FireMonkey" >}}. So now was the time to make a major update to DKLang. We've completely rewritten DKLang so that it now works on both 32 and 64 bit VCL projects and all current FireMonkey platforms (Win32, Win64, OSX, iOS and Android).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/26gk9mjql1p41061.png" >}}

As of version **DKLang 5.0** we're cross-platform, both desktop and mobile!

In the process of updating the software we modernized the coding using generics and static classes and prepared for the future by moving to the latest string manipulation libraries and removing the need for mutable strings. While removing Win dependencies we added internal language and culture support with the bonus of getting native culture and language name lookups. We also added a new translation storage component to simplify the embedding and maintenance of translations through a new designer in the IDE.

In the 4.x family there's also a minor **4.01 release**, which fixes handling of read-only properties. Read on to find download links.

## Sample app screenshots {#sample-app-screenshots}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/6iwjs8n0b7ou1713.png" "DKLang Constants Demo on Mac OS X." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/s5w21cbawo3r3162.png" "DKLang Constants demo on iOS." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/dy9m2n9glxvt0588.png" "DKLang Constants demo on Android." >}}

## DKLang in Delphi IDE {#delphi-ide}

Below is a screenshot of Delphi form designer and the new DKLang Translation Storage editor.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jm9m25mako6b0276.png" "Delphi IDE with the Translation Storage editor." >}}

## Source code and documentation {#code-and-docs}

[DKLang GitHub repository](https://github.com/yktoo/dklang/) was rearranged into three branches by major version:

{{< table "table" >}}
| Family | Latest version | GitHub branch                                             | Download                                                                 | IDE support                          | Changelog                                                                          |
|--------|----------------|-----------------------------------------------------------|--------------------------------------------------------------------------|--------------------------------------|------------------------------------------------------------------------------------|
| 3.x    | 3.01           |[DKLang_v3](https://github.com/yktoo/dklang/tree/DKLang_v3)|[dklang-3.01.zip](https://github.com/yktoo/dklang/archive/dklang-3.01.zip)|Delphi 6; Delphi 7; BDS 2005; BDS 2006|[Changes](https://github.com/yktoo/dklang/wiki/Revision-History#20060822-dklang-301)|
| 4.x    | 4.01           |[DKLang_v4](https://github.com/yktoo/dklang/tree/DKLang_v4)|[dklang-4.01.zip](https://github.com/yktoo/dklang/archive/dklang-4.01.zip)|Delphi 2009+                          |[Changes](https://github.com/yktoo/dklang/wiki/Revision-History#20131207-dklang-401)|
| 5.x    | 5.0            |[master](https://github.com/yktoo/dklang/tree/master)      |[dklang-5.0.zip](https://github.com/yktoo/dklang/archive/dklang-5.0.zip)  |Delphi XE5+                           |[Changes](https://github.com/yktoo/dklang/wiki/Revision-History#20131207-dklang-50) |
{{< /table >}}

The project has also got [wiki-based documentation](https://github.com/yktoo/dklang/wiki). The source code can be downloaded using direct links above or from [GitHub](https://github.com/yktoo/dklang/).
