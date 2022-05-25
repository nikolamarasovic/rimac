pipeline {
    agent none
    stages {
        stage('Build') {
            agent{
                label 'build'
            }
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
