# Start from php 7.4 with apache
FROM php:7.4-apache
# install mysqli extention
RUN docker-php-ext-install mysqli
# done
