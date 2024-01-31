pipeline {
   agent any
    stages {
    	stage('Clean') {
            steps {
                sh 'mvn clean'
            }
        }
          stage('Analyze') {
    		steps {
    			withSonarQubeEnv(credentialsId: 'sonar') {
}
    		}
		}
    
		stage('Build') {
            steps {
                sh 'mvn -B clean package'
            }
        }
    }
  }
