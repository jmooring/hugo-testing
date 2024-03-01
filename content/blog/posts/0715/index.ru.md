---
type: post
date: "2020-04-04T10:57:52+02:00"
title: "Данные по коронавирусу в Нидерландах"
tags:
    - Нидерланды
    - здравоохранение
    - коронавирус
    - COVID-19
    - GitHub
    - InfoPi
    - софт
image: "https://res.cloudinary.com/yktoo/image/upload/blog/wnb8jfzca1oijglb8uzn.png"
imageCredit: "График: CoronaWatchNL."
software: infopi
---

Кстати.

Обнаружил {{< fl "GitHub" >}}-репозиторий [CoronaWatchNL](https://github.com/J535D165/CoronaWatchNL) с ежедневно обновляемыми данными по коронавирусу в Нидерландах.

Данные в репозитории берутся из отчётов {{< abbr "RIVM" "Национальный институт здравоохранения и окружающей среды" >}} и собираются в целый ряд датасетов: инфицированные, госпитализированные, умершие по провинциям, полу, возрасту.

<!--more-->

На основании этих цифр проект также генерирует множество [графиков](https://github.com/J535D165/CoronaWatchNL/tree/master/plots). Например, вот развитие эпидемии в Нидерландах, привязанное к хронологии введения различных мер противодействия:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wnb8jfzca1oijglb8uzn.png" "Таймлайн — количество заражённых, госпитализированных, умерших. Источник: CoronaWatchNL." >}}

## InfoPi

При известной сноровке график нетрудно встроить и в [InfoPi](0713):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/anniuoeauebtwt66iwlo.png" "График COVID-19 в InfoPi." >}}

{{< spoiler "Подробности реализации" >}}

Для этого надо добавить ещё один компонент — назовём его `PicComponent`.

Поставим обновление {{< fl "URL" >}} картинки раз в пару часов, а чтобы она гарантированно перегружалась браузером, добавим параметр `random`.

`src/app/pic/pic.component.ts`:

```ts
import { Component, OnInit } from '@angular/core';
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';
import { timer } from 'rxjs';

@Component({
    selector: 'app-pic',
    templateUrl: './pic.component.html',
    styleUrls: ['./pic.component.scss']
})
export class PicComponent implements OnInit {

    picUrl: SafeResourceUrl;

    constructor(private domSanitizer: DomSanitizer) { }

    ngOnInit(): void {
        timer(0, 2 * 3600 * 1000).subscribe(() => this.update());
    }

    update(): void {
        this.picUrl = this.domSanitizer.bypassSecurityTrustResourceUrl(
            'https://raw.githubusercontent.com/J535D165/CoronaWatchNL/master/plots/overview_plot.png?' +
                'random=' + Math.random());
    }

}
```

`src/app/pic/pic.component.html`:

```html
<section *ngIf="picUrl" (click)="update()">
    <div class="pic-container">
        <img class="pic" [src]="picUrl" alt="">
    </div>
</section>
```

Чтобы картинка не выделялась своим белым фоном, инвертируем цвета с помощью фильтра.

`src/app/pic/pic.component.scss`:

```scss
.pic {
    max-width: 100%;
    max-height: 350px;
    filter: invert(1);
}
```

{{< /spoiler >}}
