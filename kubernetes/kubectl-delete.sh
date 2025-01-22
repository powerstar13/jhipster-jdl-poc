#!/bin/bash

logSummary() {
    echo ""
    echo "#####################################################"
    echo "All Kubernetes resources have been deleted."
    echo "#####################################################"
}

default() {
    suffix=k8s
    kubectl delete -f secondmicroservice-${suffix}/
    kubectl delete -f firstmicroservice-${suffix}/
    kubectl delete -f gateway-${suffix}/
    kubectl delete -f registry-${suffix}/
    kubectl delete -f keycloak-${suffix}/
    kubectl delete -f namespace.yml
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
