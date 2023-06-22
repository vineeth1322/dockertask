FROM centos:7
RUN yum install httpd -y
RUN yum install php -y
WORKDIR /var/www/html
COPY ./index.php index.php
ENTRYPOINT ["httpd"]
CMD ["-DFOREGROUND"]
