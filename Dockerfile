FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
        libzip-dev

RUN pecl install zip \
    && docker-php-ext-enable zip \
    && docker-php-ext-install pdo_mysql

RUN a2enmod rewrite

WORKDIR /var/www/html

