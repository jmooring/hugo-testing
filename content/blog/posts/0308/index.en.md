---
type: post
date: "2017-02-18T00:00:00Z"
title: "Tutorial: development with Yii/PHP/MySQL using Docker"
tags:
    - containers
    - development
    - Docker
    - MySQL
    - PHP
    - web
    - website
    - Yii2
    - databases
image: "https://res.cloudinary.com/yktoo/image/upload/blog/b8chd0gh72xj3154.png"
---

It's been about a year since I've switched to developing this website (built with [Yii 2](http://www.yiiframework.com/)/[PHP](http://php.net/)/[MySQL](https://www.mysql.com/)) using [Docker](https://www.docker.com/). After just one try I realised that *Docker* is the best thing happened to development. Well, after *Vim*, of course.

So I've decided to write a brief tutorial on setting up a *dockerised* development environment, in the hope it could be helpful for those who never tried Docker or experience difficulties getting started.

<!--more-->

## Preface {#preface}

Let's first talk the basics. If your application is small and simple, and changes only happen occasionally, you might venture to modify it on-the-fly on the *production* server. This approach will, however, be disastrous if your application is complex and/or needs numerous changes. A better idea would be to thoroughly test every function before deploying the new version, otherwise you can end up with a broken application and forced downtime.

Many web applications employ a database for data persistence. In the past years {{< wiki "LAMP_(software_bundle)" "en" "LAMP" >}} ({{< fl "Linux" >}}, {{< fl "Apache" >}}, {{< fl "MySQL" >}}, {{< fl "PHP" >}}) has become one of the most frequently used software stacks. This website is also built on this bundle of technologies.

In the ideal world every development environment matches the production one, at least in terms of software versions and features (like compilation options etc.) All this can of course be installed on a developer's PC or a development server, but you might run into difficulties with availability of specific software versions, component upgrades and so on. For example, Ubuntu has recently dropped *PHP 5.x* from its repositories, which means you need to compile it yourself.

## Docker containers {#docker}

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/b8chd0gh72xj3154.png" >}}

Using a virtual machine is a possible solution to this problem, but there are issues, too: setting it up can be laborious, it's demanding in terms of RAM and CPU performance, but—most of all—it's hardly reproducible on another machine. That is, of course, unless you copy over the entire virtual disk, which is time consuming, expensive and eventually impractical.

[Docker containers](https://www.docker.com/) offer a great alternative to all that ado. Docker allows running components, such as {{< fl "PHP" >}}, {{< fl "Apache HTTP Server" >}} and {{< fl "MySQL" >}}, inside standard, lightweight containers, with configurations that are 100% reproducible, and linking those containers using virtual networks. You don't need to install numerous packages anymore, the only thing needed is the Docker engine itself. And, last but not least, Docker is free and open-source.

Each container is described in a so-called `Dockerfile`, a plain text file containing special [commands](https://docs.docker.com/engine/reference/builder/). A container is always based on an **image**; [Docker repository](https://hub.docker.com/) provides a huge number of ready-to-use images for all kinds of software. Therefore every `Dockerfile` begins with a `FROM` command specifying the image the container will be built upon.

## Apache HTTP Server container config {#container-apache-http}

So let's hit the road. As I mentioned above this website is built upon the *LAMP* stack and the [Yii](http://www.yiiframework.com/) PHP framework. In order to run it I use the following two separate containers:

1. `yktoo-app`, which runs {{< fl "Apache HTTP Server" >}} + {{< fl "PHP" >}}.
2. `yktoo-db`, which runs {{< fl "MySQL" >}}.

The first container is defined using the following file (let's call it `Dockerfile-app` to distinguish it from the other container):

```dockerfile
# Dockerfile-app

# Use PHP 5.6 with Apache for the base image
FROM php:5.6-apache

# Enable the Rewrite Apache mod
RUN cd /etc/apache2/mods-enabled && \
    ln -s ../mods-available/rewrite.load

# Install required PHP extensions
# -- GD
RUN apt-get update && \
    apt-get install -y libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd
# -- mysql
RUN docker-php-ext-install -j$(nproc) mysql pdo_mysql

# Copy HTTP server config
COPY 000-default.conf /etc/apache2/sites-available/
```

The `COPY` command above copies the virtual host configuration file (`000-default.conf`) into the container; this file looks as follows:

```apacheconfig
# 000-default.conf

<VirtualHost *:80>
    ServerName localhost
    ServerAdmin wizard@localhost

    DocumentRoot /var/www/html/web
    LogLevel info php5:debug

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined

    <Directory "/var/www/html/web">
        # Disable .htaccess
        AllowOverride None
    </Directory>

    # Set up rewrites so that all requests go to index.php
    RewriteEngine on
    # if a directory or a file exists, use it directly
    RewriteCond /var/www/html/web%{REQUEST_FILENAME} !-f
    RewriteCond /var/www/html/web%{REQUEST_FILENAME} !-d
    # otherwise forward it to index.php
    RewriteRule . /var/www/html/web/index.php
</VirtualHost>
```

The usage of `AllowOverride None` is important here, as it prohibits Apache from using the standard `.htaccess` from the source tree. In that file I have, for instance, a redirect to HTTPS (and a whole bunch of other redirects), which is not needed for development.

## MySQL container config {#container-mysql}

The container #2 runs another vital component, the *MySQL* database server. Its configuration file (let's call it `Dockerfile-db`) has the following content:

```dockerfile
# Dockerfile-db

# Use MySQL 5.7 for the base image
FROM mysql:5.7.16

# Copy database initialisation scripts
COPY init.sql /docker-entrypoint-initdb.d/
COPY database.sql /db/

```

In this file the `COPY` commands bring two SQL scripts into the container. The first one, `init.sql`, performs an initial database bootstrapping:

```sql
# init.sql

create database yktoo;
use yktoo;
source /db/database.sql;

create user appuser identified by "appuserPasswd";
grant all privileges on yktoo.* to appuser@'%';

```

It also calls the second script, `database.sql`, which is merely a dump of the production database, with all tables and their contents. In this way I get an exact copy of my web application running at [https://yktoo.com/](https://yktoo.com/).

## Starting containers {#starting-containers}

Containers should be started in such a way that the database becomes accessible by the HTTP server. The first thing to fix is the database configuration in {{< fl "Yii" >}} (`config/db.php`):

```php
<?php // config/db.php

return [
    'class'      =>'yii\db\Connection',
    'dsn'        =>'mysql:host=yktoo-db;dbname=yktoo',
    'username'   =>'appuser',
    'password'   =>'appuserPasswd',
    'charset'    =>'utf8',
    'tablePrefix'=>'t_',
];
?>
```

As you can see, it uses the same DB name (`yktoo`), user name (`appuser`) and user password (`appuserPasswd`) as in the previously listed `init.sql`. What's also important is that the hostname `yktoo-db` matches the name of the MySQL container, which allows to access it from the Apache HTTP Server's container, once they're linked (see below).

Before you can run the containers, their images have to be built using the previously created `Dockerfile-app` and `Dockerfile-db`:

```bash
# build.sh

# Path to you project root
PROJ_ROOT=/path/to/your/yii/app

# Build the app container image
docker build -t yktoo-app-image -f "Dockerfile-app" "$PROJ_ROOT"

# Build the DB container image
docker build -t yktoo-db-image -f "Dockerfile-db" "$PROJ_ROOT"

```

This will result in two Docker images: `yktoo-app-image` and `yktoo-db-image`. Now you can start the containers:

```bash
# run.sh

# Path to you project root
PROJ_ROOT=/path/to/your/yii/app

# First start the DB container
docker run -d -e MYSQL_ROOT_PASSWORD=root --name yktoo-db yktoo-db-image

# Then the app container, and link it to the DB one
docker run -d \
    -p 80:80 \
    -v "$PROJ_ROOT":/var/www/html \
    --name yktoo-app \
    --link yktoo-db \
    yktoo-app-image

```
The option `-p 80:80` links the port **80** inside the container to the port **80** on the host, which makes the app available at `http://localhost/`.

It's crucial that our DB container is called `yktoo-db` because that's the same name mentioned in `config/db.php` above; furthermore, it's used to link the HTTP server container to the DB (the `--link` option).

Another important aspect is the usage of the `-v` option, which mounts your project's source tree right into the `/var/www/html` directory of the Apache server. It allows you to immediately see modifications made to the app code without restarting the container, which is super convenient.

## Stopping containers {#stopping-containers}

I use the following script to stop running containers:

```bash
# stop.sh

set -e

echo "Stopping containers..."
docker stop yktoo-db yktoo-app

echo "Removing containers..."
docker rm yktoo-db yktoo-app

echo "Done."
```

It stops and removes both containers right away, so that the next time you run `run.sh` you get a fresh, 100% identical copy of the entire environment—including the database.

Because of that, if you development requires modifying the database, those modifications are to be saved in a separate file (for example, `upgrade.sql`), then you make it appear inside the DB container (by adding `COPY upgrade.sql /db/` to `Dockerfile-db`) and invoke in `init.sql` (by adding `source /db/upgrade.sql;` *after* the line `source /db/database.sql;`).

## Bonus: docker-compose {#docker-compose}

It's quite easy to manage containers with the above scripts, but why not take it one step further? Docker offers a special tool called [docker-compose](https://docs.docker.com/compose/) for managing multicontainer configurations. It allows for describing all the related services in a single file, commonly named `docker-compose.yml`, and controlling them using even simpler commands.

In Linux, `docker-compose` is not installed as a part of Docker Engine, so one has to [install](https://docs.docker.com/compose/install/) it separately.

Your `docker-compose.yml` might look like the following:
```yaml
version: "3"
services:
    app:
        build:
            context: .
            dockerfile: ./Dockerfile-app
        container_name: yktoo-app
        ports:
            - "80:80"
        volumes:
            - .:/var/www/html
    db:
        build:
            context: .
            dockerfile: ./Dockerfile-db
        container_name: yktoo-db
        environment:
            MYSQL_ROOT_PASSWORD: "root"
```

The paths for `context` and `volumes` have to point to the (relative) path to your source tree root. Once you have this file, the containers can simply be started with:

```bash
docker-compose up
```

That will also allow you to see the output of both containers in your console. In order to stop them use <kbd>Ctrl</kbd>+<kbd>C</kbd>, or, alternatively, the command `docker-compose stop` from another console; and to delete them `docker-compose rm`. As you can see, it's pretty straightforward and logical.

That's about it. I hope this tutorial will be of help.
