FROM alpine:latest

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

ADD ./template/simple ./
ADD ./entrypoint.sh ./

RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
