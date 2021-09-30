# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG:append:rpi = " hls libmms \
                   ${@bb.utils.contains('LICENSE_FLAGS_WHITELIST', 'commercial', 'faad', '', d)}"
