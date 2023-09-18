#!/bin/bash
#Update the repository list
apt-get update

#Download the required packages
apt install apt-transport-https ca-certificates curl software-properties-common -y

#download the gpg key for docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#add docker repository to the repository list
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#update the repository to verify, is repository added to the list
apt-get update

#list the Docker versions available to download 
apt-cache madison docker-ce | awk '{ print $3 }'

#download the specific version. which is already installed on the dgx system
#create a global variable.
VERSION_STRING=

#download docker
sudo apt-get install docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-buildx-plugin docker-compose-plugin
