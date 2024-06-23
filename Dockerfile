FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/
COPY public /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
