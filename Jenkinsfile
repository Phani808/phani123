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
    }    