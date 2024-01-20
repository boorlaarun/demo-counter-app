
pipeline{
    agent any 

    stages {  
        stage('Git Checkout'){
            steps{
                script{
                    git branch: 'main', url: 'https://github.com/boorlaarun/demo-counter-app.git'
                    
                }
            }
        }
stage('Git clean'){
            steps{
                script{
                     sh 'mvn test'
                 COPY ./var/lib/jenkins/workspace/ARUNSAI BOORLA/target/.jar
                }
            }
        }

        tage('Git JAR CLEAN'){
            steps{
                script{
                sh "cd /var/lib/jenkins/workspace/ARUNSAI BOORLA/target/"
                    sh " rm -r .jar*"
                }
            }
        }
stage('Git build'){
            steps{
                      sh 'mvn -B clean package'
                }
             post {
                success {
                    echo 'Archiving the artifacts'
                    archiveArtifacts artifacts: '**/*',fingerprint: true
                }
              }  
            }    
stage('Git DOCKER'){
            steps{
                script{
                  sh "cd /var/lib/jenkins/workspace/ARUNSAI BOORLA "
                   sh " Docker.sh "
                }
            }
        }
        
   }   
}
    
