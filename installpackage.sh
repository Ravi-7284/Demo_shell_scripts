#!/bin/bash

<<info
This script will install the package 
that you pass in the arguments

eg. ./installpackahe.sh nginx
./installpackage.sh docker.sh

info

echo "Installing $1"

sudo apt-get update > /dev/null

sudo apt-get install $1 -y > /dev/null

echo "Installation completed"






