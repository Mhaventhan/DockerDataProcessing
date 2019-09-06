#!/bin/bash
# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# Install Docker
sudo apt-get install docker.io -y

#Install docker compose
sudo apt-get install docker-compose -y
# Check docker is running

# adding user to the docker group
sudo gpasswd -a vagrant docker
