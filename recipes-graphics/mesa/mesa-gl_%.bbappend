# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
#
# SPDX-License-Identifier: MIT

PACKAGECONFIG:append:rpi = " gbm"
PROVIDES:append:rpi = " virtual/libgbm"

GALLIUMDRIVERS:append:rpi = ",swrast"

do_install:append:rpi() {
    rm -rf ${D}${includedir}/KHR/khrplatform.h
}
