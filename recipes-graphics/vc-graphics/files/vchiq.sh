#!/bin/sh

# SPDX-FileCopyrightText: 2012 meta-raspberrypi contributors
#
# SPDX-License-Identifier: MIT

rm -f /dev/vchiq

#Get the major number
major=$(awk "\$2==\"vchiq\" {print \$1}" /proc/devices)

if [ -z "$major" ]; then
	echo "Error: Cannot find vchiq in /proc/devices"
	exit 2
else
	mknod /dev/vchiq c "$major" 0
	chmod a+w /dev/vchiq
fi
