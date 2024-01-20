def call ( Map stageParams ){

checkout([$class: 'GitSCM', branches: 'main', userRemoteConfigs: [[url: 'https://github.com/boorlaarun/demo-counter-app.git']]])
}
