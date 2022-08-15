pipeline
{

      agent any
      tools {
            maven 'maven-3.8.6'
      }
      stages{
            stage("build-jar"){
                  steps{
                        script {
                              echo "Building the application"
                              sh 'mvn package'
                        }
                  }
            }
                   
            stage("building-docker_img"){
                  steps{
                        script {
                              echo "Building the docker-image"
                              withCredentials([usernamePassword(credentialsId:'docker-hub-credentials' , passwordVariable: 'Hempreet@123' , usernameVariable:'preet007')]){
                                          sh 'docker build -t preet007/myfreerepo:jma-2.0 .'
                                          sh "echo $PASS | docker login -u preet007 --password-stdin"
                                          sh 'docker push preet007/myfreerepo:jma-2.0'
                                           }
                              }
                        }
            }
        }       
}
