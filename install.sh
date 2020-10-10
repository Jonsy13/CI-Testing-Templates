#!/bin/bash
set -e
path=$(pwd)

echo "Setting Cluster details"
mkdir $path/.kube
cat ~/.kube/config > $path/.kube/config
cat ~/.kube/config > $path/.kube/admin.conf

kubectl get nodes