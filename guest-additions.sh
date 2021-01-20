#!/bin/sh
sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r)
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11
echo Please reboot the VM && read -n 1 -s -r -p "[Press any key to continue]"
