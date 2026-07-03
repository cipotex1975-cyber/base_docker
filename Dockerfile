# =============================================================================
# Dockerfile - Python 2.7 Base Container
# =============================================================================
# Imagen base con Python 2.7 (Debian Stretch)
FROM python:2.7-slim-stretch

# Metadatos del contenedor
LABEL maintainer="ceavalos"
LABEL description="Contenedor base con Python 2.7 para despliegue de aplicación"
LABEL version="1.0"

# Variables de entorno
ENV PYTHONUNBUFFERED=1
ENV APP_HOME=/app
ENV APP_ENV=development

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Crear directorio de la aplicación
RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

# Copiar e instalar dependencias de Python
COPY requirements.txt ${APP_HOME}/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación
# La aplicación debe colocarse en ./app/
COPY ./app/ ${APP_HOME}/

# Exponer puerto (ajustar según la aplicación)
EXPOSE 8080

# Comando por defecto - ejecuta la aplicación
CMD ["python", "main.py"]
