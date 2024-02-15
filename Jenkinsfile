pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/vnaidu563/awss3.git']]])

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
        
        stage('Terraform Apply') {
            steps {
                // Run terraform apply
                script {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
    
}
