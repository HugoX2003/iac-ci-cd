pipeline {
    agent any

    stages {
        stage('Clonar repositorio') {
            steps {
                git 'https://github.com/HugoX2003/iac-ci-cd.git'
            }
        }

        stage('Build Docker') {
            steps {
                sh 'docker build -t iac-ci-cd .'
            }
        }

        stage('Deploy con Compose') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose up -d'
            }
        }
    }
}
