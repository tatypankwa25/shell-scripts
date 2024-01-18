#!/bin/bash
###################################
# Author: Claude
# Date: Jan 15, 2024
##################################
###Helloooooooooooooooooooooooooooooooooooooooooooooooooooo
###yessssssssssssssssssssssssssssssssssssssssssssssssssssssss
###Great engineers to be
# It will end in praise, Amen
set -x

# create deployment directory
mkdir deployment

# change directory
cd deployment

# create a file called sam.txt
touch sam.txt

# give full access to owner
sudo chmod 744 sam.txt

# create a user sam
sudo useradd sam

# change ownernership of file
sudo chown sam:sam sam.txt

# create app directory
#mkdir /home/ubuntu/app

cd .. && mkdir app

# copy file to app
cp --preserve=sam:sam deployment/sam.txt app
