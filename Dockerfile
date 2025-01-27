FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

COPY index.html /var/www/html

COPY public /var/www/html/public

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
