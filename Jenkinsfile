pipeline {
    agent any

    environment {
        // Suppress interactive prompts during execution
        TF_IN_AUTOMATION = 'true'
    }

    stages {
        stage('Checkout') {
            steps {
                // Clones your GitHub repo automatically
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                // Prepares working directory and providers
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Shows planned changes
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Applies changes without manual confirmation prompt
                sh 'terraform apply -auto-approve'
                echo 'hello world'
            }
        }
    }
}
