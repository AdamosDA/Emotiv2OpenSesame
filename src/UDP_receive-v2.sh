#!/bin/bash
if [ $# -gt 0 ]; then
	echo "----"
	echo "$0 | links local 12345 UDP port with /dev/cu.usbserial port."
	echo "NOTICE: a usb2serial interface/driver is needed."
	echo "Usage: $0"
	echo "----"
	exit 1
fi
					
echo "Please execute 'chmod a+rw /dev/cu.usbserial' right afterwards"
sudo socat -d -d pty,echo=0,ispeed=115200,ospeed=115200,clocal=1,ixoff=1,link=/dev/cu.usbserial udp-l:12345 
