#!/bin/bash

<<help 

This is a shell script 
to create user

help

echo "=============== Creation of user started ==================="

read -p "enter the username: " username

read -p "enter the password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "============== Creation of user completed =================="

sudo userdel $username

echo "============= User $username delete ====================="

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "as wc is 0 the user is deleted"
else
	echo "the user was not deteled"
fi




















