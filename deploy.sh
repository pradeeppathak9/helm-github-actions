#!/bin/bash

# export KUBECONFIG='${{ secrets.KUBECONFIG }}'
echo $KUBECONFIG

for filename in ./all-values/*.yaml; do
    helm install --generate-name ./charts/random-app-chart/ -f $filename 
done