#!/bin/bash

echo "building app..."

cd /home/jenkins/.jenkins/workspace/DFE_Final_Project_Pipelinev2

sudo chown "$USER":"$USER" /var/run/docker.sock -R
sudo chmod g+rwx "/var/run/docker.sock" -R

docker build -t myapp .
