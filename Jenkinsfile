pipeline {

    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }
    
    stages {

        stage("Git Clean") {
            steps {
                echo 'aprroved..'
                sh "rm -r TerraGit-Mod"
            }
        }

        stage("git clone") {
            steps {
                echo 'initializing terraform..'
                sh " git clone https://github.com/Rohit-J99/TerraGit-Mod.git "
            }
        }

        stage("Terraform Initialize") {
            steps {
                echo 'initializing terraform..'
                sh "terraform init"
            }
        }

        stage("Terraform Validate") {
            steps {
                echo 'validating..'
                sh "terraform validate"
            }
        }

        
        stage("Terraform Plan") {
            steps {
                echo 'planning..'
                sh "terraform plan -out tfplan"
            }
        }


        stage("Terraform Apply") {
            steps {
                echo 'aprroved..'
                sh "terraform plan --auto-approve"
            }
        }

        
    }
        post {
        success{
            echo 'Build successful'
        }
        failure {
            echo 'Build failed'
        }
    }
}




