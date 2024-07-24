FROM wyveo/nginx-php-fpm:php82

ENV COMPOSER_ALLOW_SUPERUSER=1
COPY . /app

#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B188E2B695BD4743
RUN apt-get update && apt-get install nano curl -y

WORKDIR /app
RUN composer install

RUN chmod -R 777 storage
RUN chmod -R 777 bootstrap/cache
