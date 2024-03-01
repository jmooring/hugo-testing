---
type: post
date: "2021-09-08T10:51:12+02:00"
title: "💡Characters и Compose key: как вводить необычные символы в Linux"
tags:
    - Linux
    - Ubuntu
    - Gnome
    - Gnome Characters
    - Gnome Character Map
    - Gnome Tweaks
    - compose
    - софт
    - инструкция
    - полезные советы
    - смайлик
image: "https://res.cloudinary.com/yktoo/image/upload/blog/hnn2tkz7h5novfdi9t3x.png"
---

Постоянные читатели моего блога, возможно, обратили внимание на мою заботу о типографике. В частности, я повсеместно использую парные кавычки-«ёлочки», узкие пробелы и — конечно же — длинное тире. Это требует применения специальных приёмов при вводе текста.

Стоит отметить также, что в настоящее время люди чаще общаются смайлами, чем текстом — их уже даже [на фасадах высекают](0324).

С вводом подобных символов на телефоне проблем не возникает, а как быть пользователям компьютеров с {{< fl "Linux" >}}? К счастью, здесь всё как раз замечательно🌈: есть сразу несколько способов для вставки вашего любимого 🐱.

<!--more-->

Рассказ об этих способах вести буду от простого к сложному.

## Приложение Characters

Если речь идёт о {{< fl "Gnome" >}} (в частности, об {{< fl "Ubuntu" >}}), здесь имеется стандартное приложение под названием [Characters](https://gitlab.gnome.org/GNOME/gnome-characters) (`gnome-characters`), в котором можно просматривать смайлы и все прочие символы, сгруппированные по тематике. Если кликнуть на символе, появится окно, позволяющее скопировать его в буфер обмена (вопрос, что делает мухомор в разделе «Еда и напитки», остаётся открытым):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hinhtjs8fwuyfmeswzvn.gif" "Приложение Gnome Characters." >}}

Что ещё удобнее, здесь есть поиск символа по названию, мгновенно фильтрующий символы по мере набора.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/mvtwvjn6n4ilkaju7mja.png" "Поиск в Gnome Characters." >}}

## Приложение Character Map

Наряду с {{< fl "Gnome Characters" >}} имеется и несколько менее дружелюбное к пользователю приложение {{< fl "Character Map" >}} ([gucharmap](https://wiki.gnome.org/Apps/Gucharmap)). Его можно установить с помощью вот этой кнопки:

{{< apt-button "gucharmap" "Установить Character Map" >}}

<p></p>

или следующей командой в терминале:

```bash
sudo apt install gucharmap
```

Оно скорее ориентировано на просмотр символов разных алфавитов, нежели на выбор смайлов. Тут также присутствует поиск, но при этом желательно точно знать, как называется то, что ты ищешь.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/mbkibtq93kcppns4famm.png" "Приложение Character Map (`gucharmap`)." >}}

## Клавиша Compose: для продвинутых

Вышеупомянутые приложения хорошо подходят для эпизодического поиска нужного смайла, но они навряд ли удобны при рутинном наборе текста.

Для последнего же удобнее всего использование так называемой {{< wiki "Compose" "ru" "клавиши Compose" >}}: заранее выбранной кнопки на клавиатуре, переводящей её — клавиатуру — в режим *композиции* или составления символа из нескольких частей.

По умолчанию {{< fl "Compose" >}}-клавиша в системе не назначена и, чтобы её задать, необходимо установить приложение [Gnome Tweaks](https://wiki.gnome.org/Apps/Tweaks). Сделать это можно с помощью кнопки:

{{< apt-button "gnome-tweaks" "Установить Tweaks" >}}

<p></p>

или команды в терминале:

```bash
sudo apt install gnome-tweaks
```

В {{< fl "Tweaks" >}} нужно перейти в раздел настроек клавиатуры и мыши и нажать на соответствующую кнопку:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/qvpqsshuyboixnig4jmu.png" "Настройка клавиши Compose в Gnome Tweaks." >}}

На выбор предлагается несколько вариантов. Я предпочитаю навешивать функцию {{< fl "Compose" >}} на правый <kbd>Alt</kbd>, так как это и удобно, и не конфликтует с используемыми мной сочетаниями клавиш.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/go9lrixq5cmugbjem2kz.png" "Выбор клавиши Compose в Gnome Tweaks." >}}

После назначения кнопки {{< fl "Compose" >}} у вас появляется возможность «составлять» символы из нескольких частей. Кнопку {{< fl "Compose" >}} нужно нажать и отпустить, после чего ввести последовательность «частей», например, для ввода:

* Длинного тире: <kbd>-</kbd><kbd>-</kbd><kbd>-</kbd>
* Открывающей угловой кавычки `«`: <kbd>&lt;</kbd><kbd>&lt;</kbd>, закрывающей `»` — <kbd>&gt;</kbd><kbd>&gt;</kbd>
* Символа евро `€`: <kbd>C</kbd><kbd>=</kbd>
* Символа копирайта `©`: <kbd>o</kbd><kbd>c</kbd>
* Стрелки вправо `→`: <kbd>-</kbd><kbd>&gt;</kbd>
* Символа `é`: <kbd>e</kbd><kbd>'</kbd>
* Символа `¾`: <kbd>3</kbd><kbd>4</kbd>

Согласитесь, выглядит это довольно логично и запоминается легко. Иные последовательности менее логичны, но их тоже можно запомнить. К тому же «части» символа зачастую можно вводить в любом порядке. И самое главное, это работает в любом поле ввода в системе.

[В документации X.org](https://www.x.org/releases/X11R7.7/doc/libX11/i18n/compose/en_US.UTF-8.html) приведён полный список доступных комбинаций {{< fl "Compose" >}}, а ниже под спойлером ещё несколько ходовых примеров.

{{< spoiler "Ещё примеры комбинаций Compose" >}}
{{< table "table table-narrow table-striped mx-auto" >}}
|Комбинация                          |Результат|
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

Удобно и то, что в процессе построения ваш ввод также отображается, заменяясь на готовый символ после завершения последовательности.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/elcnj8hy1esl9tbgld32.gif" "Пример ввода текста с применением кнопки Compose." >}}

А если после нажатия на {{< fl "Compose" >}} вы передумали составлять символ, просто нажмите <kbd>Esc</kbd>.

## Ввод кода Unicode: для магов

Самым продвинутым и, возможно, быстрым является прямой ввод {{< fl "Unicode" >}}-адреса требуемого символа. Если же речь идёт о {{< wiki "Модификаторы_букв" "ru" "символе-модификаторе" >}} и {{< wiki "Комбинируемые_диакритические_знаки" "ru" "диакритике" >}} — так и вовсе единственным.

Символ вводится с помощью комбинации <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>U</kbd>, после чего нужно ввести шестнадцатеричный {{< fl "Unicode" >}}-код символа и нажать <kbd>Enter</kbd>.

Вот пример того, как полагается ставить ударе́ние над буквой — путём ввода {{< wiki "Комбинируемые_диакритические_знаки" "ru" "комбинируемого символа" >}} с кодом `301` после буквы (не вводом другой буквы!):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ngdeit5oghnqu2idwvgt.gif" "Пример ввода модификатора акцента (`U+0301`) с помощью кода." >}}

## Итог

Надеюсь, что приведённые в посте советы окажутся полезными. Если я что-то упустил, пишите в комментариях!
