pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Build'){
            agent { dockerfile true }
            steps {
                sh "node --version"
                sh "npm ci"
                sh "dir"
                sh "cd cypress"
                sh "dir"
                sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
            }
        }
    }
}
