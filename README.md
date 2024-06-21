# Proyecto de Automatización de Despliegue Web con Docker y GitHub Actions

Este proyecto demuestra cómo automatizar el despliegue de una aplicación web usando Docker, Docker Compose y Portainer. La configuración incluye un servidor Nginx que sirve una página HTML estilizada con Tailwind CSS y que tiene interactividad con JavaScript.

## Estructura del Proyecto

```
/my-app
|-- public
|   |-- img
|   |   `-- 300.png
|   `-- js
|       `-- app.js
|-- index.html
|-- nginx.conf
|-- Dockerfile
|-- docker-compose.yml
```

## Archivos Clave

- `index.html`: Página HTML principal.
- `nginx.conf`: Configuración de Nginx para servir la página y recursos estáticos.
- `Dockerfile`: Archivo Docker para crear la imagen de la aplicación.
- `docker-compose.yml`: Archivo Docker Compose para definir y ejecutar los servicios.
- `public/js/app.js`: Script JavaScript para interactividad en la página.

## Descripción de la Aplicación

La aplicación es una página web simple que:

1. Usa Tailwind CSS para la estilización.
2. Cambia el color de fondo al hacer clic en un botón.
3. Cambia el color de fondo automáticamente cada 5 segundos.

## Instrucciones de Uso

### Construir y Ejecutar con Docker Compose

1. Clona el repositorio:

   ```bash
   git clone [https://github.com/FabrizioFerroni/test-automatizacion-portainer](https://github.com/FabrizioFerroni/test-automatizacion-portainer) portainer-automatizacion
   cd portainer-automatizacion
   ```

2. Construye la imagen de Docker y levanta el contenedor:

   ```bash
   docker-compose up --build
   ```

3. Abre tu navegador y navega a `http://localhost:8080` para ver tu aplicación en funcionamiento.
