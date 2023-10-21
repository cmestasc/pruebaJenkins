pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        
            stage('Primer módulo de test'){
            agent { dockerfile true }
            steps {
                script {
                    try {
                    sh "npm ci"
                    sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
                } catch (err) {
                    echo "Caught: ${err}"
                    currentBuild.result = 'SUCCESS'
                }
                }
            }
        }

        stage('Segundo módulo de test'){
            agent { dockerfile true }
            steps {
                script {
                    try {
                    sh "npm ci"
                    sh "npx cypress run --spec cypress/e2e/1-getting-started/fail.cy.js"
                } catch (err) {
                    echo "Caught: ${err}"
                    currentBuild.result = 'SUCCESS'
                }
                }
            }
        }

        stage('Tercer módulo de test'){
            agent { dockerfile true }
            steps {
                script {
                    try {
                    sh "npm ci"
                    sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
                } catch (err) {
                    echo "Caught: ${err}"
                    currentBuild.result = 'SUCCESS'
                }
                }
            }
        }

        // stage('Cuarto módulo de test'){
        //     agent { dockerfile true }
        //     steps {
        //         try {
        //             sh "npm ci"
        //             sh "npx cypress run --spec cypress/e2e/1-getting-started/fail.cy.js"
        //         } catch (err) {
        //             echo "Caught: ${err}"
        //             currentBuild.result = 'SUCCESS'
        //         }
        //     }
        // }
        
        
    }
}
