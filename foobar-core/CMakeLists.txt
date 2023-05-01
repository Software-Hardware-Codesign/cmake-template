cmake_minimum_required(VERSION 3.18.1)

# define a project with a version
project(foobar VERSION 1.0)

message(STATUS "Project: foobar")
message(STATUS "Toolchain: ${TOOLCHAIN_HOME}")
message(STATUS "Target Hardware: ${TARGET}")

# Cmake variables
set(library "foobar")
set(CMAKE_C_COMPILER "${TOOLCHAIN_HOME}/bin/avr-gcc")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_HOME}/bin/avr-g++")
set(COMPILER_OPTIONS "-mmcu=${TARGET} -O3")

set(toolchain_headers "${TOOLCHAIN_HOME}/toolchain/include/")
set(libfoobar "${CMAKE_CURRENT_SOURCE_DIR}/src/libfoo/do_foo.c"
              "${CMAKE_CURRENT_SOURCE_DIR}/src/libfoo/init_foo.c"  
              "${CMAKE_CURRENT_SOURCE_DIR}/src/libfoo/destroy_foo.c")

set(headers "${toolchain_headers}"
            "${CMAKE_CURRENT_SOURCE_DIR}/src/include/")
set(sources ${libfoobar}) 

# add a library target
add_library(${library} STATIC ${sources})

# set both COMPILE_FLAGS and LINK_FLAGS to the specified binary architecture
set_target_properties(${library} PROPERTIES COMPILE_FLAGS "${COMPILER_OPTIONS}" LINK_FLAGS "${COMPILER_OPTIONS}")

# include headers for the target
target_include_directories(${library} PUBLIC ${headers})

# Start building the target
target_sources(${library} PUBLIC ${sources})