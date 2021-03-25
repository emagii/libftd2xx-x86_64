#!/bin/sh

install	-m 0664		build/libftd2xx.a			/usr/local/lib
install	-m 0664		build/libftd2xx.txt			/usr/local/lib
install	-m 0755		build/libftd2xx.so.1.4.22		/usr/local/lib
ln -sf 			/usr/local/lib/libftd2xx.so.1.4.22	/usr/local/lib/libftd2xx.so
install	-m 0644		ftd2xx.h				/usr/local/include
install	-m 0644		WinTypes.h				/usr/local/include
ldconfig -v

# sudo rmmod ftdi_sio
# sudo rmmod usbserial
# sudo modprobe ftdi_sio usbserial
