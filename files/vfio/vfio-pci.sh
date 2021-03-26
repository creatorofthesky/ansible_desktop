#!/bin/sh
# /etc/initramfs-tools/scripts/init-top
# chmod 755 /etc/initramfs-tools/scripts/init-top/bind_vfio.sh
# chown root:root /etc/initramfs-tools/scripts/init-top/bind_vfio.sh
# update-initramfs -u 
PREREQS=""
DEVS="0000:0c:00.0 0000:0c:00.1"
for DEV in $DEVS;
  do echo "vfio-pci" > /sys/bus/pci/devices/$DEV/driver_override
done

modprobe -i vfio-pci