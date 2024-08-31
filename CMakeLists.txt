cmake_minimum_required(VERSION 3.15)

PROJECT(hello LANGUAGES CXX VERSION 1.0.0)

set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# 设置 CMake 政策
cmake_policy(SET CMP0167 NEW)
cmake_policy(SET CMP0144 NEW)
cmake_policy(SET CMP0074 NEW)


ADD_LIBRARY(hello STATIC
        src/hello.cpp
)

ADD_EXECUTABLE(greet
        src/main.cpp
)

TARGET_LINK_LIBRARIES(greet
        hello
)



