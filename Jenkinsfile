pipeline {
  agent { label 'JenAgent' }
  tools {
    jdk 'Java17'
    maven 'Maven3'
         }
  stages {
     stage("Cleanup Workspace"){
       steps {
         cleanWs()
              }
        }
     stage("Checkout from SCM"){
       steps {
         git branch: 'main', credentialsId: 'devopsgithub', url: 'https://github.com/Shivproutist/register-app'
       }
     }
     stage("Build Application"){
       steps {
         sh "mvn clean package"
       }
      }
     stage("Test Application"){
        steps {
           sh "mvn test"     
        }
      }
     stage("SonarQube Analysis"){
       steps {
         script {
           withSonarQubeEnv(credentialsId: 'jenkins-sonarqube'){
             sh "mvn sonar:sonar"
           }
         }
       }
     }
    }  
  }
