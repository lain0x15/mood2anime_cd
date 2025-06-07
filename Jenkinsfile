pipeline {
  agent any
  parameters {
    string(name: 'ip_vm', defaultValue: '109.107.189.205', description: 'ip address vm')
    string(name: 'dns_name_web_site', defaultValue: 'mood2anime.lain0x15.tech', description: 'DNS name for website')
    string(name: 'name_ssh_secret', defaultValue: 'ssh_mood2anime_cd', description: 'ssh secret for vm auth')
    string(name: 'tag_docker_image', defaultValue: 'max0x15/mood2anime:latest', description: 'mood2anime image tag')
  }
  options {
    disableConcurrentBuilds()
  }
  stages {
    stage('test') {
      steps {
        ansiblePlaybook(credentialsId: "${params.name_ssh_secret}",
          playbook: 'ansible/main.yml',
          inventory: '${ip_vm},',
          extras: "-e DJANGO_CSRF_TRUSTED_ORIGINS='https://${params.dns_name_web_site}'"
        )
      }
    }
  }
  post {
    always{
      cleanWs()
    }
  }
}