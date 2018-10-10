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
        sh 'aws s3 cp target s3://aa407-main --recursive'
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
  post {
    always {
      cleanWs()

    }

  }
}