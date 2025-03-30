#!/bin/bash

# Instala plugins esenciales
JENKINS_CLI=jenkins-cli.jar
JENKINS_URL=http://localhost:8080

echo "Instalando plugins necesarios..."
java -jar $JENKINS_CLI -s $JENKINS_URL install-plugin docker-workflow git workflow-aggregator -restart
