pipeline {
    agent any
    environment { 
        IMAGE_NAME = 'cypress-testing'
        IMAGE_TAG = '1.0.0'
        TEST_PATH_FIRST = 'cypress/e2e/1-getting-started/todo.cy.js'
        TEST_PATH_SECOND = 'cypress/e2e/1-getting-started/fail.cy.js'
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
                        // Error creating the image. Tests cant be executed. Setting current build as failure to stop executing next stages.
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
                      sh "docker run ${env.IMAGE_NAME}:${env.IMAGE_TAG} --spec ${TEST_PATH_FIRST}"
                    } catch (err) {
                        // Some test fails. Setting current build as success to execute next stages.
                        echo "Caught: ${err}"
                        currentBuild.result = 'SUCCESS'
                    }
                }
            }
        }

        stage('Second Test Module'){
            steps {
                script {
                    try {
                    // Run a instance of the image we build. 
                      sh "docker run ${env.IMAGE_NAME}:${env.IMAGE_TAG} --spec ${TEST_PATH_SECOND}"
                    } catch (err) {
                        // Some test fails. Setting current build as success to execute next stages.
                        echo "Caught: ${err}"
                        currentBuild.result = 'SUCCESS'
                    }
                }
            }
        }

        stage('First Test Module again'){
            steps {
                script {
                    try {
                    // Run a instance of the image we build. 
                      sh "docker run ${env.IMAGE_NAME}:${env.IMAGE_TAG} --spec ${TEST_PATH_FIRST}"
                    } catch (err) {
                        // Some test fails. Setting current build as success to execute next stages.
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
