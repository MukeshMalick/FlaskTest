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
     
        sh "docker build -t ${imagename}:latest ."


          }
      
          stage('Run image') {
      steps{
     
      sh "docker run -d -p 9090:9090 ${imagename}:latest"


          }
            
      }
   
    
    
  }
}
