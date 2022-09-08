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
        stage('Echo') {
            steps {
                echo 'Hello from jenkinsfile v 1.6' 
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
        def directory = "${env.WORKSPACE}/GitHubActionsDockerJenkinsLogsInComments"
        stage('capture console output') {
            script {
                def logContent = Jenkins.getInstance().getItemByFullName(env.JOB_NAME).getBuildByNumber(
                Integer.parseInt(env.BUILD_NUMBER)).logFile.text
                writeFile file: directory + "/RandomTxtFile.txt",
                text: logContent
            }
            def consoleOutput = readFile directory + '/RandomTxtFile.txt'
            echo 'Console output saved in the RandomTxtFile.txt'
            echo '--------------------------------------'
            echo consoleOutput
            echo '--------------------------------------'
            }
    }
}