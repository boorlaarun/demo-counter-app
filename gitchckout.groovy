def call ( Map stageParmas ){

gitcheckout[(
  branches: [[ name: stageParmas.barnch]],
  userRemoteConfigs: [[ url: stageParmas.url  ]]
  
)]
}
