## TODO
[x] Create IAM credentials for EKS service
[x] Create VPCs for EKS cluster
  [x] Record the created securiyGroups, VpcIds, SubnetIds
[x] Ensure you activate STS on us-west-2
[x] Ensure kubectl is configured to use aws authentication
[x] Create an EC2 keypair to allow ssh access to nodes
[x] Deploy compute layer
[x] Apply aws config map to master nodes
[x] Deploy k8s resources
[-] Cleanup k8s resources
[-] Suspend EC2 instances


## Timeframes:
- creating a new EKS cluster takes < 10 minutes
- create compute layer and network layer infastructure < 5 mins

### command reference:

`aws eks describe-cluster --name experiment-eks  --query cluster.endpoint`
`aws eks describe-cluster --name experiment-eks --query cluster.certificateAuthority.data`
`export KUBECONFIG=$KUBECONFIG:~/.kube/config-experiment-eks`


### Notes:
- currently only supported in us-east-1 and us-west-2
- setting up to k8s toolset to work with AWS is annoying
- getting worker nodes communicating with control plane isn't trivial
- really simple pricing model:
  - $0.20 per hour per cluster + EC2 costs
    - no limits on master node replicas
    - no limits on works nodes
- static definition of max pods per node?
- AWS provides an EKS optimised AMI (us-west-2: ami-73a6e20b)
- where does AWS fargate fit into the picture?
  - managing the compute and network layers
- whats there in terms of monitoring your stack?
  - not much by aws, heaps by k8s

- some of the cool things you can do inside a k8 cluster:
  - deploy DNS pods to have per cluster domain name resolution
  - deploy services to load balance across pods
  - project calico
