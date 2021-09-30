# SPDX-FileCopyrightText: 2012 Andrei Gherzan <andrei@gherzan.ro>
# SPDX-License-Identifier: MIT


# Base this image on core-image-base
include recipes-core/images/core-image-base.bb

COMPATIBLE_MACHINE = "^rpi$"

IMAGE_INSTALL:append = " packagegroup-rpi-test"
