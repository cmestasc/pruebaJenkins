pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        
            stage('Primer módulo de test'){
            agent { dockerfile true }
            steps {
                sh "npm ci"
                sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') { echo "Fallo en stage" }
            }
        }

        stage('Segundo módulo de test'){
            agent { dockerfile true }
            steps {
                sh "npm ci"
                sh "npx cypress run --spec cypress/e2e/1-getting-started/fail.cy.js"
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') { echo "Fallo en stage" }
            }
        }

        stage('Tercer módulo de test'){
            agent { dockerfile true }
            steps {
                sh "npm ci"
                sh "npx cypress run --spec cypress/e2e/1-getting-started/fail.cy.js"
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') { echo "Fallo en stage" }
            }
        }

        stage('Cuarto módulo de test'){
            agent { dockerfile true }
            steps {
                sh "docker --version"
                sh "npm ci"
                sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
                catchError(stageResult: 'FAILURE') { echo "Fallo en stage" }
            }
        }
        
        
    }
}
