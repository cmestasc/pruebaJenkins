pipeline {
    agent any
    stages {
        stage('Build'){
            agent { dockerfile true }
            steps {
                sh "node --version"
                sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
            }
        }
    }
}
