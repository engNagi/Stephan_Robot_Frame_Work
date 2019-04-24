pipeline {
    agent any
    stages
    {
        stage('test')
        {
            steps
            {
                sh 'pwd'
                sh 'cd $HOME/.jenkins/workspace/Robot_Frame_Work/venv/bin'
                sh 'pwd'
                sh 'echo make output Dir'
                sh 'mkdir -p $WORKSPACE/Output'
                sh 'robot -d ./output/ $HOME/.jenkins/workspace/Robot_Frame_Work/auktion.robot'
            }
        }
        stage('Publish Robot-Test Results')
        {
            steps
            {
                    step([$class: 'RobotPublisher',
                            disableArchiveOutput: false,
                            logFileName: 'log.html',
                            otherFiles: '',
                            outputFileName: 'output.xml',
                            outputPath: './output/',
                            passThreshold: 100,
                            reportFileName: 'report.html',
                            unstableThreshold: 0]);
            }
        }
    }
}