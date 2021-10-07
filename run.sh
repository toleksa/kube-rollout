#!/bin/bash

docker stop kube-rollout
docker rm kube-rollout

docker run -d -p 9001:80 --name kube-rollout kube-rollout:v${1:-1}

