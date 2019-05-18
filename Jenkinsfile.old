pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
      }
    }
    stage('Build') {
      steps {
        sh 'npm run build'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
        emailext(subject: 'Aprobar', body: 'Por favor aprueba', attachLog: true, to: 'emmanuel')
      }
    }
    stage('Approve') {
      steps {
        input(message: 'Se aprueba?', submitter: 'emmanuel')
      }
    }
    stage('Deploy') {
      steps {
        echo 'Successful'
        emailext(subject: 'Deploy successful', body: 'Deploy successful', to: 'emmanuel,tester', attachLog: true)
      }
    }
  }
}