# Proyecto de Automatización de Despliegue Web con Docker y GitHub Actions

Este proyecto demuestra cómo automatizar el despliegue de una aplicación web usando Docker, Docker Compose y Portainer. La configuración incluye un servidor Nginx que sirve una página HTML estilizada con Tailwind CSS y que tiene interactividad con JavaScript.

## Estructura del Proyecto

```
/my-app
|-- public
|   |-- img
|   |   `-- imagen.jpg
|   `-- js
|       `-- script.js
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
- `public/js/script.js`: Script JavaScript para interactividad en la página.

## Descripción de la Aplicación

La aplicación es una página web simple que:

1. Usa Tailwind CSS para la estilización.
2. Cambia el color de fondo al hacer clic en un botón.
3. Cambia el color de fondo automáticamente cada 5 segundos.

## Instrucciones de Uso

### Construir y Ejecutar con Docker Compose

1. Clona el repositorio:

   ```bash
   git clone <URL_DE_TU_REPOSITORIO>
   cd my-app
   ```

2. Construye la imagen de Docker y levanta el contenedor:

   ```bash
   docker-compose up --build
   ```

3. Abre tu navegador y navega a `http://localhost:8080` para ver tu aplicación en funcionamiento.

### Despliegue Automático con GitHub Actions

El proyecto está configurado para utilizar GitHub Actions para automatizar el despliegue:

1. Crea un archivo `.github/workflows/docker-image.yml` en tu repositorio.
2. Define el flujo de trabajo para construir y empujar la imagen Docker a un registro Docker.

Ejemplo de configuración para GitHub Actions:

```yaml
name: Build and Push Docker Image

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v1

      - name: Login to DockerHub
        uses: docker/login-action@v1
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}

      - name: Build and push Docker image
        uses: docker/build-push-action@v2
        with:
          context: .
          push: true
          tags: ${{ secrets.DOCKER_USERNAME }}/mi-aplicacion:latest
```

### Configuración de Portainer

1. Inicia sesión en Portainer.
2. Crea un nuevo stack.
3. Copia el contenido del archivo `docker-compose.yml` y pégalo en la configuración del stack.
4. Despliega el stack para levantar la aplicación.

## Notas

- Asegúrate de reemplazar `<URL_DE_TU_REPOSITORIO>` y las credenciales de DockerHub en el flujo de trabajo de GitHub Actions.
- Configura los secretos `DOCKER_USERNAME` y `DOCKER_PASSWORD` en el repositorio de GitHub para la autenticación en DockerHub.
