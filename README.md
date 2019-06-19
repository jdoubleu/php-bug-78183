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
