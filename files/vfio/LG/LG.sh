#!/bin/bash
LIBVIRT_DEFAULT_URI='qemu:///system' 
/usr/bin/virsh start Baseline 
wait
/usr/local/bin/looking-glass-client input:rawMouse=true input:autoCapture=true win:minimizeOnFocusLoss=false -F -d