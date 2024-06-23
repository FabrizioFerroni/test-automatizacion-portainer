FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /var/www/html

COPY public /var/www/html/public

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
