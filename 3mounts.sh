#!/bin/bash

mount /dev/md0 -o relatime,logbsize=256k,logbufs=8,largeio,inode64,swalloc,nobarrier /dev/md0 /mnt 
mount /dev/nvme2n1p1 /mnt/boot
swapon /dev/nvme2n1p2


#To improve throughput for sequential reads, increase the maximum amount of read-ahead data. The actual amount of read-ahead is adaptive, so using a high value here won't harm performance for small random access.
#echo 4096 > /sys/block/sdX/queue/read_ahead_kb