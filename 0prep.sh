#!/bin/bash
#run once, no looping
pacman --noconfirm -Sy archlinux-keyring git

ls /sys/firmware/efi/efivars
ping -c 3 1.1.1.1
timedatectl status

##Partitioning drives
##Drive
##"Which devices to format as raid devices?"
##"Which device to use as swap?"
##"Which device to format/create EFI?"

