pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/sriniketh8119/week5.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                script {
                    sh 'npm install'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    sh 'npm test'
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    sh 'npm run build'
                }
            }
        }
    }
}
