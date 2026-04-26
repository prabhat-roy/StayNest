pipeline {
    agent { kubernetes { yamlFile 'ci/jenkins/agent-pod.yaml' } }
    parameters {
        choice(name: 'CLOUD',   choices: ['aws','gcp','azure'], description: 'Target cloud')
        choice(name: 'ENV',     choices: ['dev','staging','prod'])
        string(name: 'SERVICE', defaultValue: 'all')
        string(name: 'VERSION', defaultValue: 'latest')
        // Night audit + rate publishing must use blue-green; canary acceptable elsewhere
        choice(name: 'STRATEGY', choices: ['canary','blue-green'])
    }
    options { timeout(time: 30, unit: 'MINUTES') }
    stages {
        stage('Configure kubeconfig') {
            steps {
                script {
                    if (params.CLOUD == 'aws') {
                        sh 'aws eks update-kubeconfig --name staynest-${ENV} --region us-east-1'
                    } else if (params.CLOUD == 'gcp') {
                        sh 'gcloud container clusters get-credentials staynest-${ENV} --region europe-west4 --project staynest-${ENV}'
                    } else {
                        sh 'az aks get-credentials --resource-group staynest-${ENV} --name staynest-${ENV}'
                    }
                }
            }
        }
        stage('Helm upgrade') {
            steps {
                sh '''#!/usr/bin/env bash
                set -euo pipefail
                CHART_DIRS=$([ "$SERVICE" = "all" ] && find helm/charts -mindepth 1 -maxdepth 1 -type d || echo "helm/charts/$SERVICE")
                for chart in $CHART_DIRS; do
                    name=$(basename "$chart")
                    echo "::: deploying $name to $CLOUD/$ENV using $STRATEGY"
                    helm upgrade --install "$name" "$chart" \
                        --namespace staynest \
                        --create-namespace \
                        -f "$chart/values.yaml" \
                        -f "$chart/values-${CLOUD}.yaml" \
                        --set image.tag=${VERSION}
                done
                '''
            }
        }
        stage('Verify') {
            steps {
                sh 'kubectl get pods -n staynest'
                sh 'make k8s-validate'
            }
        }
    }
}
