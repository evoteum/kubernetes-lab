# Building the Cluster

## Make it Work
To build the cluster from nothing,
1. Install Ubuntu server on a computer, setting the credentials to
    - Username: ubuntu
    - password: bootstrap
1. Connect all hosts to the kubernetes-lab VLAN
1. run cluster_build.sh

*Tinkerbell will destroy this host so these credentials will not be available for long.

## How it works

The [cluster_build](cluster_build.sh) script does the following to get the cluster up and running.

1. Ansible installs Kubernetes on your computer
2. The cluster