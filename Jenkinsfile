pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/sriniketh8119/week5.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("my-node-app:${env.BUILD_ID}")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run('-p 3000:3000')
                }
            }
        }
    }
}
