#!/bin/bash

set -euo pipefail

kubectl create namespace rollout
kubectl -n rollout apply -f rollout-deployment.yaml

echo ""
echo "execute: "
echo "curl rollout.kube.ac"
echo "kubectl -n rollout set image deployment/rollout-deployment rollout=toleksa/kube-rollout:v2"
echo "curl rollout.kube.ac"
echo "kubectl -n rollout rollout history deployment/rollout-deployment"
echo "kubectl -n rollout rollout undo deployment/rollout-deployment --to-revision=1"
echo "curl rollout.kube.ac"
echo "kubectl delete namespace rollout"
echo ""
