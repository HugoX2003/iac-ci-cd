pipeline {
    agent any

    stages {
        stage('Build Docker') {
            steps {
                sh 'docker build -t iac-ci-cd .'
            }
        }

        stage('Clean port 5000') {
            steps {
                // Esto detiene cualquier contenedor usando el puerto 5000
                sh '''
                    port=5000
                    cid=$(docker ps -q --filter "publish=${port}")
                    if [ -n "$cid" ]; then
                      echo "🔴 Contenedor en puerto $port encontrado. Deteniendo..."
                      docker stop $cid
                    else
                      echo "✅ Puerto $port libre."
                    fi
                '''
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
