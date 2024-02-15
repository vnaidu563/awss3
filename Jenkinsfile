pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                echo checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/vnaidu563/awss3.git']]])

            }
        }
        stage('Terraform Init') {
            steps {
                // Run terraform init
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                // Run terraform plan
                script {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                // Run terraform apply
                script {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
    post {
        always {
            // Cleanup workspace after pipeline execution
            cleanWs()
        }
    }
}
