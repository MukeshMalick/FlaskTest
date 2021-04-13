pipeline {
  environment {
    registry = "977315/flask-test"
    registryCredential = 'docker-creds'
    dockerImage = ''
  }
    agent any 
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/MukeshMalick/FlaskTest.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    stage('Test Mkdocs' ) {
                agent {
                docker { image '977315/flask-test:$BUILD_NUMBER' }
            }
            steps {
                sh 'python --version'
            }
        }


    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
