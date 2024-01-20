
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
                script{
               
                      sh 'mvn clean install'
                }
             post {
                sucess {
                    archiveArtifacts artifacts: '**/*.war'
                            }
                          }       
            }

        }
        
   }

    
}
    
