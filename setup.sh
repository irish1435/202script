#!/bin/bash

#install docker
#https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get -y update 
sudo apt-get install -y docker-ce
sudo apt-get -y upgrade
sudo apt autoremove -y

sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "/home/$USER/.docker" -R
sudo usermod -a -G docker irish1435
sudo docker pull hhc106/ce202-docker:news6
#sudo docker run hhc106/ce202-docker:news5

git clone https://github.com/irish1435/cmpe202-newspaper-proj
mkdir ogdata
mkdir nmdata
mkdir nmplot

#git clone https://github.com/irish1435/cmpe202-newspaper-proj
