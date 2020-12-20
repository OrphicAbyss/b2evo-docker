# Start from php 7.4 with apache
FROM php:7.4-apache

# setup opcache env
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS="1" \
    PHP_OPCACHE_MAX_ACCELERATED_FILES="10000" \
    PHP_OPCACHE_MEMORY_CONSUMPTION="192" \
    PHP_OPCACHE_MAX_WASTED_PERCENTAGE="10"

# install mysqli extention
RUN docker-php-ext-install mysqli
# install opcache
RUN docker-php-ext-install opcache
# install graphics extentions
RUN docker-php-ext-install gd
# add opcache ini file
COPY opcache.ini /usr/local/etc/php/conf.d/opcache.ini

# done
