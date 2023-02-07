#!/bin/bash

pacstrap /mnt base linux linux-firmware sof-firmware textinfo xorg xorg-apps git e2fsprogs ntfs-3g btrfs-progs xfsprogs xfsdump lvm2 mdadm nvidia nvidia-settings vim neovim rustup alacritty firefox rsync rclone nfs-utils networkmanager modemmanager cmake gcc bluez zip tar base-devel pacman-contrib snapper sudo wezterm zutty chromium

genfstab -U /mnt >> /mnt/etc/fstab

mdadm --misc --detail /dev/md0 >> /mnt/etc/mdadm.conf
