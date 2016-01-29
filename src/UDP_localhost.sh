#!/bin/bash
echo "Please execute the following, in another terminal window:"
echo "	sudo /bin/chmod a+rw /dev/ptyS13"
echo "	sudo /bin/chmod a+rw /dev/cu.usbserial"
sudo socat -d -d pty,echo=0,ispeed=115200,ospeed=115200,clocal=1,ixoff=1,link=/dev/ptyS13 pty,echo=0,ispeed=115200,ospeed=115200,clocal=1,ixoff=1,link=/dev/cu.usbserial 
