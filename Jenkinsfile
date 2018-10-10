pipeline {
  agent any
  stages {
    stage('Compile Code') {
      steps {
        sh '/Users/alimia/apache-maven-3.5.4/bin/mvn package'
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