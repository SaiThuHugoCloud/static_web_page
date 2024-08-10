FROM ubuntu:18.04
LABEL maintainer="konova@novaitg.com"
ENV REFRESHED_AT 2021-12-12
RUN apt-get -yqq update; apt-get -yqq install nginx

ADD index.html /var/www/html/index.html
ADD style.css /var/www/html/style.css

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
