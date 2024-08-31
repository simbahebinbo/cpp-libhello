#include <gtest/gtest.h>
#include <libhello/greet.hpp>

TEST(HelloTest, GreetTest) {
    testing::internal::CaptureStdout();
    libhello::greet();
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Hello World!\n");
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
