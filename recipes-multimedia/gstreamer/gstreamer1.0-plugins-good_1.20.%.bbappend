# SPDX-FileCopyrightText: 2012 meta-raspberrypi contributors
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG:append:rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' rpi', d)}"
