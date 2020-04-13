#!/bin/sh

sudo -v &> /dev/null

apt-get update
apt upgrade

apt-get install -y python-pip

./install-docker.sh
./install-oh-my-zsh.sh
./install-software.sh
