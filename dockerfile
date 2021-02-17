FROM php:7.4-apache

RUN apt-get update
RUN apt-get install nano
RUN docker-php-ext-install mysqli


RUN chown -R www-data:www-data /var/www
RUN chmod -R ug=rwx /var/www
RUN chmod -R o=r /var/www

COPY index.php /var/www/html

ADD trucorp-db.sql /docker-entrypoint-initdb.d/

EXPOSE 80
