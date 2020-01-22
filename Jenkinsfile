pipeline {
    agent any
    stages {	
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
                sh 'az vm list -g Mayur_DevOps'
            }
        }
	stage('DeployStorage account'){
		steps{
			sh 'az group deployment create --name JenkinsDeployment --resource-group Mayur_DevOps --template-file ./azuredeploy.json'
		}
	} 
    }
}
