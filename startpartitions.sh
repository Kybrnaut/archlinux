#!/bin/bash
#run once, no looping
pacman -y -Syu archlinux-keyring
modprobe dm-mod
modprobe raid0
modprobe raid1

ls /sys/firmware/efi/efivars
ping -c 3 1.1.1.1
ping -c 3 https://www.cloudflare.com
timedatectl status
##Partitioning drives
##Drive
##"Which devices to format as raid devices?"
##"Which device to use as swap?"
##"Which device to format/create EFI?"


wipefs -fa /dev/nvme0n1;parted /dev/nvme0n1 mklabel gpt;parted /dev/nvme0n1 mkpart '"raid"' 1MiB 100%;parted /dev/nvme0n1 set 1 raid on;parted /dev/nvme0n1 align-check optimal 1;gdisk -l /dev/nvme0n1; mdadm --misc --zero-superblock /dev/nvme0n1;mdadm --misc --zero-superblock /dev/nvme0n1p1

#wipefs -fa /dev/nvme1n1;parted /dev/nvme1n1 mklabel gpt;parted /dev/nvme1n1 mkpart '"raid"' 1MiB 100%;parted /dev/nvme1n1 set 1 raid on;parted /dev/nvme1n1 align-check optimal 1;gdisk -l /dev/nvme1n1; mdadm --misc --zero-superblock /dev/nvme1n1;mdadm --misc --zero-superblock /dev/nvme1n1p1

#wipefs -fa /dev/nvme4n1;parted /dev/nvme4n1 mklabel gpt;parted /dev/nvme4n1 mkpart '"raid"' 1MiB 100%;parted /dev/nvme4n1 set 1 raid on;parted /dev/nvme4n1 align-check optimal 1;gdisk -l /dev/nvme4n1; mdadm --misc --zero-superblock /dev/nvme4n1;mdadm --misc --zero-superblock /dev/nvme4n1p1

