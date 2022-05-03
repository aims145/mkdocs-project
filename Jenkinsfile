pipeline {
     agent {label 'slave'}

    stages{

        stage("SCM Checkout"){
            steps{
                script{

                  def scm = checkout([$class: 'GitSCM', 
			      branches: [[name: "main"]], 
			      doGenerateSubmoduleConfigurations: false, 
			      extensions: [], 
			      submoduleCfg: [], 
			      userRemoteConfigs: [[url: 'https://github.com/aims145/mkdocs-project.git']]])
			      }
                
                
            }
        }
        stage('Build War'){
            steps{
            sh 'echo building'               
            }

        }
        stage('Test') {
		   steps{
			sh 'echo testing'
	        }
        }
        
    }
    post {
    failure {
         emailext attachLog: true, body: '$DEFAULT_CONTENT', subject: '$PROJECT_NAME - Build # $BUILD_DISPLAY_NAME - $BUILD_STATUS!', to: 'aims145@gmail.com'
    }
    success {
         emailext attachLog: true, body: '$DEFAULT_CONTENT', subject: '$PROJECT_NAME - Build # $BUILD_DISPLAY_NAME - $BUILD_STATUS!', to: 'aims145@gmail.com'   
     }
    }
}