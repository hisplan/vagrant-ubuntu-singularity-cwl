#!/bin/bash

sudo apt-get update   
sudo apt-get -y install build-essential curl git sudo man vim autoconf automake libtool debootstrap

# install pip
sudo apt-get -y install python-pip
pip install --upgrade pip

# install cwl
pip install cwlref-runner

# install sigularity
git clone https://github.com/gmkurtzer/singularity.git
cd singularity
./autogen.sh
./configure --prefix=/usr/local
make
sudo make install

