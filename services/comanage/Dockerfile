FROM comanage-registry:latest

COPY ./phpinfo.php /srv/comanage-registry/app/phpinfo.php
RUN chown -R www-data:www-data /srv/comanage-registry/app/phpinfo.php

COPY ./docker-build/000-comanage.conf /etc/apache2/sites-available/000-comanage.conf
RUN a2ensite 000-comanage.conf

COPY ./docker-build/envvars /etc/apache2/envvars
RUN chown www-data:www-data /etc/apache2/envvars

COPY ./docker-build/basic-auth /etc/apache2/basic-auth
RUN chown www-data:www-data /etc/apache2/basic-auth

EXPOSE 443