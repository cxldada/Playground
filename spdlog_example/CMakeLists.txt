cmake_minimum_required(VERSION 3.10)

project(spdlog_example)

include_directories(/usr/local/include)
link_directories(/usr/local/lib)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(SRC_LISTS main.cc)

add_executable(example ${SRC_LISTS})

target_link_libraries(example spdlog)
target_link_libraries(example pthread)