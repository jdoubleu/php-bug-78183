ARG DOCKER_PHP_VER=7.2-cli
FROM php:${DOCKER_PHP_VER}


COPY src /usr/src/myapp 

WORKDIR /usr/src/myapp
CMD [ "php", "script.php" ]
