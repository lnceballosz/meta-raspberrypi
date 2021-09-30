# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG:remove:rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'fbdev', '', d)}"

EXTRA_OECONF:append:rpi = " \
    --disable-xwayland-test \
    --disable-simple-egl-clients \
    ${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' \
        --disable-resize-optimization \
        --disable-setuid-install \
    ', d)} \
"
