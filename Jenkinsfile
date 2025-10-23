pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Build Docker Image"
                // This command builds the docker image
                bat "docker build -t mypythonflaskapp ." [cite: 232]
            }
        }
        stage('Run') {
            steps {
                echo "Run application in Docker Container"
                // This command forcibly removes any old container with the same name
                bat "docker rm -f mycontainer || exit 0" [cite: 240]
                // This command runs the new container in detached mode
                bat "docker run -d -p 5000:5000 --name mycontainer mypythonflaskapp" [cite: 244-245]
            }
        }
    }
    post {
        // These sections run after all stages
        success {
            echo 'Pipeline completed successfully!' [cite: 258]
        }
        failure {
            echo 'Pipeline failed. Please check the logs.' [cite: 260]
        }
    }
}