#!/bin/bash

apt install apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" >> ~/kubernetes.list
sudo mv ~/kubernetes.list /etc/apt/sources.list.d

apt update

sudo apt install kubeadm=1.19* kubelet=1.19* kubectl=1.19*

apt-mark hold kubelet kubeadm kubectl
