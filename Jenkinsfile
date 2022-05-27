properties([pipelineTriggers([githubPush()])])
pipeline {
    agent {
        label 'build,test'
    }
    stages {      
        stage('Check environment') {
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
                sh '''
                    #!/bin/bash
                    bash "${WORKSPACE}/check_env.sh"
                '''
            }
        }
        stage('Build') {
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
                sh '''
                    #!/bin/bash
                    bash "${WORKSPACE}/build.sh"
                '''
                archiveArtifacts artifacts: 'main.exe', fingerprint: true
            }
        }
        
        stage('Upload') {
            
            steps{
                copyArtifacts filter: 'main.exe', fingerprintArtifacts: true, projectName: env.JOB_NAME, selector: specific(env.BUILD_NUMBER)
                withAWS(credentials:'rimac', region:'eu-central-1') {
                    s3Upload(file:"main.exe", bucket:"rimac-bucket")
                }
            }    
        }
    }
}
