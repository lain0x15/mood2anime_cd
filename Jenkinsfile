pipeline {
  agent any
  parameters {
    string(name: 'ip_vm', defaultValue: '109.107.189.205', description: 'ip address vm')
    string(name: 'name_ssh_secret', defaultValue: 'ssh_mood2anime_cd', description: 'ssh secret for vm auth')

  }
  options {
    disableConcurrentBuilds()
  }
  stages {
    stage('test') {
      steps {
        sh "echo ${params.ip_vm}"
      }
    }
  }
  post {
    always{
      cleanWs()
    }
  }
}