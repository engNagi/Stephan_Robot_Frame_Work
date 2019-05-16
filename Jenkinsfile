pipeline
{
    agent
    {
        dockerfile
                  {
                  filename 'Dockerfile'
                  args ' -v Output:/opt/robotframework/reports -v auktion.robot:/opt/robotframework/tests'
                  }
    }
    stages {
        stage('Publish Robot-Test Results')
        {
            steps
            {
                    step([$class: 'RobotPublisher',
                            disableArchiveOutput: false,
                            logFileName: 'log.html',
                            otherFiles: '',
                            outputFileName: 'output.xml',
                            outputPath: './Output/',
                            passThreshold: 100,
                            reportFileName: 'report.html',
                            unstableThreshold: 0]);
            }
        }
    }
}