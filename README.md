# kube-rollout
excercise to rollout updates

## Instruction

### on docker host
1. build.sh to build all images and push to docker hub
2. run.sh (optional) to check if images are working correctly
### on kubernetes host
3. deploy-rollout.sh
4. ***add rollout.kube.ac to /etc/hosts***

### excercises:

```curl rollout.kube.ac``` check answer from website

```kubectl -n rollout set image deployment/rollout-deployment rollout=toleksa/kube-rollout:v2``` request rollout of version 2

```curl rollout.kube.ac``` should be new answer (after couple seconds)

```kubectl -n rollout rollout history deployment/rollout-deployment``` check history of rollouts

```kubectl -n rollout rollout undo deployment/rollout-deployment --to-revision=1``` revert to previous version

```curl rollout.kube.ac``` should be old answer (after couple seconds)

```kubectl delete namespace rollout``` cleanup afterwards

