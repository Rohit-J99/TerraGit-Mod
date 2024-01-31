pipeline {

    agent any
    
    stages {
        stage("git clone") {
            steps {
                echo 'initializing terraform..'
                sh " git clone https://github.com/Rohit-J99/TerraGit-Mod.git "
            }
        }

        stage("Terraform Initialize") {
            steps {
                echo 'initializing terraform..'
                sh "terrform init"
            }
        }

        stage("Terraform Validate") {
            steps {
                echo 'validating..'
                sh "terrform validate"
            }
        }

        
        stage("Terraform Plan") {
            steps {
                echo 'planning..'
                sh "terrform plan"
            }
        }


        stage("Terraform Apply") {
            steps {
                echo 'aprroved..'
                sh "terrform plan -auto-approve"
            }
        }

        stage("Git Clean") {
            steps {
                echo 'aprroved..'
                sh "rm -r .\\TerraGit-Mod"
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




