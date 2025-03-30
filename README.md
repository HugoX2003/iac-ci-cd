# Proyecto de Prueba Flask + Jenkins + Docker

Este proyecto contiene una app mínima en Flask para practicar pipelines de CI/CD con Docker y Jenkins.

## Pasos principales

1. Construir la imagen:
```bash
docker build -t iac-ci-cd .
```

## Archivos del repositorio (Para recordar :P)

1. .dockerignore: Evita que ciertos archivos y/o folders se incluyan al construir la imagen Docker.

2. .gitignore: Evita que git suba archivos que no deben versionarse, como entornos virtuales o archivos temporales.

3. Dockerfile: Define cómo construir la imagen Docker de la app.
```bash
# Líneas clave
RUN pip install -r requirements.txt     #instala Flask dentro del contenedor.
CMD ["python", "app.py"]                #inicia la app automáticamente.
```

4. Jenkinsfile: Automatiza CI/CD desde Jenkins. Contiene el pipeline de despliegue.

5. app.py: App Flask básica para probar el proyecto. host='0.0.0.0' es necesario para que Flask sea accesible desde fuera del contenedor.

6. docker-compose.yml: Orquesta el despliegue de la app con un solo comando: docker-compose up.

7. requirements.txt: Lista las dependencias necesarias para la app.

8. setup-jenkins.sh: Script para automatizar la instalación de plugins en Jenkins usando Jenkins CLI. Se necesita tener jenkins-cli.jar descargado.

