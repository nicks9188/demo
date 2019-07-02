FROM nginx:1.16.0-alpine
MAINTAINER https://hub.docker.com/u/nicks9188
COPY nginx.conf  /etc/nginx/nginx.conf

RUN mkdir /demo
WORKDIR /demo

COPY src /demo/src

EXPOSE 1000

RUN docker run --name hello-world-nginx -d -p 1000:80 -v F:\Workspace\Nodejs\First\nginx.conf:/etc/nginx/nginx.conf:ro -v F:\Workspace\Nodejs\First\src:/usr/share/nginx/html:ro nginx:1.16.0-alpine

RUN usermod -a -G docker jenkins

USER jenkins
