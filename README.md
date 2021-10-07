# kube-rollout
excercise to rollout updates

## Instruction

### on docker host
1. build.sh to build all images and push to docker hub
2. run.sh (optional) to check if images are working correctly
### on kubernetes host
3. deploy-rollout.sh
### excercises
```curl rollout.kube.ac```
kubectl -n rollout set image deployment/rollout-deployment rollout=toleksa/kube-rollout:v2
curl rollout.kube.ac
kubectl -n rollout rollout history deployment/rollout-deployment
kubectl -n rollout rollout undo deployment/rollout-deployment --to-revision=1
curl rollout.kube.ac
kubectl delete namespace rollout

