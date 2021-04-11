
pipeline {
    agent { dockerfile 
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
