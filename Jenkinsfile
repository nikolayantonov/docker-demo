node {
    stage 'Clone repository'
    checkout([
        $class: 'GitSCM',
        branches: [
            [name: '*/master']
        ],
        doGenerateSubmoduleConfigurations: false,
        extensions: [],
        submoduleCfg: [],
        userRemoteConfigs: [
            [url: 'https://github.com/nikolayantonov/docker-demo']
        ]
    ])

    stage 'Build & package'
    def img = docker.build('niko-assessment-ecr')

    stage 'Docker push'
    docker.withRegistry('https://473293451041.dkr.ecr.eu-central-1.amazonaws.com/niko-assessment-ecr', 'ecr:eu-central-1:niko-assessment-ecr') {
      docker.image('niko-assessment-ecr').push('latest')
    }
}
