pipeline {
    agent any
    stages {
        stage('Build'){
            agent { dockerfile true }
            steps {
                sh "node --version"
                sh "--spec 1-getting-started/todo.cy.js"
            }
        }
    }
}
