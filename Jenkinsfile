node {
    checkout scm
    
    sh 'printenv | sort'
    
    echo "Current user id is ${env.BUILD_ID} (type: ${env.USER_ID.class}"
    
    echo "${env.SHELL}"
    
    echo "${env.USER_NAME}"
    sh '$USER_ID'
    
    def customImage = docker.build("my-nginx:${env.BUILD_ID}")

    docker.image("my-nginx:${env.BUILD_ID}").inside {
        sh 'ls -lha'
    }
}
