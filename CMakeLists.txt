cmake_minimum_required (VERSION 3.0)

# Project Description
# ------------------------------
project(RTLIB)

set(VERSION_MAJOR "1")
set(VERSION_MINOR "0")
set(VERSION_PATCH "0")
set(VERSION "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}")


# Import METASIM Package
# ------------------------------
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}")
find_package(METASIM REQUIRED)

message("Found METASIM in: ${METASIM_DIR}")
message("Found METASIM/include in: ${METASIM_INCLUDE_DIR}")
message("Found METASIM/lib*.so in: ${METASIM_LIB}")


# Set environment
# ------------------------------
include_directories(${PROJECT_SOURCE_DIR}/src)
include_directories(${METASIM_INCLUDE_DIR})
set(RTLIB_LIB_NAME ${PROJECT_NAME})
set(RTLIB_LIB ${RTLIB_LIB_NAME}_STATIC)


# Environment-dependable settings.
# ------------------------------
if(APPLE OR UNIX)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++0x")
endif()


# Add subdirectories
# ------------------------------
add_subdirectory(src)
add_subdirectory(examples)
add_subdirectory(test)

# Export.
#export(TARGETS rtlib FILE "./rtlibConfig.cmake")
#export(PACKAGE rtlib)
