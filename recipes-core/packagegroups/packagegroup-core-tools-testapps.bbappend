# SPDX-FileCopyrightText: 2012 meta-raspberrypi contributors
#
# SPDX-License-Identifier: MIT

# mesa-demos needs gles1 and userland driver does not have it, works ok with vc4 graphics driver
X11GLTOOLS:remove:rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'mesa-demos', d)}"
