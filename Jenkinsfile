pipeline {
    agent { dockerfile true }
    environment {
        MAVEN_OPTS = '-Djansi.force=true'
    }
    options {
        ansiColor('xterm')
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
