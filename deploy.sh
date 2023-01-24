#!/bin/bash
for filename in ./all-values/*.yaml; do
    echo $filename
    helm install --generate-name ./charts/random-app-chart/ -f $filename 
done