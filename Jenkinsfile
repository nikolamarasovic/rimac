pipeline {
    agent any

    stages {
        stage('Build') {
            
            steps {
                sh '''
                    #!/bin/bash
                    bash "${WORKSPACE}/build.sh"
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
