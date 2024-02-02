pipeline {
   agent any
    stages {
    	stage('Clean') {
            steps {
                sh 'mvn clean'
            }
        }
	stage('Build') {
            steps {
                sh 'mvn -B clean package'
            }
        }
	    stage('docker_image') {
		     environment {
			  DOCKER_IMAGE = "abhishekf5/ultimate-cicd:${BUILD_NUMBER}"
		}
              steps {
		script {
	    sh 'cd /var/lib/jenkins/workspace/maven-pipeline/ && docker build -t ${DOCKER_IMAGE} .'
	   
		}
            }
        }
    }
  }
