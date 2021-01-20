#!/bin/sh
mkdir ~/shared
sudo mount -t vboxsf shared ~/shared
echo '' >> /etc/fstab
echo -e 'shared\t~/shared\tvboxsf\tdefaults\t0\t0' >> /etc/fstab
echo '' >> /etc/modules
echo 'vboxsf' >> /etc/modules