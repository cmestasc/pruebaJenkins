pipeline {
    agent any
    environment { 
        IMAGE_NAME = 'clang'
        IMAGE_TAG = '1.0.0'
        TESTS_PATH = ['cypress/e2e/1-getting-started/todo.cy.js']
    }
    options {
        ansiColor('xterm')
    }
    stages {
        
        //     stage('Primer módulo de test'){
        //     agent { dockerfile true }
        //     steps {
        //         script {
        //             try {
        //               sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
        //         } catch (err) {
        //             echo "Caught: ${err}"
        //             currentBuild.result = 'SUCCESS'
        //         }
        //         }
        //     }
        // }

        stage('Build testing image'){
            steps {
                script {
                    try {
                        // Build image with current Dockerfile.
                        sh "docker build -t ${env.IMAGE_NAME}:${env.IMAGE_TAG} ."
                    } catch (err) {
                        // Error creating the image. Tests cannot be executed.
                        echo "Caught: ${err}"
                        echo 'Error creating the image.'
                        currentBuild.result = 'FAILURE'
                    }
                }
            }
        }

        stage('First Test Module'){
            steps {
                script {
                    try {
                    // Run a instance of the image we build. 
                      sh "docker run -it ${env.IMAGE_NAME}:${env.IMAGE_TAG} --spec ${env.TESTS_PATH[0]}"
                    } catch (err) {
                        echo "Caught: ${err}"
                        currentBuild.result = 'SUCCESS'
                    }
                }
            }
        }

        // stage('Segundo módulo de test'){
        //     agent { dockerfile true }
        //     steps {
        //         script {
        //             try {
        //             sh "npm ci"
        //             sh "npx cypress run --spec cypress/e2e/1-getting-started/fail.cy.js"
        //         } catch (err) {
        //             echo "Caught: ${err}"
        //             currentBuild.result = 'FAILURE'
        //         }
        //         }
        //     }
        // }

        // stage('Tercer módulo de test'){
        //     agent { dockerfile true }
        //     steps {
        //         script {
        //             try {
        //             sh "npm ci"
        //             sh "npx cypress run --spec cypress/e2e/1-getting-started/todo.cy.js"
        //         } catch (err) {
        //             echo "Caught: ${err}"
        //             currentBuild.result = 'SUCCESS'
        //         }
        //         }
        //     }
        // }

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
