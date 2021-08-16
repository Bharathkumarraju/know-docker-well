FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
ADD index.html /var/www
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80/tcp
