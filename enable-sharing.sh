#!/bin/sh
mkdir /home/$1/shared
sudo mount -t vboxsf shared /home/$1/shared
echo '' >> /etc/fstab
echo -e 'shared\t/home/'$1'/shared\tvboxsf\tdefaults\t0\t0' >> /etc/fstab
echo '' >> /etc/modules
echo 'vboxsf' >> /etc/modules