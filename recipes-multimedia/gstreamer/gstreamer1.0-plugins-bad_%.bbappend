# SPDX-FileCopyrightText: 2012 meta-raspberrypi contributors
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG:append:rpi = " hls \
                   ${@bb.utils.contains('LICENSE_FLAGS_ACCEPTED', 'commercial', 'gpl faad', '', d)}"
