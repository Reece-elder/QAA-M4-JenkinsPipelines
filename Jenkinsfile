// Controls the entire pipeline, is the parent object
pipeline {
    // For the time being agent is just what node is doing this job
    agent any 
    // What you want your build to do
    stages {
        // What is this individual stage doing (Build, test)
        stage('First stage'){
            // What are the exact things this stage is doing
            steps {
                // sh stands for shell, use shell to do echo Helloworld
                sh 'echo "Hello World"'
            }
        }
        stage('Second stage'){
            steps{
                sh 'pwd'
                sh 'cd scriptDir'
                sh 'chmod +x coolScript.sh'
                sh './coolScript.sh'
            }
        }
    }
}