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
             DOCKER_IMAGE = "arundocker11/spring:${BUILD_NUMBER}"
		}
              steps {
		script {
	    sh 'cd /var/lib/jenkins/workspace/maven-pipeline/ && docker build -t ${DOCKER_IMAGE} .'	
		}
            }
	    }
		stage('inter_dockerhub') {
            steps {
		    script {
			//sh 'cd /var/lib/jenkins/workspace/maven-pipeline/ '    
	  // def dockerImage = docker.image("${DOCKER_IMAGE}")  
			// This step should not normally be used in your script. Consult the inline help for details.
withDockerRegistry( 'https://index.docker.io/v1/',"arundocker11") 
               //sh ' docker push $DOCKER_IMAGE '
                       
		    }
	    }
        }    
    }
  }
