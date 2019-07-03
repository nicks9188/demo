FROM nginx:1.16.0-alpine
MAINTAINER https://hub.docker.com/u/nicks9188
COPY nginx.conf  /etc/nginx/nginx.conf
