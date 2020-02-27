FROM cachethq/docker:latest

# manual application of https://github.com/CachetHQ/Cachet/pull/3950
# can be removed along with the file as soon as the cachet docker image updates.
# Date: 27.02.2020. Last build of cachethq/docker at this point: 1 month ago
COPY RouteServiceProvider.php /var/www/html/app/Foundation/Providers/RouteServiceProvider.php

RUN cd /var/www/html && php /bin/composer.phar require --no-scripts predis/predis
