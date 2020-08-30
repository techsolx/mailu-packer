#!/bin/sh

set -e

echo 'Cleaning up...'
sudo apt-get -y autoremove
sudo apt-get -y clean
sudo rm -rf /tmp/*
exit
