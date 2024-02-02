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
			DOCKER_IMAGE = "arundocker11/springboot${BUILD_NUMBER}"
			 VERSION = "latest"   
		}
              steps {
		script {
	    sh 'cd /var/lib/jenkins/workspace/maven-pipeline/'
	    sh ' docker built -t ${DOCKER_IMAGE}:${VERSION} . '
		}
            }
        }
    }
  }
