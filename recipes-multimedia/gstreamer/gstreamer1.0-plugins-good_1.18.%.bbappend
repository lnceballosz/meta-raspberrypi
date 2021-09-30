# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG:append:rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' rpi', d)}"
