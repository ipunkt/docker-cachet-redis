FROM cachethq/docker:latest

RUN cd /var/www/html && APP_LOG=errorlog php /bin/composer.phar require predis/predis
