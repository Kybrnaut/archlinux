#!/bin/bash

mdadm --create --verbose /dev/md0 --chunk=128 --level=0 --raid-devices=3 --name=md0 --homehost=any /dev/nvme0n1p1 /dev/nvme1n1p1 /dev/nvme4n1p1
mdadm --detail /dev/md0

#Good2Go-a?
#mkfs.xfs -L xfs0 -d su=128,sw=3 -m rmapbt=1 /dev/md0
#mdadm --detail --scan >> /etc/mdadm.conf

