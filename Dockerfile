FROM php:7.4-apache

WORKDIR /var/www/html

RUN apt-get update -y && apt-get install curl -y && apt-get install git -y && apt install zip  -y

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

COPY composer.json ./

RUN composer install --no-dev --no-interaction -o

# RUN vendor/bin/phpcs --config-set installed_paths ../wpcs