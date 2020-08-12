cmake_minimum_required (VERSION 3.1)
project (rtlib)

#set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_BUILD_TYPE Release)

set(LIBRARY_TYPE STATIC)

if (${CMAKE_BUILD_TYPE} STREQUAL "Debug")
  add_definitions(-D__DEBUG__)
  message("Debug added as a compilation flag")
endif()

# set the path to METASIM
include(${CMAKE_CURRENT_SOURCE_DIR}/common_settings.txt)

message("Metasim configuration file directory: ${metasim_DIR}")
message("Metasim include directory: ${metasim_INCLUDE_DIRS}")
message("Metasim library: ${metasim_LIBRARIES}")

# Include dirs
add_subdirectory (src)
add_subdirectory (examples)
enable_testing (true)
add_subdirectory (test)
