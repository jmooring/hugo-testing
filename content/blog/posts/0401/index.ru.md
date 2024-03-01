---
type: post
date: "2019-09-29T20:33:35+02:00"
title: "Обзор mesh-роутера Netgear Orbi Pro SRK60"
tags:
    - гаджеты
    - обзор
    - Wi-Fi
    - анбоксинг
    - Интернет
    - роутер
    - железо
    - Netgear
    - Netgear Orbi
image: "https://res.cloudinary.com/yktoo/image/upload/blog/ihz4hlumirsc2592.jpg"
---

## Предыстория

Я около восьми лет пользовался роутером [Linksys E4200](0096#router) и он меня в принципе устраивал — исключительно стабильное устройство. Но любая техника, какая бы она хорошая ни была, постепенно морально устаревает.

Во-первых, после переезда из квартиры в дом, стало очевидно, что три этажа {{< fl "Wi-Fi" >}} нормально не покрывает — в дальних углах дома временами было совсем плохо. Во-вторых, он не поддерживает современные стандарты (например, {{< fl "802.11ac" >}}), из-за чего скорость тоже страдает.

В конце концов я принял решение приобрести {{< fl "mesh" >}}-роутер.

<!--more-->

## Что такое этот ваш mesh?

В обычной конфигурации с несколькими точками доступа устройство-потребитель обычно подключается к той, у которой сигнал сильнее, проходя через все мытарства авторизации, согласования ключа и т.д. Одно переподключение отнимает минимум несколько секунд, в течение которых вы сидите без Интернета.

{{< fl "Mesh" >}}-система также использует несколько беспроводных точек доступа, но создаёт единую бесшовную сеть, при которой клиентское устройство может переключаться между ними практически мгновенно. Устройства видят её как *одну* {{< fl "Wi-Fi" >}}-сеть.

## Выбор mesh-роутера

Одним из главных критериев была возможность самостоятельной настройки системы посредством панели администрирования. Тенденции в современном {{< fl "Wi-Fi" >}}-бизнесе таковы, что практически все производители стремятся [избавить](https://routersecurity.org/MeshRouters.php) глупого и наивного пользователя от всяких заморочек типа {{< fl "IP" >}}- и {{< fl "MAC" >}}-адресов и прочих аббревиатур, удаляя все настройки «в облако» и оставляя пользователю лишь пару переключателей. Плюс они требуют создания аккаунта вендора и установки соответствующего мобильного приложения.

Меня подобная навязчивость категорически не устраивала — мне нравится быть в курсе и контролировать, что именно и как в моей локальной сети настроено, и самому управлять устройством, купленным за мои кровные (и немалые!) деньги.

Что оставило в пролёте подавляющее большинство популярных {{< fl "mesh" >}}-систем, таких как {{< fl "Google Wi-Fi" >}}, {{< fl "Eero" >}}, {{< fl "Luma" >}}, {{< fl "Plume" >}} и прочие.

В свете вышеперечисленного я остановил свой выбор на [Netgear Orbi Pro SRK60](https://www.netgear.com/orbi-pro/SRK60.aspx), как одной из наиболее продвинутых и стабильных (по отзывам) систем с *собственным* веб-интерфейсом для администрирования.


## Netgear Orbi Pro SRK60 и SRK60B03

{{< fl "SRK60" >}} является комбинацией роутера (главного устройства) {{< fl "Orbi SRR60" >}} и одного или двух сателлитов {{< fl "SRS60" >}}.

Согласно описанию {{< fl "Netgear" >}}:

* Комплект **роутер + сателлит** ({{< fl "SRK60" >}}) покрывает площадь до **464 м²**,
* Комплекта **роутер + два сателлита** ({{< fl "SRK60B03" >}}) достаточно для покрытия **700 м²**.

Мне первого варианта хватало за глаза, даже с учётом трёх этажей и сада.

## Спецификации SRK60

Спецификации комплекта с [сайта](https://www.netgear.com/images/datasheet/orbi/SRK60.pdf) {{< fl "Netgear" >}}:

{{< table "table table-striped" >}}
|Характеристика          |Значение                                                      |
|------------------------|--------------------------------------------------------------|
|Суммарная скорость      |3000 Мбит/с (1733 + 866 + 400 Мбит/с)                         |
|Площадь покрытия Wi-Fi  |464 м² (5 000 кв. футов)                                      |
|Канал связи с сателлитом|Выделенный, 4x4 (1,7 Гбит/с)                                  |
|Технология WiFi         |Трёхдиапазонная: 802.11b/g/n 2,4 ГГц + две 802.11a/n/ac 5 ГГц |
|Размеры                 |Два блока по 17,2×8,3×24,6 см                                 |
|Вес                     |Два блока по 930 г                                            |
|Ethernet-порты          |Роутер: 1×WAN, 3×LAN. Сателлит: 4×LAN; 10/100/1000 Мбит/с     |
|Beamforming             |Есть                                                          |
|Приложение              |Есть                                                          |
|Поддержка WPA/PSK2      |Есть                                                          |
|Разделение трафика      |3 независимых Wi-Fi-сети                                      |
{{< /table >}}

На [bol.com](https://bit.ly/2nMIMM6) его сейчас можно купить за **€ 369**.

## Комплект поставки

Поставляется роутер в объёмистой кубической картонной коробке.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/3swthrtu8tji1195.jpg" "Netgear Orbi Pro SRK60 в упаковке." >}}

Всё содержимое коробки: роутер, сателлит, два адаптера, два комплекта для крепления на стене или потолке и почему-то лишь один плоский {{< fl "Ethernet" >}}-кабель:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/l8fkcb7nef300552.jpg" "Комплект поставки Netgear Orbi Pro SRK60." >}}

Братья-близнецы: сателлит серый (слева), роутер синий (справа):

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/5nh56ybegozz2892.jpg" "Сателлит SRS60 и роутер SRR60." >}}

Внешне оба девайса совершенно одинаковые, за исключением цвета верхних вставок и портов на задней стенке.

* У **сателлита** (слева) кнопка {{< fl "Sync" >}}, четыре гигабитных {{< fl "Ethernet" >}}-порта, кнопка питания, разъём блока питания и кнопка сброса.
* У **роутера** (справа) всё то же самое, кроме портов: у него один «внешний» порт ({{< fl "WAN" >}}) и три обычных, для локальной сети.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/gxa51een26172338.jpg" "Органы управления на задней стенке." >}}

Изначально на оба устройства надето по пластиковой ленте и {{< fl "QR" >}}-кодом для активации и дефолтовыми {{< fl "SSID" >}} и паролем от {{< fl "Wi-Fi" >}}-сети.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ut9lbcs9f70h3655.jpg" "QR-коды и данные Wi-Fi." >}}

## Три Wi-Fi-сети + локальная сеть

Одним из преимуществ {{< fl "SRK60" >}} является то, что он создаёт до трёх {{< fl "Wi-Fi" >}}-сетей одновременно:

1. Основная сеть («{{< fl "admin network" >}}»), опционально с авторизацией WPA/PSK2
2. Вторичная сеть («{{< fl "employee network" >}}»), также с авторизацией по выбору
3. Гостевая сеть. Она всегда открытая, но можно установить пароль для логина через веб-страницу (так называемый {{< wiki "captive portal" >}}).

Зайти в административный веб-интерфейс можно лишь из основной {{< fl "Wi-Fi" >}}- либо {{< fl "Ethernet" >}}-сети. Аналогично, устройства в локальной сети (подключенные к {{< fl "Ethernet" >}})-портам видят только устройства, находящиеся в основной {{< fl "Wi-Fi" >}}-сети и наоборот.

Устройства из вторичной и гостевой {{< fl "Wi-Fi" >}}-сетей могут иметь доступ в Интернет, но не могут видеть ни друг друга, ни локальной сети.

## Веб-админка

У веб-интерфейса роутера есть два основных раздела: {{< fl "Basic" >}} (простой) и {{< fl "Advanced" >}} — в нём настроек намного больше.

### Basic

Этот раздел предназначен для «непродвинутых пользователей»: тут можно настроить базовые параметры системы: {{< fl "IP" >}}-адреса, пароли на {{< fl "Wi-Fi" >}} и т.п.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xxugzu7ypb1f2684.png" "Basic ⇒ Home." >}}

{{< spoiler "Посмотреть скриншоты интерфейса Basic" >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xlqh6skvc51e3160.png" "Basic ⇒ Internet setup." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/i3ho683l3qoc2527.png" "Basic ⇒ Wireless 1." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/8zycw9d2naqq1209.png" "Basic ⇒ Wireless 2." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/scg8df2zs0co1426.png" "Basic ⇒ Attached devices." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/9fxecxa8xwzl1265.png" "Basic ⇒ Guest portal settings." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/2qd4yyo4xfta1841.png" "Basic ⇒ Speed test." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/s02ojk6yq40y1742.png" "Basic ⇒ Add satellite." >}}
{{< /spoiler >}}

### Advanced

В этом разделе собрано намного больше настроек, так что остановлюсь на нём поподробнее.

Начальная страница ­— обзор основных параметров роутера:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/cncs7lmsqeus1923.png" "Advanced ⇒ Home." >}}

С помощью интерактивного {{< fl "Setup wizard" >}} можно настроить роутер, отвечая на вопросы.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nl08b5xhibs42834.png" "Advanced ⇒ Setup wizard." >}}

#### Раздел Setup

Настройка Интернета, {{< fl "WAN" >}}, {{< fl "Wi-Fi" >}} и локальной сети.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tpe1stncz6h70496.png" "Advanced ⇒ Setup ⇒ Internet setup." >}}

Набор настроек {{< fl "Wi-Fi" >}} аналогичен соответствующему из {{< fl "Basic" >}}. Здесь можно включить/выключить обе {{< fl "Wi-Fi" >}}-сети (гостевая сеть настраивается на отдельной странице), задать параметры авторизации и используемые каналы.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/72rgrixxeqsf0611.png" "Advanced ⇒ Setup ⇒ Wireless 1." >}}

Настройки гостевого портала. Его также можно выключить, настроить пароль для {{< fl "captive portal" >}} и длительность одного сеанса, также можно выбрать картинку и текст, показываемые при аутентификации на {{< fl "captive portal" >}}:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nz0s0n4eww1b2347.png" "Advanced ⇒ Setup ⇒ Guest portal settings." >}}

Настройки {{< fl "WAN" >}}. Помимо прочего, здесь можно активировать {{< fl "NAT" >}}.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/znwevk4ym9ao3632.png" "Advanced ⇒ Setup ⇒ WAN setup." >}}

Настройки локальной {{< fl "Ethernet" >}}-сети. Здесь настраивается {{< fl "DHCP" >}}-сервер, можно зарезервировать {{< fl "IP" >}}-адрес за конкретным устройством.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/qmzukj7ppni11875.png" "Advanced ⇒ Setup ⇒ LAN setup." >}}

Задание сетевого имени роутера:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fwggnyxnl9wr2374.png" "Advanced ⇒ Setup ⇒ Device name." >}}

#### Раздел Security

В разделе {{< fl "Security" >}} много всего интересного. Здесь можно включать/выключать доступ в Интернет отдельным устройствам, а можно почувствовать себя Роскомнадзором и заблокировать ~~Телеграм~~ нежелательные сайты.

Страница контроля доступа. Здесь можно для каждого устройства (на основе его {{< fl "MAC" >}}-адреса) задать, получит ли оно доступ в Интернет. Также можно выбрать режим по умолчанию для новых устройств — разрешить или блокировать, и связать понятное имя с конкретным девайсом.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/vmtsutdqrkdj2260.png" "Advanced ⇒ Security ⇒ Access control." >}}

Тут хочу отметить, что у меня с блокированием по умолчанию как-то не сложилось. В моей конфигурации давно уже одобренные устройства почему-то регулярно перепрыгивали в {{< fl "Blocked" >}}, причём без какой-либо системы. Я уверен на 99%, что это глюк в софте роутера — явно где-то в управлении списками там что-то идёт наперекосяк. Я открыл тикет у техподдержки {{< fl "Netgear" >}}, но они пожаловались, что не могут воспроизвести проблему (при этом у меня она самопроизвольно «воспроизводилась» по пять раз в день) и попросили прислать им полностью конфигурацию устройства — со всеми паролями, ключами {{< fl "VPN" >}} и прочим.

Я ответил: «Нет, спасибо» и перевёл роутер в режим «разрешено по умолчанию». В принципе, это небольшая проблема, все {{< fl "Wi-Fi" >}}-сети всё равно запаролены, а за появлением новых устройств в сети надёжно следит {{< fl "Fingbox" >}}.

Настройки блокировщика сайтов:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/nwh84nkdbkvv2509.png" "Advanced ⇒ Security ⇒ Block sites." >}}

Помимо доменов, можно также блокировать {{< fl "TCP/UDP" >}}-трафик к конкретным адресам и портам:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/w47dcooyrgh51825.png" "Advanced ⇒ Security ⇒ Block services." >}}

Планировщик блокировки:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/w30628dkpeg30122.png" "Advanced ⇒ Security ⇒ Schedule." >}}

Настройки уведомлений по {{< fl "email" >}}:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/3di02xyozmsg3065.png" "Advanced ⇒ Security ⇒ E-mail." >}}

#### Раздел Administration

Настройки администрирования. Обзор:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/w92bnhe5sht42782.png" "Advanced ⇒ Administration ⇒ Router status." >}}

Протокол доступа к админке и различным службам роутера:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/bb3t7voragcg0024.png" "Advanced ⇒ Administration ⇒ Logs." >}}

Очень полезная страница со всеми подключенными к роутеру устройствами. Среди прочего, здесь можно увидеть статус сателлита, а также к какой именно сети какое устройство подключилось:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ghe1g3jvjw502876.png" "Advanced ⇒ Administration ⇒ Attached devices." >}}

Резервное копирование и восстановление многочисленных настроек системы:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/84j3vae10yk30483.png" "Advanced ⇒ Administration ⇒ Backup settings." >}}

Пароль на вход в админку:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/ddsr5oq6hf020270.png" "Advanced ⇒ Administration ⇒ Set password." >}}

Настройки синхронизации времени по {{< fl "NTP" >}}:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/0cfn223tevmc2084.png" "Advanced ⇒ Administration ⇒ NTP settings." >}}

Обновление прошивки роутера и сателлита. Прошивка скачивается автоматически, как только заходишь на страницу. Запускается обновление либо автоматически, либо вручную:

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/zwte7sbfngk70557.png" "Advanced ⇒ Administration ⇒ Online update." >}}

#### Раздел Advanced setup

В {{< fl "Advanced setup" >}} собраны самые хардкорные настройки: режим работы (роутер/точка доступа), {{< fl "VPN" >}}, {{< fl "UPnP" >}} и т.д.

{{< spoiler "Посмотреть скриншоты интерфейса Advanced setup" >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/rd2efjxgi53p0350.png" "Advanced ⇒ Advanced setup ⇒ Advanced wireless settings." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/1j0dh2mvwefc0514.png" "Advanced ⇒ Advanced setup ⇒ Router/AP mode." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/363j8h041h920123.png" "Advanced ⇒ Advanced setup ⇒ Port forwarding/triggering." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/sexerr60fief1305.png" "Advanced ⇒ Advanced setup ⇒ Dynamic DNS." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/3j86wzqynd3k2963.png" "Advanced ⇒ Advanced setup ⇒ VPN service." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/o8yokn5yjpza3036.png" "Advanced ⇒ Advanced setup ⇒ Static routes." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/88d89p5zbju53329.png" "Advanced ⇒ Advanced setup ⇒ Remote management." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/6elwyg8p9q3s3518.png" "Advanced ⇒ Advanced setup ⇒ UPnp." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hwnwgpqvlu9l1963.png" "Advanced ⇒ Advanced setup ⇒ IPv6." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/gipj1liyygud3464.png" "Advanced ⇒ Advanced setup ⇒ Traffic meter." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/xti0gwailpzg1451.png" "Advanced ⇒ Advanced setup ⇒ VLAN/Bridge settings." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/rc988cmjyahx1460.png" "Advanced ⇒ Advanced setup ⇒ Sync button." >}}
{{< /spoiler >}}

### Режим отладки

В роутере есть скрытая страница отладочных настроек — её можно увидеть, перейдя по адресу `http://<адрес роутера>/debug.htm`.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/46gka0p48s4m0976.png" "Интерфейс для отладки." >}}

## Скорость Wi-Fi

Перейдём к практике. Одной из главных причин для замены роутера было улучшение работы беспроводной сети.

**Кстати:** нужно упомянуть, что у меня сателлит связан с роутером *кабелем*, а не радиоканалом ({{< fl "backhaul" >}}).

В плане скорости претензий к {{< fl "Netgear Orbi" >}} совершенно никаких. Я замеря́л скорость мобильным телефоном с помощью [fast.com](https://fast.com/) и приложения [speedtest.net](https://www.speedtest.net/). Также, помимо {{< fl "Wi-Fi" >}}, из любопытства замерил скорость мобильной сети ({{< fl "LTE/4G+" >}}).

Результаты следующие (скорость в **Мбит/с**):

{{< table "table table-striped" >}}
|Расположение устройства            |Скорость по fast.com|Скорость по speedtest.net|
|-----------------------------------|--------------------|-------------------------|
|Wi-Fi у роутера                    | ⇓ 590 — ⇑ 400      | ⇓ 306 — ⇑ 394           |
|Wi-Fi у сателлита                  | ⇓ 570 — ⇑ 420      | ⇓ 263 — ⇑ 457           |
|Wi-Fi вдали от роутера и сателлита | ⇓ 280 — ⇑ 280      | ⇓ 279 — ⇑ 200           |
|LTE/4G+                            | ⇓ 190 — ⇑ 11       | ⇓ 157 — ⇑ 10            |
{{< /table >}}

{{< spoiler "Скриншоты измерения скорости" >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jkeq1q548iq41196.png" "Скорость Wi-Fi у роутера — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/hrukihmjef6y3087.png" "Скорость Wi-Fi у сателлита — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/907coz8rsvv90863.png" "Скорость Wi-Fi вдали от роутера и сателлита — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/tuxw7dhmdsmx2442.png" "Скорость LTE — fast.com." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/njxz7em0h31f0317.png" "Скорость Wi-Fi у роутера — speedtest.net." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/49tn7l79fncj1135.png" "Скорость Wi-Fi у сателлита — speedtest.net." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/i2nl4vvpcz8p2723.png" "Скорость Wi-Fi вдали от роутера и сателлита — speedtest.net." >}}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/jes6kfky29mx2331.png" "Скорость LTE — speedtest.net." >}}
{{< /spoiler >}}

Нельзя не отметить существенную разницу в показаниях двух сервисов. Лично у меня ощущение, что {{< fl "fast.com" >}} ближе к истине, поскольку он выдаёт более стабильные результаты.

Рядом с одним из двух устройств скорость получения около **500 Мбит/с**, отправки **400 Мбит/с** — что очень близко к пропускной способности [моего Интернет-канала](0337).

На равном удалении от обеих точек скорость составляет примерно **280 Мбит/с**. По-моему, весьма неплохо.

## Выводы

По результатам девяти месяцев ежедневного использования могу заключить, что {{< fl "Netgear Orbi Pro SRK60" >}} работает очень стабильно и надёжно.

Есть лишь пара негативных моментов:

* В самом начале у меня несколько раз наблюдалось зависание роутера при переключении настроек с помощью веб-интерфейса, после чего его приходилось перегружать отключением питания. Впрочем, последние месяцы никаких проблем я с этим не испытывал.
* Вышеупомянутая заморочка с активным контролем доступа в режиме «блокировка по умолчанию», с которой техподдержка помочь мне не смогла (точне, захотела слишком многого).

Очень удобно наличие трёх изолированных друг от друга {{< fl "Wi-Fi" >}}-сетей:

* В основной сети у меня находятся все домашние устройства: телефоны, компьютеры, [смарт-ТВ](0243) и т.д.
* Вторичная сеть используется для всяких {{< fl "IoT" >}}-устройств — например, детекторов дыма [Nest Protect](0265) и инвертора [Growatt](0387). Нечего им в моей домашней сети делать.
* Гостевая сеть — само собой, для гостей.

С гостевой сетью, правда, можно было бы сделать чуть лучше. На неё нельзя поставить {{< fl "WPA" >}}-защиту, она всегда открыта, а пароль, что устанавливается в админке, вводится уже после подключения в {{< fl "captive portal" >}}. Из-за этого у меня в сети постоянно появлялись «левые» устройства — телефоны прохожих, настроенные цепляться за певую попавшуюся открытую сеть. Мне пришлось сделать сеть скрытой, так что подключиться к ней можно, лишь зная её {{< fl "SSID" >}}.

**P.S.** вдогонку: в версии прошивки **2.4.0.114** появилась новая возможность: опциональной установка полосы пропускания для каждой из сетей. Например, можно дать основной сети 80%, а двум остальным по 10%.

### Плюсы

* Отсутствие привязки к облаку или мобильному приложению
* Настройка всех аспектов с помощью веб-интерфейса
* Стабильная работа обоих компонентов
* Очень хорошее покрытие {{< fl "Wi-Fi" >}} и безупречная работа {{< fl "mesh" >}}-механизма
* Большое количество опций и настроек
* Три изолированных {{< fl "Wi-Fi" >}}-сети
* Гигабитные {{< fl "Ethernet" >}}-порты (3 шт. на роутере, 4 шт. на сателлите)
* Возможность сохранить и восстановить настройки роутера из файла
* Встроенный {{< fl "OpenVPN" >}}-сервер с очень простой настройкой
* Поддержка {{< fl "Dynamic DNS" >}} ({{< fl "no-ip.com" >}})
* Один бесплатный хост на {{< fl "no-ip.com" >}} для динамического {{< fl "DNS" >}}
* Настройка полосы пропускания каждой из сетей (с версии прошивки 2.4.0.114)


### Минусы

* Довольно высокая цена
* Глюк с контролем доступа в режиме «блокировка по умолчанию»
* Гостевая сеть всегда открыта
* Долгое время загрузки (~3 мин)
* Отсутствие {{< fl "USB" >}}-портов для подключения внешних накопителей для работы в качестве {{< fl "NAS" >}}

## Где купить

Рекомендуемая цена комплекта составляет **€ 426** (я его в своё время за столько и приобрёл), но сейчас его [можно купить за € 369](https://bit.ly/2nMIMM6) на {{< fl "bol.com" >}}.

> **Обновлено:** в [прошивке 2.5.0.108 добавилась ещё одна](0543), четвёртая {{< fl "Wi-Fi" >}}-сеть.
