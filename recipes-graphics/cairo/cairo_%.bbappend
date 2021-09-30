# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG_GLESV2 = " ${@bb.utils.contains('DISTRO_FEATURES', 'x11', '', 'glesv2', d)}"

PACKAGECONFIG:append:rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' egl ${PACKAGECONFIG_GLESV2}', d)}"
