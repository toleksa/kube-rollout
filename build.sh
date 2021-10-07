#!/bin/bash

for N in `seq 1 5`
do
    echo $N > index.html
    docker build -t docker.io/toleksa/kube-rollout:v${N} .
    docker push docker.io/toleksa/kube-rollout:v${N}
done

