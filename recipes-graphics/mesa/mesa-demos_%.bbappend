# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
# SPDX-License-Identifier: MIT


# mesa-demos need libgles1 and userland driver does not have it
COMPATIBLE_HOST:rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '(.*)', 'null', d)}"
