pipeline {
    agent any

    stages {

       stage('Pull code') {
    steps {
        git branch: 'main', url: 'https://github.com/MASS-SPECC/test.git'
    }
}


        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("test-app")
                }
            }
        }

        stage('Stop Old Container') {
            steps {
                script {
                    sh """
                    docker stop test-app-container || true
                    docker rm test-app-container || true
                    """
                }
            }
        }

        stage('Run New Container') {
            steps {
                script {
                    sh """
                    docker run -d --name test-app-container -p 8000:80 test-app
                    """
                }
            }
        }
    }
}
