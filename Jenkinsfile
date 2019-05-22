pipeline
        {
            agent
            {
                dockerfile
                {
                filename 'Dockerfile'
                args'-v /Users/mohamednagi/Desktop/Work/Stephan_Robot_Frame_Work/:/opt/robotframework/tests -v /Users/mohamednagi/Desktop/Work/Stephan_Robot_Frame_Work/Output:/opt/robotframework/reports --name robot-framework robot-framework/docker:latest'
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