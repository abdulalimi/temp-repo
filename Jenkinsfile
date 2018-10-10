pipeline {
  agent any
  stages {
    stage('Compile Code') {
      steps {
        sh 'mvn'
      }
    }
    stage('Upload to S3') {
      steps {
        sh 'echo upload to S3'
      }
    }
    stage('Spin up tidal ') {
      steps {
        sh 'echo tidal instance spinning up'
      }
    }
    stage('Execute Code') {
      steps {
        sh 'echo code executing'
      }
    }
  }
  environment {
    BUILD_HOME = '/path/goes/here'
  }
}