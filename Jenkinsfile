node {
    checkout scm
    
    sh 'printenv | sort'
    
    println ("${env.SHELL}")
    
    def customImage = docker.build("my-nginx:${env.BUILD_ID}")

    docker.image("my-nginx:${env.BUILD_ID}").inside {
        sh 'ls -lha'
    }
}
