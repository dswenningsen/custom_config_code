#!/usr/bin/bash

baseDir="/data/userhome/$1"
echo $baseDir
sudo adduser --home "/data/userhome/$1" --shell "/usr/bin/bash" $1
mkdir $baseDir/.ssh
chmod 700 $baseDir/.ssh
touch $baseDir/.ssh/authorized_keys
chmod 600 $baseDir/.ssh/authorized_keys
ssh-keygen -t rsa -b 4096 -C "$baseDir" -f $baseDir/.ssh/id_rsa
cat $baseDir/.ssh/id_rsa.pub >> $baseDir/.ssh/authorized_keys
chown -R $1:$1 $baseDir

