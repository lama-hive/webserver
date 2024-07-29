FROM php:8.3-fpm

ARG UID=UID_FROM_SYSTEM

RUN apt-get update && apt-get install libzip-dev -y

RUN docker-php-ext-install pdo pdo_mysql

RUN mkdir /home/username && useradd -u $UID -d /home/username username && chown username:username /home/username

WORKDIR /app
