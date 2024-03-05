FROM php:8.2-apache

RUN apt-get update && apt-get install -y libonig-dev libjpeg-dev libxslt1-dev libxml2-dev libicu-dev libpng-dev unzip libwebp-dev
RUN curl -sSL https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - | sh -s bcmath gd intl pdo_mysql soap sockets xsl zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html
