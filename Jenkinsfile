pipeline{
    agent any
        stages{
            stage('shipping checkout'){
                steps{
                   sh'''
                      cd shipping
                      mvn clean package
                   '''
                }
            }
            stage('echo hello'){
                 steps{
                     sh'''
                       ls
                       mv target/*.jar shipping.jar
                       echo hello world
                               '''
                     }
                 }



        }
}