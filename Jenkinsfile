@Library(arun) _
pipeline{
    agent any 
 parameters {
choice( choices: 'create\ndelete' , description: 'name of the student', name: 'maven' )
 }  
 stages {  
        stage('Git Checkout'){
            steps{
                script{
                    gitchckout(
                        branch: "main",
                        url: "https://github.com/boorlaarun/demo-counter-app.git"                      
                    )
                    
                }
            }
        }
 }
}
    
