node {
    checkout scm
    
    sh 'printenv | sort'
    
    environment {
        USER_NAME = "Tomas"
        USER_ID = 33
    }
    
    echo "${env.SHELL}"
    
    sh '$USER_NAME'
    sh '$USER_ID'
    
    def customImage = docker.build("my-nginx:${env.BUILD_ID}")

    docker.image("my-nginx:${env.BUILD_ID}").inside {
        sh 'ls -lha'
    }
}
