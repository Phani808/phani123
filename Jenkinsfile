pipeline {
    agent any
    tools{
        maven 'maven'
    }
    
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Phani808/phani123.git']]])
                sh 'mvn clean install'
            }
        }
    }
    stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t phani997/app.war .'
                }
            }
        }
}    