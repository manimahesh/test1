# FROM httpd:2.4
# COPY ./public-html/ /usr/local/apache2/htdocs/

# docker run -dit --name maniweb -p 8080:80 httpd
# docker cp index.html maniweb:/usr/local/apache2/htdocs/index.html

FROM php:7.2-apache
COPY src/ /var/www/html/

# docker run -d -p 80:80 --name my-apache-php-app -v "$PWD":/var/www/html php:7.2-apache