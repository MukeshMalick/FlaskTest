pipeline {
  environment {
    imagename = "977315/flask-test"
    registryCredential = 'docker-creds'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
 //       git([url: 'https://github.com/ismailyenigul/hacicenkins.git', branch: 'master'])
 	checkout scm

      }
    }
    stage('Building image') {
      steps{
     
      sh "echo done"


          }
      }
   
    
    
  }
}
