## TODO
[x] Create IAM credentials for EKS service
[x] Create VPCs for EKS cluster
  [x] Record the created securiyGroups, VpcIds, SubnetIds
[x] Ensure you activate STS on us-west-2
[x] Ensure kubectl is configured to use aws authentication

## Timeframes:
- creating a new EKS cluster takes < 10 minutes
-

### command reference:

`aws eks describe-cluster --name experiment-eks  --query cluster.endpoint`
`aws eks describe-cluster --name experiment-eks --query cluster.certificateAuthority.data`
`export KUBECONFIG=$KUBECONFIG:~/.kube/config-experiment-eks`


### Notes:
- currently only supported in us-east-1 and us-west-2
- setting up to k8s toolset to work with AWS is annoying
