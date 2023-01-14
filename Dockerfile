FROM alpine:latest

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

COPY ./template/simple ./

ENTRYPOINT [ "./entrypoint.sh" ]
