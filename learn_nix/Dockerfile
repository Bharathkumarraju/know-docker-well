FROM debian:buster

RUN apt-get update

RUN apt-get install -y apache2

ADD index.html /var/www/html

EXPOSE 80/tcp

CMD ["apachectl", "-D", "FOREGROUND"]

