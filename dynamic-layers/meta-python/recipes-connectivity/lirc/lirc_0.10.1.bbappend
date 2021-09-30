# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
# SPDX-License-Identifier: MIT


FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:rpi = " \
	file://lirc-gpio-ir-0.10.patch \
        file://lircd.service \
"
