node {
    def app
    
    stage('Cleanup') {
        
        sh "cleanup.sh" 
        
    }
    

    stage('Clone repository') {
        
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [[$class: 'CleanBeforeCheckout', deleteUntrackedNestedRepositories: true]], userRemoteConfigs: [[url: 'https://github.com/KantTurnsInHisGrave/DFEFinal-project-version-2.git']]])
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
