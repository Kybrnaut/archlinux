#!/bin/bash

arch-chroot /mnt

mkdir /etc/pacman.d/hooks/

pacman --noconfirm -Syu grub efibootmgr lshw amd-ucode nano ranger plasma neofetch piper borgbackup restic kde-applications snapper-gui cockpit cockpit-machines cockpit-packagekit cockpit-pcp cockpit-podman cockpit-storaged

echo "archlinuxfs" >> /etc/hostname
systemctl enable sddm
systemctl enable --now cockpit.socket
systemctl enable --now NetworkManager

adduser -m xyz
moduser -aG wheel xyz
passwd xyz