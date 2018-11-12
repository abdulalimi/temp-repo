node() {
        stage('Checkout Source') {
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
              sh './generate-config-files.sh'
}
    }
}
