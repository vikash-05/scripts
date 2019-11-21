FROM php:7.2-apache
RUN apt-get update -y && apt-get install -y openssl zip unzip git

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo mbstring

COPY default.conf /etc/apache2/sites-enabled/000-default.conf
WORKDIR /var/www/html/app
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
