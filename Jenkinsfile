
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
                 
                }
            }
        }

stage('Git build'){
            steps{
                      sh 'mvn clean packages'
                }
             post {
                success {
                    echo 'Archiving the artifacts'
                    archiveArtifacts artifacts: '**/*.war',fingerprint: true
                }
              }  
            }    
   }   
}
    
