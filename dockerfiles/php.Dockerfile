FROM php:7.2-fpm

RUN apt-get update
RUN apt-get install -y git zip

RUN curl https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN chown -R $USER:www-data /var/www/html
