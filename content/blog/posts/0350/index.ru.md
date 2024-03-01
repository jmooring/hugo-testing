---
type: post
date: "2019-07-28T00:00:00Z"
title: "Собственный сервер Commento с Docker Compose"
tags:
    - облако
    - Commento
    - Disqus
    - Docker
    - Docker Compose
    - Linux
    - софт
    - разработка
    - инструкция
    - Go
image: commento.png
---

{{< div "alert alert-warning" >}}
**ВНИМАНИЕ:**\
Commento больше не поддерживается, в связи с чем я настоятельно рекомендую [переходить на Comentario](/software/comentario).
{{< /div >}}

---

> {{< fl "TL;DR" >}}-версия: я разработал конфигурацию {{< fl "Commento" >}}-сервера, которая легко и просто развёртывается в полуавтоматическом режиме. Скопируйте себе [этот репозиторий](https://github.com/yktoo/commento-docker-compose) с {{< fl "GitHub" >}} и следуйте инструкциям в [README](https://github.com/yktoo/commento-docker-compose/blob/master/README.md).

Некоторое время назад мне неудержимо захотелось сменить {{< fl "Disqus" >}} — который является, пожалуй, самой распространённой системой для добавления комментариев к страницам — на свободный и открытый [Commento](https://commento.io/).

## Почему именно Commento?

Проблема {{< fl "Disqus" >}}, как и многих других «бесплатных» продуктов, в том, что продуктом в данном случае является пользователь — то есть вы. Помимо этого, {{< fl "Disqus" >}} «обогащает» каждую страницу, где он используется, мегабайтами скриптов и более чем *сотней* дополнительных {{< fl "HTTP" >}}-запросов.

Плюс к этому, бесплатная его версия показывает рекламу, от которой можно откупиться «всего лишь» за 9 долларов в месяц (план {{< fl "Plus" >}}). Уже только этого достаточно, чтобы захотелось найти что-нибудь получше.

В какой-то момент я наткнулся на [этот пост](https://habr.com/ru/post/446786/) и узнал о существовании свободного сервера комментариев под названием [Commento](https://commento.io/). По счастливому совпадению, Commento как раз не так давно стал полностью открытым — раньше он выпускался в двух вариантах, бесплатном {{< fl "Community" >}} и коммерческом {{< fl "Enterprise" >}}. Спасибо его разработчику {{< fl "Adhityaa Chandrasekar" >}}.

Commento на *порядки* эффективнее {{< fl "Disqus" >}}, типичный размер дополнительной загрузки с ним около **11 КБ**, плюс сами комментарии, разумеется. Примерно такая же ситуация и с требуемыми {{< fl "HTTP" >}}-запросами.

Ещё один плюс сервера Commento в том, что он очень быстрый, так как написан на {{< fl "Go" >}}.

Ну и, в качестве вишенки на торте, у него есть импорт комментариев из {{< fl "Disqus" >}}, о чём ещё мечтать?

## Варианты использования Commento

Для *непродвинутых* (в техническом плане) пользователей, у {{< fl "Commento" >}} есть готовый к использованию облачный сервис на [commento.io](https://commento.io/). Размер ежемесячной платы автор предлагает вам выбрать самостоятельно, но она не может быть меньше **$3** «по техническим причинам».

Мистер Чандрасекар также великодушно предлагает бесплатный аккаунт на `commento.io` в обмен на «нетривиальные патчи» к продукту.

Ну, а я выбрал третий вариант: поднять сервер {{< fl "Commento" >}} самостоятельно. В этом случае ты ни от кого не зависишь (помимо хостера, конечно), а я люблю независимость.

## Трудности

Я большой поклонник Docker-контейнеров и также часто использую [Docker Compose](https://docs.docker.com/compose/), инструмент для управления группами нескольких связанных контейнеров. А у {{< fl "Commento" >}} есть готовый к употреблению Docker-образ в GitLab container registry.

Поэтому решение применить контейнеры созрело само собой — но сначала предстояло решить несколько моментов.

### Трудность №1: PostgreSQL

{{< fl "Commento" >}} требует сервера {{< fl "PostgreSQL" >}} довольно свежей версии, никакие другие {{< fl "SQL" >}}-серверы, к сожалению, не поддерживаются.

Ну ладно, мы всё равно всё запускаем в контейнерах, так что тут довольно просто.

### Трудность №2: нет поддержки HTTPS

{{< fl "Commento" >}} сам по себе является веб-сервером, но он поддерживает лишь незащищённый протокол {{< fl "HTTP" >}}.

Тут надо отметить, что такая практика в наши дни довольно распространена: сервер в данном случае прячут за {{< wiki "Обратный прокси" "ru" "обратным прокси" >}}, который также выполняет {{< fl "SSL offloading" >}}. Штука в том, что поддержка {{< fl "SSL/HTTPS" >}} в данном случае совершенно обязательна, в конце концов на дворе 2019 год и на попытки авторизовать пользователя с помощью незащищенного Интернет-протокола будут смотреть очень косо.

Я решил использовать сервер [Nginx](https://www.nginx.com/), во-первых, у меня был немалый опыт работы с ним, а во-вторых, он очень быстр, экономичен и стабилен. И публикует официальные сборки [Docker-образов](https://hub.docker.com/_/nginx).

Вторым ингредиентом в рецепте {{< fl "HTTPS" >}} является {{< fl "SSL" >}}-сертификат для домена. Я бесконечно признателен {{< fl "EFF" >}} и {{< fl "Mozilla" >}} за то, что они создали центр сертификации {{< wiki "Let%E2%80%99s_Encrypt" "ru" "Let's Encrypt" >}}, ежемесячно выдающий миллионы бесплатных сертификатов.

{{< fl "Let's Encrypt" >}} также предоставляет свободную утилиту командной строки под названием [certbot](https://certbot.eff.org/), сильно упрощающую процесс получения и обновления сертификата. Ну и — разумеется — {{< fl "Docker" >}}-образ для него!

### Трудность №3: проблема курицы-яйца Certbot

А вот эта заморочка более хитрая.

Мы хотим сослаться на {{< fl "SSL" >}}-сертификат в конфигурации нашего обратного прокси на {{< fl "Nginx" >}}, что означает, что без сертификата он просто откажется стартовать. В том же самое время, чтобы *получить* {{< fl "SSL" >}}-сертификат для домена, требуется рабочий {{< fl "HTTP" >}}-сервер, который докажет {{< fl "Let's Encrypt" >}} ваше владение этим доменом.

Мне удалось решить и эту проблему, причём, как мне кажется, довольно изящно:

 1. Сначала генерируется фиктивный, невалидный сертификат, единственное предназначение которого состоит в том, чтобы дать {{< fl "Nginx" >}} запуститься.
 2. {{< fl "Nginx" >}} и {{< fl "certbot" >}} совместно получают новый, теперь уже валидный сертификат.
 3. Как только сертификат получен, {{< fl "certbot" >}} переходит в «ждущий режим», просыпаясь раз в 12 часов для проверки необходимости его обновления — согласно рекомендациям {{< fl "Let's Encrypt" >}}.
 4. Когда момент наступил и сертификат обновился, {{< fl "certbot" >}} подаёт сигнал {{< fl "Nginx" >}} перезапуститься.

### Трудность №4: что-то должно сохраняться

Я сильно подозреваю, что вы хотите, чтобы комментарии пользователей сохранялись после перезагрузки или обновления системы.

Также, чтобы {{< fl "Let's Encrypt" >}} вас не забанил из-за слишком частых запросов, неплохо бы хранить полученные сертификаты в течение всего срока их годности.

Оба момента решены в предлагаемой конфигурации с помощью томов ({{< fl "volumes" >}}) {{< fl "Docker" >}}, автоматически создаваемых {{< fl "systemd" >}} при первом запуске {{< fl "Commento" >}}. Тома помечены как «внешние» (`external`), поэтому {{< fl "Docker" >}} пропускает их при удалении контейнеров с помощью `docker-compose down -v`.

## Сводим всё воедино

Теперь можно взглянуть, как это всё вместе работает.

Рисунок ниже показывает взаимодействие и трафик между четырьмя контейнерами:

{{< imgfig "docker-compose-diagram.svg" "Commento: диаграмма отношений контейнеров." >}}

Я применил встроенную опцию {{< fl "Docker Compose" >}} `depends_on`, чтобы обеспечить запуск контейнеров в правильном порядке.

Если вы только хотите запустить собственный сервер {{< fl "Commento" >}}, остаток статьи можно пропустить и сразу перейти к [коду на GitHub](https://github.com/yktoo/commento-docker-compose).

Ну а я дальше расскажу о данной реализации чуть подробнее.

## Как это всё работает

### Файл Compose

Как видно на рисунке выше, моя «композиция» состоит из четырёх сервисов:

1. `certbot` — утилита certbot от {{< fl "EFF" >}}
2. `nginx` — обратный прокси, осуществляющий {{< fl "SSL offloading" >}}
3. `app` — сервер {{< fl "Commento" >}}
4. `postgres` — база данных {{< fl "PostgreSQL" >}}

Файл [`docker-compose.yml`](https://github.com/yktoo/commento-docker-compose/blob/master/docker-compose.yml) содержит декларации собственной {{< fl "Docker" >}}-сети, названной `commento_network`, и трёх томов, из которых два являются внешними (то есть, должны создаваться вне {{< fl "Compose" >}}):

* `commento_postgres_volume` хранит данные сервера {{< fl "PostgreSQL" >}} для {{< fl "Commento" >}}: пользователей, модераторов, комментариев и т.д.
* `certbot_etc_volume` содержит сертификаты, полученные `certbot`-ом.


### Nginx

Контейнер {{< fl "Nginx" >}} построен на базе легковесного официального образа, основанного на {{< fl "Alpine" >}}, и использует следующий скрипт для запуска:

```bash {linenos=table}
#!/bin/sh

trap exit TERM

# Wait for the certificate file to arrive
wait_for_certs() {
    echo 'Waiting for config files from certbot...'
    i=0
    while [[ ! -f /etc/letsencrypt/options-ssl-nginx.conf ]]; do
        sleep 0.5
        [[ $((i++)) -gt 20 ]] && echo 'No files after 10 seconds, aborting' && exit 2
    done
}

# Watches for a "reload flag" (planted by certbot container) file and reloads nginx config once it's there
watch_restart_flag() {
    while :; do
        [[ -f /var/www/certbot/.nginx-reload ]] &&
            rm -f /var/www/certbot/.nginx-reload &&
            echo 'Reloading nginx' &&
            nginx -s reload
        sleep 10
    done
}

# Wait for certbot
wait_for_certs

# Start "reload flag" watcher
watch_restart_flag &

# Run nginx in the foreground
echo 'Starting nginx'
exec nginx -g 'daemon off;'
```

* В строке **3** регистрируется обработчик прерывания, чтобы {{< fl "Nginx" >}} и фоновый процесс мониторинга благополучно завершали работу при остановке контейнера.
* В строке **27** вызывается функция ожидания, приостанавливающая процесс запуска {{< fl "Nginx" >}} до тех пор, пока не появятся конфигурационные файлы {{< fl "SSL" >}}, создаваемые контейнером `certbot`. Без этого {{< fl "Nginx" >}} отказался бы запускаться.
* В строке **30** создаётся фоновый процесс, которые регулярно, каждые десять секунд, проверяет наличие файла-флага с именем `.nginx-reload`, и, как только обнаружит его, подаёт {{< fl "Nginx" >}} команду перезагрузить конфигурацию. Этот файл также создаёт {{< fl "certbot" >}}, в момент когда сертификат обновляется.
* Строка **34** запускает {{< fl "Nginx" >}} в нормальном режиме. При этом `exec` означает, что текущий shell-процесс *замещается* процессом {{< fl "Nginx" >}}.

Ещё один важный файл в данном образе — это конфигурация виртуального сервера {{< fl "Commento" >}}, заставляющая {{< fl "Nginx" >}} пересылать {{< fl "HTTPS" >}}-запросы в контейнер `commento`:

```conf {linenos=table}
server {
    listen [::]:443 ssl ipv6only=on;
    listen 443 ssl;
    server_tokens off;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
    server_name __DOMAIN__;

    location / {
        proxy_pass http://app:8080/;
        proxy_set_header Host            $http_host;
        proxy_set_header X-Real-IP       $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }

    ssl_certificate     /etc/letsencrypt/live/__DOMAIN__/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/__DOMAIN__/privkey.pem;
    include             /etc/letsencrypt/options-ssl-nginx.conf;
    ssl_dhparam         /etc/letsencrypt/ssl-dhparams.pem;
}

server {
    listen 80 default_server;
    listen [::]:80 default_server;
    server_tokens off;

    server_name __DOMAIN__;

    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }

    # Redirect to HTTPS on port 80
    location / {
        return 301 https://$host$request_uri;
    }
}
```

Первый server-блок (строки **1-21**) описывает работу с {{< fl "HTTPS" >}} и правило форвардинга. Именно здесь и упоминаются файлы сертификата {{< fl "Let's Encrypt" >}} (или заглушки, используемые вместо них).

Домен, обслуживаемый сервером, передаётся в качестве аргумента при построении образа; он заменяет строку `__DOMAIN__` в конфиге сервера.

Второй блок (строки **23-38**) — это конфигурация {{< fl "HTTP" >}}-сервера, который используется certbot-ом для подтверждения владения доменом (так называемый {{< fl "ACME challenge" >}}). Все прочие запросы вызывают редирект на соответствующий адрес через {{< fl "HTTPS" >}}.


### certbot

Наш образ {{< fl "certbot" >}} основан на [официальной сборке](https://hub.docker.com/r/certbot/certbot) с добавлением нижеследующего скрипта:

```bash {linenos=table}
#!/bin/sh

trap exit TERM

# Wait until nginx is up and running, up to 10 seconds
wait_for_nginx() {
    echo 'Waiting for nginx...'
    i=0
    while ! nc -z nginx 80 &>/dev/null; do
        sleep 0.5
        [[ $((i++)) -gt 20 ]] && echo "nginx isn't online after 10 seconds, aborting" && exit 4
    done
    echo 'nginx is up and running'
}

# Check vars
[[ -z "$DOMAIN" ]] && echo "Environment variable 'DOMAIN' isn't defined" && exit 2
[[ -z "$EMAIL"  ]] && echo "Environment variable 'EMAIL' isn't defined" && exit 2
TEST="${TEST:-false}"

# Check external mounts
data_dir='/etc/letsencrypt'
www_dir='/var/www/certbot'
[[ ! -d "$data_dir" ]] && echo "Directory $data_dir must be externally mounted"
[[ ! -d "$www_dir"  ]] && echo "Directory $www_dir must be externally mounted"

# If the config/certificates haven't been initialised yet
if [[ ! -e "$data_dir/options-ssl-nginx.conf" ]]; then

    # Copy config over from the initial location
    echo 'Initialising nginx config'
    cp /conf/options-ssl-nginx.conf /conf/ssl-dhparams.pem "$data_dir/"

    # Copy dummy certificates
    mkdir -p "$data_dir/live/$DOMAIN"
    cp /conf/privkey.pem /conf/fullchain.pem "$data_dir/live/$DOMAIN/"

    # Wait for nginx
    wait_for_nginx

    # Remove dummy certificates
    rm -rf "$data_dir/live/$DOMAIN/"

    # Run certbot to validate/renew certificate
    test_arg=
    $TEST && test_arg='--test-cert'
    certbot certonly --webroot -w /var/www/certbot -n -d "$DOMAIN" $test_arg -m "$EMAIL" --rsa-key-size 4096 --agree-tos --force-renewal

    # Reload nginx config
    touch /var/www/certbot/.nginx-reload

# nginx config has been already initialised - just give nginx time to come up
else
    wait_for_nginx
fi

# Run certbot in a loop for renewals
while :; do
    certbot renew
    # Reload nginx config
    touch /var/www/certbot/.nginx-reload
    sleep 12h
done
```

Краткая экскурсия по его строкам:

* Строка **3**, как и в предыдущем скрипте, требуется для штатного завершения работы контейнера.
* В строках **17-19** проверяются требуемые переменные.
* А в строках **22-25** — что необходимые для работы certbot каталоги правильно смонтированы.
* Дальше следует развилка:
    * Строки **30-50** выполняются лишь при первом запуске контейнера:
        * Копируется фиктивный сертификат, позволяющий {{< fl "Nginx" >}} нормально стартовать.
        * {{< fl "Nginx" >}} тем временем ждёт окончания этого процесса, после чего продолжает загрузку.
        * Как только {{< fl "Nginx" >}} запустился, certbot инициирует процесс получения взаправдашнего сертификата у {{< fl "Let's Encrypt" >}}.
        * И, наконец, как только сертификат получен, создаётся файл `.nginx-reload`, намекающий {{< fl "Nginx" >}}, что пора перезагрузить конфиг.
    * Строка **54** ждёт, пока {{< fl "Nginx" >}} запустится — в случае, когда полноценный сертификат уже имеется в наличии.
* После всего этого (строки **58-63**) он продолжает крутить цикл, раз в 12 часов проверяя необходимость продления сертификата и сигналя {{< fl "Nginx" >}} перезапуститься.


### Commento и PostgreSQL

Контейнеры `app` и `postgres` используют исходные образы, предоставляемые разработчиками, без каких-либо изменений.

### Сервис Systemd

Последним кусочком этого пазла является [юнит-файл systemd](https://www.freedesktop.org/software/systemd/man/systemd.service.html) `commento.service`, на который нужно создать симлинк в `/etc/systemd/system/commento.service`, чтобы он запускался в удачный момент при старте системы:

```systemd {linenos=table}
[Unit]
Description=Commento server

[Service]
TimeoutStopSec=30
WorkingDirectory=/opt/commento
ExecStartPre=-/usr/bin/docker volume create commento_postgres_volume
ExecStartPre=-/usr/bin/docker volume create certbot_etc_volume
ExecStartPre=-/usr/local/bin/docker-compose -p commento down -v
ExecStart=/usr/local/bin/docker-compose -p commento up --abort-on-container-exit
ExecStop=/usr/local/bin/docker-compose -p commento down -v

[Install]
WantedBy=multi-user.target
```

Строки:

* В строке **6** подразумевается, что код проекта склонирован в каталог `/opt/commento` — так намного проще.
* В строках **7-8** создаются внешние тома, если их ещё нет.
* В строке **9** удаляются возможные останки прежних контейнеров. Внешние тома при этом сохраняются.
* Строка **10** знаменует собой, собственно, запуск {{< fl "Docker Compose" >}}. Флаг `--abort-on-container-exit` прибивает всю стаю контейнеров при останове любого из них. Благодаря этому {{< fl "systemd" >}}, как минимум, будет в курсе, что сервис остановлен.
* Строка **11** — это вновь очистка и удаление контейнеров, сетей и томов.

## Исходный код

Полностью рабочая реализация, требующая лишь настройки переменных в `docker-compose.yml`, имеется в наличии [на GitHub](https://github.com/yktoo/commento-docker-compose). Вам нужно лишь внимательно пройти по шагам, описанным в [README](https://github.com/yktoo/commento-docker-compose/blob/master/README.md).

Код распространяется на условиях [MIT License](https://opensource.org/licenses/MIT).

Спасибо, что дочитали до этого места, комментарии неистово приветствуются! (Не стесняйтесь использовать для этого форму ниже — она как раз генерируется сервером {{< fl "Commento" >}} из этого поста.)
