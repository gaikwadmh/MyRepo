pipeline {
    agent any
    stages {
	stage('Build') {
            steps {
                echo 'Running build automation'                
                archiveArtifacts artifacts: '*'
            }
        }
        stage('Authenticate') {
            environment {
                AZ = azureServicePrincipal('MSazSPN')
            }
            steps {
                echo "principal is: ${AZ} (type: ${AZ.class.toString()})"
                echo "AZURE_CLIENT_ID should be in the env, but is: ${env.AZURE_CLIENT_ID}"
            }
        }
	stage('GetResource') {
            steps {
                sh 'az vm list -g Mayur_POC'
            }
        }
    }
}
