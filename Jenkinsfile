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
    		steps {
    			script {
             		scannerHome = tool 'sonarQube';
        		}
     			withSonarQubeEnv('SonarQube') {
        			 sh 'mvn clean verify sonar:sonar'
    			}
    		}
		}
    
		stage('Build') {
            steps {
                sh 'mvn -B clean package'
            }
        }

    }
