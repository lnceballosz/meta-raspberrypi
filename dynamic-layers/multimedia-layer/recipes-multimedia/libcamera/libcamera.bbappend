# SPDX-FileCopyrightText: 2012 meta-raspberrypi contributors
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG[raspberrypi] = "-Dpipelines=raspberrypi"
PACKAGECONFIG:append:rpi = " raspberrypi"
