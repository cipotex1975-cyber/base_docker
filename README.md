# Python 2.7 Docker Base

Proyecto base con Python 2.7 en contenedor Docker, preparado para GitHub Codespaces.

## Estructura del Proyecto

```
docker_base/
├── .devcontainer/
│   └── devcontainer.json    # Configuración para GitHub Codespaces
├── app/
│   └── main.py              # Punto de entrada de la aplicación
├── .gitignore
├── docker-compose.yml
├── Dockerfile
├── README.md
└── requirements.txt
```

## Ruta de la Aplicación

Coloca tu aplicación dentro del directorio **`app/`**. El archivo `main.py` es el punto de entrada que Docker ejecutará al iniciar el contenedor.

La ruta dentro del contenedor es: `/app/`

## Uso Local

### Construir y levantar el contenedor

```bash
docker-compose up --build
```

### Ejecutar en segundo plano

```bash
docker-compose up -d --build
```

### Detener el contenedor

```bash
docker-compose down
```

### Acceder al contenedor

```bash
docker exec -it python27-app bash
```

## GitHub Codespaces

Este proyecto incluye configuración `.devcontainer` para que al abrir en Codespaces se levante automáticamente el entorno con Python 2.7.

1. Sube el repositorio a GitHub
2. Abre el repositorio en GitHub Codespaces
3. El entorno se configurará automáticamente

## Agregar Dependencias

Edita `requirements.txt` y agrega las dependencias necesarias. Luego reconstruye el contenedor:

```bash
docker-compose up --build
```
