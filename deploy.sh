#!/bin/bash

export KUBECONFIG='${{ secrets.KUBECONFIG }}'
helm init --kube-context CONTEXT_NAME --upgrade

for filename in ./all-values/*.yaml; do
    echo $filename
    helm install --generate-name ./charts/random-app-chart/ -f $filename 
done