pipeline {
    agent any

    environment {
        // Matches the IDs from your Jenkins Credentials manager
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'us-east-2'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    stage('Deploy EC2') {
        steps {
            sh 'terraform init -upgrade'
            sh 'terraform apply -auto-approve'
        }
    }
    }
}