#!/bin/sh
mkdir /home/$1/shared
sudo mount -t vboxsf shared /home/$1/shared
