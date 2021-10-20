FROM centos:latest
MAINTAINER prasadvishu727@gmail.com
RUM yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/univers.zip /var/www/html/
WORKDIR /var/ww/html
RUN unzip univers.zip
RUN cp -rfv univers/*
RUN rm -rf univers
RUN rm -rf univers.zip 
CMD [*/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
