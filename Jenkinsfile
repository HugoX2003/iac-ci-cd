pipeline {
    agent any

    stages {
        stage('Clonar código') {
            steps {
                git 'https://github.com/HugoX2003/iac-ci-cd.git'
            }
        }

        stage('Construir imagen Docker') {
            steps {
                sh 'docker build -t iac-ci-cd .'
            }
        }

        stage('Ejecutar contenedor') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
