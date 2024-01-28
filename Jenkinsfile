pipeline {

    agent any
    
    stages {
        stage("Hello") {
            steps {
                echo "Hello!"
            }
        }


        stage("build") {
            steps {
                echo 'building the application...'
            }
        }

        stage('parallel stages') {
        parallel {
            stage('build') {
            steps {
                echo 'parallely building!'
            }
            }
            stage('test') {
            steps {
                echo 'parallely testing!'
            }
            }
        }
        }
  
        stage("test") {
        
            steps {
                echo 'testing the application...'
            }
        }

        
        stage("deploy") {
            steps {
                echo 'deploying the application...'
            }
        }

        
    }
        post {
        success{
            echo 'Build successful!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
