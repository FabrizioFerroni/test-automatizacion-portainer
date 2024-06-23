FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN ls -l /etc/nginx/conf.d/

COPY index.html /usr/share/nginx/html/
RUN ls -l /usr/share/nginx/html/

COPY public /usr/share/nginx/html/assets/
RUN ls -l /usr/share/nginx/html/assets/
RUN ls -l /usr/share/nginx/html/assets/img
RUN ls -l /usr/share/nginx/html/assets/js

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
