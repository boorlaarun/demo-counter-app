pipeline {
   agent any
    stages {
    	stage('Clean') {
            steps {
                sh 'mvn clean'
            }
        }
	    stage('Test') {
            steps {
                 sh 'mvn test'
            }
        }
          stage('Analyze') {
		  environment {
        SONAR_URL = "http://13.235.45.246/:9000"
           }
                   steps {
    			withCredentials([usernameColonPassword(credentialsId: 'sonarqube', variable: 'SONAR_AUTH_TOKEN')]) {
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
