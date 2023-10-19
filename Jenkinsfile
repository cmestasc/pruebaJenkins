pipeline {

    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }

    stages {
        
        stage('Build'){
            steps {
                echo "Build"
            }
        }
        
        stage('Testing') {
            steps {
                sh "--spec cypress/e2e/1-getting-started/todo.cy.js"
            }
        } 
    }
}
