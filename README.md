# docker-xkcdpass-web

`docker run -d -p 8080:8080 toughiq/xkcdpass-web`

http://localhost:8080

# Basics

This repo is based on https://github.com/toughIQ/docker-xkcdpass and adds the features of Python HTTP Server.

# Defaults

This container image uses this defaults issued via the ENV docker parameter:
```
ENV COUNT=5 \
    DELIMITER=- \
    MIN=5 \
    MAX=8 \
    VALID_CHARS=[a-x] \
    NUMWORDS=5
```
* COUNT: number of passwords generated
* DELIMITER: words separated by -
* MIN/MAX: min/max number of letters by word
* VALID_CHARS: characters used in words. Y and Z are missing, since they often cause troubles with non english keyboard layouts.
* NUMWORDS: number of words for each password generated

To change these values at startup just use the `-e` or `--env` parameter with `docker run`.
