# QAA-M4-JenkinsPipelines

Pipelines, are ways of combinining and organising the steps of our build and give us more control
They are the equiv of Docker Compose to Docker 

Jenkins reads data from a Jenkinsfile which is written in 'groovy' (Subset of Java)
All of our build commands are controlled within this Jenkinsfile

Pipelines allow us to easily and quickly see a visual representation of our build, as we can see how far along the pipe it went before crashing / succeeding 

`touch Jenkinsfile`
