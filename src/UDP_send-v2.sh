#!/bin/bash
if [ $# -lt 1 ]; then
	echo "----"
	echo "$0 | links virtual port /dev/ptyS13 with REMOTE_IP:12345 UDP port."
	echo "Usage: $0 remote.ip.address"
	echo "----"
	exit 1
fi
					
remoteip="$1"
echo "Please execute 'chmod a+rw /dev/ptyS13' right afterwards"					
sudo socat -d -d pty,echo=0,ispeed=115200,ospeed=115200,clocal=1,ixoff=1,link=/dev/ptyS13 udp:$remoteip:12345 
