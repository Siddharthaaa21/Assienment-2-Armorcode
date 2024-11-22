pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "siddharthaaa21/lisp:latest"
I"
        DOCKER_TAG = "latest"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'httpshttps://github.com/Siddharthaaa21/Assienment-2-Armorcode.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} .'
            }
        }

        stage('Docker login') {
            steps {
                sh 'docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}'
            }
        }

        stage('Push Docker Image') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker push ${DOCKER_IMAGE}:${DOCKER_TAG}'
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker run --name python-app ${DOCKER_IMAGE}:${DOCKER_TAG}'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed.'
        }
    }
}