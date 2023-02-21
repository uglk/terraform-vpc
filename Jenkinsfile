pipeline {
    agent any
    tools {
       terraform 'terraform11'
    }
    stages {
        stage('Scripts Checkout') {
            steps {
               git branch: 'main', url: 'https://github.com/uglk/terraform-vpc.git'
            }
        }
        
        stage('Initialize Scripts') {
            steps {
              sh 'terraform init'
            }
        }
        stage('plan') {
            steps {
               sh 'terraform plan'
            }
        }
        stage('apply') {
            steps {
              sh 'terraform apply --auto-approve'
            }
        }
    }
}
