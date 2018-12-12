def getAWSProfile(String env) {
  def getAWSProfile
  switch(env) {
    case "dev":
      profile = "dl-dev"
      break
    case "e2e":
      profile = "dl-e2e"
      break
  }
  profile
}

node() {
        stage('Checkout Source') {
            deleteDir()
            checkout scm
            
        dir('RepoOne') {
            git url: 'https://github.com/abdulalimi/test-repo.git', branch: 'master'
        }
        dir('RepoTwo') {
            git url: 'https://github.com/abdulalimi/temp-repo.git', branch: 'master'
        }
    }
        stage('Generate Config Files') {
            dir ('RepoTwo/scripts') {
              sh "chmod -R +x $WORKSPACE/RepoTwo/scripts"
              sh './generate-config-files-xxxx.sh'
              try {
            sh 'might fail'
           echo 'Succeeded!'
          } catch (err) {
          echo "Failed: ${err}"
       } 
}
    }
        stage('Build') {
        sh 'mvn clean install'
    }
        stage('Push artifacts to S3') {
            dir ('RepoTwo/scripts') {
              sh "chmod -R +x $WORKSPACE/RepoTwo/scripts"
              sh './push_to_s3.sh'
}
    }
}
