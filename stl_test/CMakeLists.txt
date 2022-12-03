cmake_minimum_required(VERSION 3.10)

project(stl_test)

include_directories("./")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(SRC_LISTS)
file(GLOB SRC_LISTS *.cc)

add_executable(test ${SRC_LISTS})
target_link_libraries(test pthread)
