pipeline {
  agent any
  parameters {}
  options {
    disableConcurrentBuilds()
  }
  stages {
    stage('test') {
      steps {
        sh "echo 123"
      }
    }
  }
  post {
    always{
      cleanWs()
    }
  }
}