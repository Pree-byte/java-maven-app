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
                              echo "Hello World"
                              echo "Hii everyone"
                              echo "Hello Mf"
                              echo "Now starting maven build"
                              echo "Building the application"
                              sh 'mvn package'
                        }
                  }
            }
                   
        }       
}
