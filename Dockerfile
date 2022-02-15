# demo for OCP

FROM docker.io/toughiq/xkcdpass:latest

RUN mkdir -p /webserver/cgi-bin

ADD index.html /webserver/
ADD xkcdpass /webserver/cgi-bin/

WORKDIR /webserver

EXPOSE 8000
ENTRYPOINT python3 -m http.server --cgi 8000 

ENV COUNT=5 \
    DELIMITER=- \
    MIN=5 \
    MAX=8 \
    VALID_CHARS=[a-x] \
    NUMWORDS=5

