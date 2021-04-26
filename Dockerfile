FROM php:8.0.3-apache

RUN apt-get update && apt-get upgrade -y libpq-dev
RUN docker-php-ext-install mysqli pdo_mysql pgsql pdo_pgsql

WORKDIR /var/www/html

COPY src/ /var/www/html

RUN chown -R www-data:www-data /var/www/html

RUN chmod -R 755 /var/www/html

RUN usermod -u 1000 www-data

USER www-data

EXPOSE 80
EXPOSE 8000