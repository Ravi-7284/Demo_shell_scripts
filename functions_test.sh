#!/bin/bash

<<info
This is an explanation of functions
info

function create_user {

read -p "enter username : " username
#sudo useradd -m $username

echo "User created"
}

for (( i=1 ; i<=5 ; i++ ))
do
	create_user
done
