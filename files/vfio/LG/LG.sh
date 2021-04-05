#!/usr/bin/sh
cd "${0%/*}"
#DISPLAY=:1 LIBVIRT_DEFAULT_URI='qemu:///system' 
nohup virsh start Baseline  &
wait
nohup /usr/local/bin/looking-glass-client   win:minimizeOnFocusLoss=false -a -d  &
#input:autoCapture=true
exec sleep 1