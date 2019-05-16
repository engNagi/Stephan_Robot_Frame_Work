pipeline
{
    agent
    {
        dockerfile
                  {
                  filename 'Dockerfile'

                  }
    }
    stages {
        stage('Running Robot-Framework') {
            steps {
                    args '-v auktion.robot:/opt/robotframework/reports'
            }

        }
    }
}