FROM nginx:1

COPY ./reverse-proxy/mime.types /etc/nginx
COPY ./reverse-proxy/nginx.conf /etc/nginx

CMD nginx -g 'daemon off;'

