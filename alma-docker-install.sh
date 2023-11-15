#! /bin/bash

echo "Updating Packages."
dnf --refresh update -y
sleep 1
echo "Installing Needed Tools."
sleep 1
dnf install yum-utils -y
sleep 1

echo "Adding Docker Repos"
sleep 1
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sleep 1

echo "Installing Docker."
sleep 1
dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sleep 1

echo "Starting Docker Daemon."
sleep 1
systemctl enable docker
sleep 1
systemctl start docker
sleep 1
docker version
sleep 1
docker run hello-world --name hello-world
sleep 1
docker rm hello-world
sleep 5

echo "Installation of Docker complete."
