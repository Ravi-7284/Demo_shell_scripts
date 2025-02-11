#!/bin/bash

echo "====== User creation started ======="

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "======= User $1 created ==========="
