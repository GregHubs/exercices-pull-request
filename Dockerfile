FROM php:8.0-apache

COPY . /app

RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev libzip-dev sendmail



COPY conf/vhost.conf /etc/apache2/sites-available/000-default.conf
COPY conf/apache.conf /etc/apache2/conf-available/z-app.conf
RUN a2enconf z-app

