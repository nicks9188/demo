FROM nginx:1.16.0-alpine
MAINTAINER https://hub.docker.com/u/nicks9188
COPY nginx.conf  /etc/nginx/nginx.conf

RUN mkdir /demo
WORKDIR /demo

COPY src /demo/src

RUN usermod -a -G docker jenkins

USER jenkins
