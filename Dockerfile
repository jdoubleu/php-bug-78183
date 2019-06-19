ARG PHP_VER=7.2
FROM php:${PHP_VER}-cli


COPY . /usr/src/myapp

WORKDIR /usr/src/myapp
CMD [ "php", "script.php" ]
