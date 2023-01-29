cmake_minimum_required(VERSION 3.22)

project(TastefulSquirrel)


set(HEADER_FILES
    include/tasteful_squirrel/tasteful_squirrel.h
    include/tasteful_squirrel/tasteful_squirrel_mac.h
)

set(SRC_FILES 
    src/tasteful_squirrel_mac.cpp
)

add_library(tasteful_squirrel ${HEADER_FILES} ${SRC_FILES})

target_include_directories(tasteful_squirrel PUBLIC include)
set_property(TARGET tasteful_squirrel PROPERTY CXX_STANDARD 23)

add_subdirectory(tests)

