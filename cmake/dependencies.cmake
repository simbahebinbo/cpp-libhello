#
# Copyright Quadrivium LLC
# All Rights Reserved
# SPDX-License-Identifier: Apache-2.0
#

if (TESTING)
    # https://docs.hunter.sh/en/latest/packages/pkg/GTest.html
    hunter_add_package(GTest)
    find_package(GTest CONFIG REQUIRED)
endif ()

