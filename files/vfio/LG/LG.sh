#!/usr/bin/sh
cd "${0%/*}"
#DISPLAY=:1 LIBVIRT_DEFAULT_URI='qemu:///system' 
nohup virsh start Baseline  &
wait
nohup /usr/local/bin/looking-glass-client  input:autoCapture=true win:minimizeOnFocusLoss=false -a -d  &
exec sleep 1