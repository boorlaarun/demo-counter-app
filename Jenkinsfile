@Library('arun') _
pipeline{
    agent any 

 stages {  
        stage('Git Checkout'){
            steps{
                script{
                    gitcheckout(
                        branch: "main",
                        url: "https://github.com/boorlaarun/demo-counter-app.git"                      
                    )
                    
                }
            }
        }
 }
}
    
