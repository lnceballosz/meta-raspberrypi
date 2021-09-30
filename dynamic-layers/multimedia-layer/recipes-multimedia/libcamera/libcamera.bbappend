# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG[raspberrypi] = "-Dpipelines=raspberrypi"
PACKAGECONFIG:append:rpi = " raspberrypi"
