pipeline{
    
    agent any 

    parameters {
choice( choices: 'create\ndelete' , description: 'name of the student', name: 'maven' )
        
    }
    
    stages {
        
        
        stage('Git Checkout'){
            when {
             expression { params.choices == 'create\ndelete' }
        }
            
            steps{
                
                script{
                    
                    git branch: 'main', url: 'https://github.com/boorlaarun/demo-counter-app.git'
                }
            }
        }
        stage('UNIT testing'){
            when {
             expression { params.choices == 'create' }
        }
            
            steps{
                  when {
             expression { params.choices == 'create\ndelete' }
        }
           
                
                script{
                    
                    sh 'mvn test'
                }
            }
        }
        stage('Integration testing'){
               when {
             expression { params.choices == 'create\ndelete' }
        }
            steps{
                
                script{
                    
                    sh 'mvn verify -DskipUnitTests'
                }
            }
        }
        stage('Maven build'){
                when {
             expression { params.choices == 'create' }
        }
            
            steps{
                
                script{
                    
                    sh 'mvn clean install'
                }
            }
        }
        
    }        
}  
