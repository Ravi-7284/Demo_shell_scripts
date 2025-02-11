#!/bin/bash

# User defined variable
hero="rancho"
villain="virus"

echo "3 idiots ka helo hai $hero"

echo "3 idiots ka villain hai $villain"


# Shell / Environment variable

echo "cure=rent logged in user $USER"

# User inputs

read -p "What is full name of Rancho : " fullname

echo "Rancho's full name is $fullname hai"

# Arguments

# ./3_idiots.sh raju farhan rancho

echo "Movie name is $0"

echo "idiot 1 is $1"

echo "idiot 2 is $2"

echo "idiot 3 is $3"

echo "The total number of idiots : $#"

echo "Hence the 3 idiots are $@"






