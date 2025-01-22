#!/bin/bash

logSummary() {
    echo ""
    echo "#####################################################"
    echo "All Kubernetes resources have been deleted."
    echo "#####################################################"
}

default() {
    suffix=k8s
    kubectl apply -f secondmicroservice-${suffix}/
    kubectl apply -f firstmicroservice-${suffix}/
    kubectl apply -f gateway-${suffix}/
    kubectl apply -f registry-${suffix}/
    kubectl apply -f keycloak-${suffix}/
    kubectl apply -f namespace.yml
}

kustomize() {
    kubectl delete -k ./
}

if [ "$1" == "-k" ]; then
    kustomize
else
    default
fi

logSummary
