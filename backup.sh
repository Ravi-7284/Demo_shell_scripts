#!/bin/bash

<<info
This shell script will take periodic backups

eg. 
./backup.sh <source> <destination>
src /home/ubuntu/script
dest /home/ubuntu/backup1

info

src=$1
dest=$2

timestamp=$(date +%Y-%m-%d-%H-%M-%S)

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://tws-backups-9

if [ $? == 0 ];
then
	echo "Backup completed and uploaded to s3..."
else
	echo "Backup failed..."
fi


