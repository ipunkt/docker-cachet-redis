FROM cachethq/docker:2.3.15

RUN cd /var/www/html && php /bin/composer.phar require predis/predis
