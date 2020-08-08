node {
    checkout scm
    
    sh 'printenv | sort'
    
    echo "${env.SHELL}"
    
    def customImage = docker.build("my-nginx:${env.BUILD_ID}")

    docker.image("my-nginx:${env.BUILD_ID}").inside {
        sh 'ls -lha'
    }
}
