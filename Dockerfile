FROM ubuntu
MAINTAINER prasadvishu727@gmail.com
RUN apt update -y
RUN apt install apache2 -y
RUN apt install unzip -y
RUN systemctl restart apache2
RUN systemctl enable apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/univers.zip /var/www/html/
WORKDIR /var/ww/html
RUN unzip univers.zip
RUN cp -rfv univers/* /var/www/html/
RUN rm -rf univers
RUN rm -rf univers.zip 
CMD [*/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
