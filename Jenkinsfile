@Library ('jenkin-Libraries')_
pipeline{
    agent any 

    stages {  
        stage('Git Checkout'){
            steps{
                script{
                    gitCheckout(
                        branch: "main",
                        url: "https://github.com/boorlaarun/demo-counter-app.git"                      
                    )
                    
                }
            }
        }
 }
}
    
