FROM ubuntu:16.04

RUN apt-get update \
    &&  apt-get install -y apache2

COPY index.html /var/www/html/
WORKDIR /var/www/html
CMD ["apachetl", "-D", "FOREGROUND"]
EXPOSE 80
