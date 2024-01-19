def call ( Map stageParmas ){

checkout([$class: 'GitSCM', branches: [[name: 'stageParams.branch']], userRemoteConfigs: [[url: 'stageParmas.url']]])
}
