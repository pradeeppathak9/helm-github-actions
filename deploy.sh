#!/bin/bash

export KUBECONFIG='${{ secrets.KUBECONFIG }}'

for filename in ./all-values/*.yaml; do
    helm template --generate-name ./charts/random-app-chart/ -f $filename 
done