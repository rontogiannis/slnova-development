#!/bin/sh
mkdir /home/$1/shared
sudo mount -t vboxsf shared /home/$1/shared
echo -e 'shared\t/home/'$1'/shared\tvboxsf\tdefaults\t0\t0' | sudo tee -a /etc/fstab
echo 'vboxsf' | sudo tee -a /etc/modules
