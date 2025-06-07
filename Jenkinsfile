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
        withCredentials([sshUserPrivateKey(credentialsId: "${params.name_ssh_secret}", usernameVariable : 'ssh_username', keyFileVariable: 'ssh_key' )]) {
              sh 'echo $ssh_username'
              sh 'echo $ssh_key'
        }
      }
    }
  }
  post {
    always{
      cleanWs()
    }
  }
}