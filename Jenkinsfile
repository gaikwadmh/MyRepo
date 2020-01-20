pipeline {
    agent any
    stages {
        stage('Authenticate') {
            environment {
                AZ = azureServicePrincipal('service-principle')
            }
            steps {
                echo "principal is: ${AZ} (type: ${AZ.class.toString()})"
                echo "AZURE_CLIENT_ID should be in the env, but is: ${env.AZURE_CLIENT_ID}"
            }
        }
	stage('GetResource') {
            steps {
                sh 'az resource list'
            }
        }
    }
}
