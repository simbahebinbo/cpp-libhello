#
# Copyright Quadrivium LLC
# All Rights Reserved
# SPDX-License-Identifier: Apache-2.0
#

add_library(hello
        libhello.cpp
        greet.cpp
)
target_link_libraries(hello INTERFACE
)
libhello_install(hello)
