# Utilizar la imagen base de nginx:alpine
FROM nginx:alpine

# Copiar el archivo de configuración de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar el contenido de la aplicación a la carpeta html de Nginx
COPY index.html /usr/share/nginx/html/
COPY public /usr/share/nginx/html/public/

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
