pipeline {

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    agent  any

    stages {
        stage('Plan') {
            steps {
                sh 'terraform init'
                sh "terraform plan"
                sh 'terraform apply --auto-approve'
            }
        }
    }

  }