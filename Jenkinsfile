pipeline {
    agent any
    tools {
        maven 'Maven 3.20'
    }
    stages {
        stage('clone') {
            steps {
                git 'https://github.com/megz2020/simple_pipline_demo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Test') {
            steps {
                sh 'docker-compose run --rm app pytest'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
