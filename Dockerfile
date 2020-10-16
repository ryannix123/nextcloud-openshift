FROM nginx:alpine

VOLUME /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf
RUN chown -R 1001:0 /var/cache/nginx && \
    chmod -R a+rwx /var/cache/nginx && \
    chmod -R ug+rwx /var/cache/nginx && \
    mkdir /var/www/html/data && \
    chmod -R 0770 /var/www/html/data && \
    chown -R 1000150000:1000150000 /var/www/html/data
