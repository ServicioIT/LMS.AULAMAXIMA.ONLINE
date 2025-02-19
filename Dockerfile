FROM php:8.0-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

COPY . /var/www

WORKDIR /var/www

RUN chown -R www-data:www-data /var/www

RUN rm -rf /var/lib/apt/lists/*