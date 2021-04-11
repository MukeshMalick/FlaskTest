
pipeline {
    agent { dockerfile true 
          args 'hello.py'
          }
    stages {
        stage('Build') {
            steps {
                sh 'docker ps -a'
                
            }
        }
    }
}
