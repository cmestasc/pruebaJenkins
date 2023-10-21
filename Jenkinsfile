pipeline {
    agent any
    stages {
        stage('Build'){
            agent { dockerfile true }
            steps {
                sh "node --version"
                sh "docker-compose run primer-modulo"
            }
        }
    }
}
