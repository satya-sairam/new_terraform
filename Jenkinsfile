pipeline{
    agent any
      stages{
        stage('terraform init'){
        steps{
         sh '''
          cd components;
          terraform init;

         '''
        }
          stage('terraform apply'){
                steps{
                 sh '''

                  terraform apply -auto-approve;
                   env
                 '''
                }
}
}
}
