FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    apache2

RUN mkdir /simplesamlphp

WORKDIR /simplesamlphp
RUN curl -L https://github.com/simplesamlphp/simplesamlphp/releases/download/v2.3.6/simplesamlphp-2.3.6-full.tar.gz | tar -xz

COPY ./config/* /simplesamlphp/simplesamlphp-2.3.6-full/config/

COPY ./apache2/apache2.conf /etc/apache2/apache2.conf
COPY ./apache2/sites-available/* /etc/apache2/sites-available/

RUN service apache2 stop

CMD ["apachectl", "-D", "FOREGROUND"]