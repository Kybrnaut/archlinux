#!/bin/bash

pacstrap /mnt base linux linux-firmware sof-firmware textinfo xorg xorg-apps git e2fsprogs ntfs-3g btrfs-progs xfsprogs xfsinfo xfsdump xfsrepair lvm2 mdadm nvidia nvidia-settings vim neovim alacritty firefox rsync rclone nfs-utils networkmanager modemmanager bluez zip tar base-devel pacman-contrib timeshift sudo wezterm zutty chromium

genfstab -U /mnt >> /mnt/etc/fstab

mdadm --misc --detail /dev/md0 >> /mnt/etc/mdadm.conf
