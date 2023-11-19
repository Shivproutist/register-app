pipeline {
  agent { label 'JenAgent' }
  tools {
    jdk 'Java17'
    maven 'Maven'
  }
  stages {
     stage("Cleanup Workspace"){
       steps{
         cleanWs()
       }
     stage("Checkout from SCM"){
       steps {
         git branch: 'main', credentialsId: 'devopsgithub', url: 'https://github.com/Shivproutist/register-app'
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
    }  
  }

  }
}