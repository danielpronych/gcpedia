FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    apache2 \
    libapache2-mod-php7.0 \
    php7.0 \
    php7.0-gd \
    php7.0-intl \
    php7.0-mbstring \
    php7.0-mysql \
    php7.0-xml

WORKDIR /var/www/html

CMD apache2ctl -D FOREGROUND

# docker build -t gcpedia-apache-php .
# docker run --name gcpedia-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=my_wiki -e MYSQL_USER=wiki -e MYSQL_PASSWORD=password -d mysql
# docker run --name gcpedia -p 8080:80 -v `pwd`:/var/www/html --link gcpedia-mysql:mysql -d gcpedia-apache-php
