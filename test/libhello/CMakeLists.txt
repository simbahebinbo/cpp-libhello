#
# Copyright Quadrivium LLC
# All Rights Reserved
# SPDX-License-Identifier: Apache-2.0
#

addtest(greet_test
        greet_test.cpp
)
target_link_libraries(greet_test
        hello
)

