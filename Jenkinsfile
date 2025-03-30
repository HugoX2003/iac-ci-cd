pipeline {
    agent any

    stages {
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
