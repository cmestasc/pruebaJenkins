pipeline {
    agent any
    stages {
        stage('Build'){
            agent { dockerfile true }
            steps {
                sh "node --version"
                sh "dir"
                sh "cd cypress"
                sh "dir"
                sh "--spec e2e/1-getting-started/todo.cy.js"
            }
        }
    }
}
