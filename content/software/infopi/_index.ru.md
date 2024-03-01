---
title: InfoPi
subtitle: Информационный киоск на базе Raspberry Pi.
layout: product
icon: infopi-icon-64.png
software: infopi
weight: 50
active: true
codeRepoType: github
codeRepoPath: yktoo/infopi
licenses:
    - mit1
---

**InfoPi** — это одностраничное веб-приложение, отображающее различные данные, такие как прогноз погоды и расписание поездов, обновляемые в реальном времени. Приложение разработано на [Angular](https://angular.io/) и может быть собрано в один запускаемый пакет с браузером [Electron](https://www.electronjs.org/).

Моя реализация заточена под {{< fl "Raspberry Pi" >}} с [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) и {{< fl "Full-HD" >}}-монитор (**1920×1080** пиксел) в портретной ориентации. Однако оно должно работать на любой поддерживаемой {{< fl "Electron" >}} платформе и будет подстраиваться под доступное разрешение дисплея.

Выглядит это следующим образом:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/wnaauxybvl1limkdx8mi.jpg" "Скриншот InfoPi" >}}

## Как построить

Если вы хотите сделать себе аналогичный экземпляр {{< fl "InfoPi" >}}, следуйте шагам, описанным в [README на GitHub](https://github.com/yktoo/infopi/blob/master/README.md) (*англ.*).
