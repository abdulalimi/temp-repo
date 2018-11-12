node() {
        stage('Checkout Source') {
            checkout scm
            
        dir('RepoOne') {
            git url: 'https://github.com/abdulalimi/test-repo.git'
        }
        dir('RepoTwo') {
            git url: 'https://github.com/abdulalimi/temp-repo.git'
        }
    }
        stage('Generate Config Files') {
            dir ('RepoTwo/scripts') {
              sh "chmod -R +x RepoTwo/scripts"
              sh './generate-config-files.sh'
}
    }
}
