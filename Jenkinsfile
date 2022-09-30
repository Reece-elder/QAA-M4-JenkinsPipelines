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
                sh 'mkdir newDir'
            }
        }
        stage('Second stage'){
            steps{
                sh 'pwd'
                sh 'ls'
                sh 'chmod +x scriptDir/coolScript.sh'
                sh './scriptDir/coolScript.sh'
            }
        }
        stage('Build'){
            steps{
                sh 'touch file.txt'
                // Could ask you for password, Jenkins doesnt have explicit right to use sudo
                // Jenkins can't explicitly do docker commands as it does not have sudo access or added to docker group 
                // sh 'sudo file.txt' 
                // `sudo vi /etc/sudoers` - in command line
                // `jenkins ALL=(ALL) NOPASSWD: ALL` goes at the bottom of the file
                // To escape visudo / vi use :qa!
                sh 'docker run -d -p 80:80 --name nginxJenkins nginx'
                sh 'curl localhost:80'

            }
        }
    }
    post {
        // Clean after build
        always {
            cleanWs()
        }
    }
}
