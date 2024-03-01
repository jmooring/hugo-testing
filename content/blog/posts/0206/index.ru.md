---
type: post
date: "2013-12-13T00:00:00Z"
title: "DKLang Localization Package 4.01 и 5.0"
tags:
    - Delphi
    - DKLang
    - FireMonkey
    - GitHub
    - интернационализация
image: "https://res.cloudinary.com/yktoo/image/upload/blog/26gk9mjql1p41061.png"
software: dklang-localization-package
---

*Поздравляю всех с пятницей, 13-м! [Брюс Миллер](http://rules-of-thumb.com/), текущий мейнтейнер DKLang, принёс отличные новости для дельфистов.*

Уж минуло пять лет с тех пор как библиотека для локализации программ для Delphi [DKLang Localization Package](/software/dklang-localization-package) обновлялась в последний раз. Могло создаться впечатление, что она заброшена-забыта — ан нет, просто DKLang выполняла свои задачи настолько хорошо, что обновления и не требовалось.

<!--more-->

Однако в последние пару лет компания [Embarcadero](http://www.embarcadero.com/) (текущий владелец Delphi) добавила возможность разработки на платформах, отличных от Windows, предоставив в наше распоряжение фреймворк {{< wiki "FireMonkey" "en" "FireMonkey" >}}. Наступила пора выпустить крупное обновление пакета: библиотека была полностью переписана и теперь поддерживает как 32- и 64-битные VCL-проекты, так и все платформы FireMonkey (Win32, Win64, OSX, iOS и Android).

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/26gk9mjql1p41061.png" >}}

Начиная с версии **DKLang 5.0**, она полностью кросс-платформенная и поддерживает как десктопные, так и на мобильные ОС.

В процессе обновления кода были применены всякие модные штуки, наподобие generics и статических классов. Кроме того, с заделом на будущее, все манипуляции со строками теперь осуществляются с применением современных библиотек, а необходимость в изменяемых (mutable) строках отпала. Были удалены специфические Windows-зависимости и добавлена внутренняя поддержка языков и культур, с бонусом в виде стандартных lookups для языков/культур. Помимо этого, в DKLang появился новый компонент для хранения переводов (DKLang Translation Storage) и специальный IDE-дизайнер для него.

Параллельно выпущена **версия 4.01** — минорный релиз, в котором исправлена работа с read-only-свойствами. Ссылки на скачивание ниже.

## Скриншоты демо-приложений {#sample-app-screenshots}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/6iwjs8n0b7ou1713.png" "Пример DKLang Constants на Mac OS X." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/s5w21cbawo3r3162.png" "Пример DKLang Constants на iOS." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/dy9m2n9glxvt0588.png" "Пример DKLang Constants на Android." >}}

## DKLang в Delphi IDE {#delphi-ide}

Это скриншот дизайнера форм Delphi и редактора DKLang Translation Storage.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jm9m25mako6b0276.png" "Delphi IDE с открытым редактором Translation Storage." >}}

## Код и документация {#code-and-docs}

[Репозиторий GitHub](https://github.com/yktoo/dklang/) реорганизован и разбит на три ветки по мажорным версиям:

{{< table "table" >}}
| Категория | Последняя версия | Ветка GitHub                                              | Скачать                                                                  | Поддержка IDE                        | Изменения                                                                         |
|-----------|------------------|-----------------------------------------------------------|--------------------------------------------------------------------------|--------------------------------------|-----------------------------------------------------------------------------------|
| 3.x       | 3.01             |[DKLang_v3](https://github.com/yktoo/dklang/tree/DKLang_v3)|[dklang-3.01.zip](https://github.com/yktoo/dklang/archive/dklang-3.01.zip)|Delphi 6; Delphi 7; BDS 2005; BDS 2006|[Список](https://github.com/yktoo/dklang/wiki/Revision-History#20060822-dklang-301)|
| 4.x       | 4.01             |[DKLang_v4](https://github.com/yktoo/dklang/tree/DKLang_v4)|[dklang-4.01.zip](https://github.com/yktoo/dklang/archive/dklang-4.01.zip)|Delphi 2009+                          |[Список](https://github.com/yktoo/dklang/wiki/Revision-History#20131207-dklang-401)|
| 5.x       | 5.0              |[master](https://github.com/yktoo/dklang/tree/master)      |[dklang-5.0.zip](https://github.com/yktoo/dklang/archive/dklang-5.0.zip)  |Delphi XE5+                           |[Список](https://github.com/yktoo/dklang/wiki/Revision-History#20131207-dklang-50) |
{{< /table >}}

Проект также обзавёлся собственной [Wiki-документацией](https://github.com/yktoo/dklang/wiki). Скачать библиотеку можно по прямым ссылкам в таблице выше или с [GitHub](https://github.com/yktoo/dklang/).
