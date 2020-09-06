#!/bin/bash
URL=https://raw.githubusercontent.com/portainer/k8s/master/deploy/manifests/portainer/portainer.yaml

sudo k3s kubectl create namespace portainer
sudo k3s kubectl apply -n portainer -f $URL
