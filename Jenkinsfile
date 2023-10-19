pipeline {

    agent {
            stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
        dockerfile {
            filename 'Dockerfile'
        }
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
                sh "--spec cypress/e2e/1-getting-started/todo.cy.js"
            }
        } 
    }
}
