#Este es mi primer Dockerfile
FROM nginx:alpine
RUN apk add php7-fpm && mv ${DOCKAGE_ETC_DIR}/sbin/* /sbin && ln -s /usr/bin/php-fpm* /usr/bin/php-fpm
COPY pagina-web /usr/share/nginx/html
