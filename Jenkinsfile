pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
      //  stage('gitclone') {
         //   steps {
           //   script{
          //      checkout([
            //                $class: 'GitSCM', 
               //             branches: [[name: '*/master']], 
                 //           doGenerateSubmoduleConfigurations: false, 
                    //        extensions: [[$class: 'CleanCheckout']], 
                      //      submoduleCfg: [], 
                         //   userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/Virgil47/cicd-buzz.git']]
                //   ])
               // }
           // }
      //  }
        stage('build') {
            steps {
                 script {
                    sh "sudo docker build -f Dockerfile -t virgil47/testrepo:latest ."
                }
            }
        }
        stage('push') {
            steps {
                script {
                    sh "sudo docker push virgil47/testrepo:latest"
                }
            }
        }
        stage('stop') {
            steps {
                script {
                    sh "sudo docker stop testrepo || true && sudo docker rm testrepo || true"
                }
            }
        }
        stage('run') {
            steps {
                script {
                    sh "sudo docker run --name testrepo -p 8081:5000 --rm -d virgil47/testrepo:latest"
                }
            }
        }
    }
}
