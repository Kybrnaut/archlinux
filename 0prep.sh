#!/bin/bash
#run once, no looping
ls /sys/firmware/efi/efivars
ping -c 3 1.1.1.1
timedatectl status

LVM Logical Volumes 	/lvroot 	/lvvar /lvhome /efi /swap(s)
LVM Volume Groups 	/dev/VolGroupArray
RAID Arrays 	/dev/md7 	/dev/md8
Physical Partitions 	/dev/nvme0n1p1 	/dev/nvme1n1p1 	/dev/nvme2n1p1 	/dev/nvme3n1p1
Hard Drives 	/dev/nvme0n1 	/dev/nvme1n1	/dev/nvme2n1

##Steps,
##0Prep: check efi ping, set keyboard, stop/remove active unwanted lvm and raid configs
##1Driveparts: Create new GPT table & partiton per drive, wipefs device & partiton,check alignment, assign as RAID device
##2RaidArray: create the raid array, #mdadm -C --verbose --level=0 --name=md7 --chunk=64 --homehost=any --raid-devices=X /dev/md7 /dev/nvme[0-2]n1p1
##verify mdadm --misc -detail cat /proc/mdstat
##3LVM 
##4mk.fs
##"Which devices to format as raid devices?"
##"Which device to use as swap?"
##"Which device to format/create EFI?"

