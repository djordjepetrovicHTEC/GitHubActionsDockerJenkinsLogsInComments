pipeline {
    agent any 
    options { timestamps () }
    stages {
        stage('Prepare') {
            steps {
                checkout([$class: 'GitSCM',
                branches: [[name: 'feature-pr-branch']],
                userRemoteConfigs: [[url: 'https://github.com/htec11090/GitHubActionsDockerJenkinsLogsInComments.git']]])
            }
        }
        stage('Text') {
            when {
              branch "feature-*"
            }
            steps {
                sh ''' cat RandomTxtFile.txt
                '''
            }
        }
    }
}