FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libldap2-dev \
    libxslt1-dev \
    libicu-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-configure ldap \
    && docker-php-ext-install -j$(nproc) \
    gd \
    ldap \
    xsl \
    intl \
    pcntl

WORKDIR /comanage
RUN curl -L https://github.com/Internet2/comanage-registry/archive/4.4.1.tar.gz | tar -xz --strip-components=1

COPY ./phpinfo.php /comanage/phpinfo.php
