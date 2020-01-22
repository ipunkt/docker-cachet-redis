FROM cachethq/docker:latest

RUN cd /var/www/html && php /bin/composer.phar require --no-scripts predis/predis
