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
