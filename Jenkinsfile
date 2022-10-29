node {
    def app
    

    stage('Clone repository...') {
        
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [[$class: 'CleanBeforeCheckout', deleteUntrackedNestedRepositories: true]], userRemoteConfigs: [[url: 'https://github.com/KantTurnsInHisGrave/DFEFinal-project-version-2.git']]])
        
    }
    
        stage('Clean up') {
        
        sh "bash cleanup.sh"
        
    }

    
    stage('Setup docker') {

         sh "bash setup.sh"
    }

    stage('Build image') {
        
         sh "bash build.sh"
    }  

    stage('Run container') {
        
        sh "bash run.sh"
        
    }
  

    
}

