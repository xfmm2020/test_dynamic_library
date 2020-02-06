cmake_minimum_required(VERSION 3.10)
project(cpp-tools)

set(CMAKE_CXX_STANDARD 14)

SET(CMAKE_BUILD_TYPE "Debug")
SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb ")
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

SET(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)

include_directories(./)
add_library(world SHARED
    world.c
    )
link_libraries(world)

add_library(hello SHARED
    hello.c 
    )
link_libraries(hello)

#设置install时的地址前缀为当前地址
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

#将可执行文件写入TEST_SOURCES中并循环执行编译安装过程
add_executable(test ${hello} test.c)
install(TARGETS test DESTINATION bin)

