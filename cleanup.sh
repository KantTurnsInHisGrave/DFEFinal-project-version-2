#!/bin/bash

cd /home/jenkins/.jenkins/workspace/DFE_Final_Project_Pipelinev2

sudo docker ps -q --filter "name=myapp" | sudo grep -q; sudo docker stop myapp; sudo docker rm myapp; sudo docker rmi myapp
