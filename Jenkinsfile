pipeline {
    agent any

    stages {
        stage('Repo cloning') {
            steps {
              git 'https://github.com/Phani808/phani123.git'
            }
        }
        stage('maven build') {
        steps{    
            sh 'mvn clean package'
            }
        }
         stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t phani997/webapp .'
                }
            }
        }
    }
}       