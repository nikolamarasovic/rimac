properties([pipelineTriggers([githubPush()])])
pipeline {
    agent any
    stages {
        
        stage('Checkout SCM') {
            agent{
                label 'build'
            }
            steps {
                checkout([
                 $class: 'GitSCM',
                 branches: [[name: 'main']],
                 userRemoteConfigs: [[
                    url: 'https://github.com/nikolamarasovic/rimac.git',
                    credentialsId: '7b378fd2-0fc6-470b-b980-e50dccb9b191',
                 ]]
                ])
            }
        }
        
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
        
        stage('Upload') {
            agent{
                label 'build'
            }
            steps{
                withAWS(credentials:'rimac', region:'eu-central-1') {
                    s3Upload(file:"main.exe", bucket:"rimac-bucket")
                }
            }    
        }
    }
}
