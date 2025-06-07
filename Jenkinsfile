pipeline {
  agent any
  parameters {
    string(name: 'name_ssh_secret', defaultValue: 'ssh_mood2anime_cd', description: 'ssh secret for vm auth')
  }
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