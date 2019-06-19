# finfo_file shows wrong mime-type for .tga file
https://bugs.php.net/bug.php?id=78183

## Usage
Run make:
```sh
make
```

This command will pull the [7.4-rc-cli](https://github.com/docker-library/php/blob/d92a953b086e2864b9bebc06d5e1c388a2c24ec9/7.4-rc/stretch/cli/Dockerfile), [7.3-cli](https://github.com/docker-library/php/blob/a9f19e9df5f7a5b74d72a97439ca5b77b87faa35/7.3/stretch/cli/Dockerfile) and [7.2-cli](https://github.com/docker-library/php/blob/a9f19e9df5f7a5b74d72a97439ca5b77b87faa35/7.2/stretch/cli/Dockerfile) images (see https://hub.docker.com/_/php) and build a new docker image with the testing script.

You can automatically remove the built images (not the pulled PHP images):
```sh
make clean
```

## Example output
```
docker build -t php-bug-78183:7.2 . --build-arg PHP_VER=7.2
Sending build context to Docker daemon  5.632kB
Step 1/5 : ARG PHP_VER=7.2
Step 2/5 : FROM php:${PHP_VER}-cli
 ---> 9eb74fa6fa2b
Step 3/5 : COPY . /usr/src/myapp
 ---> bb195463f733
Step 4/5 : WORKDIR /usr/src/myapp
 ---> Running in 84e511ed152c
Removing intermediate container 84e511ed152c
 ---> abfd17587ce1
Step 5/5 : CMD [ "php", "script.php" ]
 ---> Running in d5e38e1cc6a0
Removing intermediate container d5e38e1cc6a0
 ---> 5acffe7fa140
Successfully built 5acffe7fa140
Successfully tagged php-bug-78183:7.2
==========================================
Running 7.2

docker run --rm -t php-bug-78183:7.2
string(6) "7.2.19"
string(22) "image/x-tgaimage/x-tga"

==========================================
docker build -t php-bug-78183:7.3 . --build-arg PHP_VER=7.3
Sending build context to Docker daemon  5.632kB
Step 1/5 : ARG PHP_VER=7.2
Step 2/5 : FROM php:${PHP_VER}-cli
 ---> f0357c41bff5
Step 3/5 : COPY . /usr/src/myapp
 ---> 1b7d645aacb3
Step 4/5 : WORKDIR /usr/src/myapp
 ---> Running in 700a09b1dfd7
Removing intermediate container 700a09b1dfd7
 ---> 98c652b5d204
Step 5/5 : CMD [ "php", "script.php" ]
 ---> Running in ea2c1c2bf0d2
Removing intermediate container ea2c1c2bf0d2
 ---> 15def95ad797
Successfully built 15def95ad797
Successfully tagged php-bug-78183:7.3
==========================================
Running 7.3

docker run --rm -t php-bug-78183:7.3
string(5) "7.3.6"
string(11) "image/x-tga"

==========================================
docker build -t php-bug-78183:7.4-rc . --build-arg PHP_VER=7.4-rc
Sending build context to Docker daemon  5.632kB
Step 1/5 : ARG PHP_VER=7.2
Step 2/5 : FROM php:${PHP_VER}-cli
7.4-rc-cli: Pulling from library/php
fc7181108d40: Already exists 
0e65236fc68a: Already exists 
40fde9a4a72e: Already exists 
7565c4cbce22: Already exists 
12f3b7e645cb: Pull complete 
6f56e0b04ed9: Pull complete 
9d27c0c348a9: Pull complete 
404a83ab33af: Pull complete 
f47647a9507f: Pull complete 
Digest: sha256:a5def3ad03a92a239654ca66cd696e99aadf16a74a6c8063709797c974d0ec14
Status: Downloaded newer image for php:7.4-rc-cli
 ---> 6a9788917794
Step 3/5 : COPY . /usr/src/myapp
 ---> d044d326f787
Step 4/5 : WORKDIR /usr/src/myapp
 ---> Running in bd771e6da617
Removing intermediate container bd771e6da617
 ---> fa55015ce421
Step 5/5 : CMD [ "php", "script.php" ]
 ---> Running in 73ddbb5a069a
Removing intermediate container 73ddbb5a069a
 ---> 2e449218847e
Successfully built 2e449218847e
Successfully tagged php-bug-78183:7.4-rc
==========================================
Running 7.4-rc

docker run --rm -t php-bug-78183:7.4-rc
string(11) "7.4.0alpha1"
string(11) "image/x-tga"

==========================================
finished
```
