pipeline {
    agent { 
        filename 'Dockerfile'
        dir './'
        label 'my-label'
    }

    stages {
        
        stage('Build'){
            steps {
                echo "Build"
            }
        }
        
        stage('Testing') {
            steps {
                bat "--spec cypress/e2e/1-getting-started/todo.cy.js"
            }
        } 
    }
}
