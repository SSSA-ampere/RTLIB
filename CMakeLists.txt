cmake_minimum_required (VERSION 3.0)
project (rtlib)

# Packages.
find_package(METASIM REQUIRED)

message("Trovata METASIM in: ${METASIM_DIR}")

# set metasim include dir
set(METASIM_INCLUDE_DIRS "${METASIM_DIR}/../include")

message("Trovata METASIM/include in: ${METASIM_INCLUDE_DIRS}")

set(METASIM_LIB_DIR "${METASIM_DIR}/lib")

message("Trovata METASIM/lib in: ${METASIM_LIB_DIR}")

# Environment-based settings.
if(APPLE)
	set(LIB_TYPE "SHARED")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -std=c++0x")	
	if(EXISTS "${METASIM_LIB_DIR}/libMETASIM.dylib")
		set(METASIM_LIB ${CMAKE_LIBRARY_PATH} "${METASIM_LIB_DIR}/libMETASIM.dylib")
	elseif(EXISTS "${METASIM_LIB_DIR}/Debug/libMETASIM.dylib")
		set(METASIM_LIB ${CMAKE_LIBRARY_PATH} "${METASIM_LIB_DIR}/Debug/libMETASIM.dylib")
	elseif(EXISTS "${METASIM_LIB_DIR}/Release/libMETASIM.dylib")
		set(METASIM_LIB ${CMAKE_LIBRARY_PATH} "${METASIM_LIB_DIR}/Release/libMETASIM.dylib")
	endif()
	
elseif(UNIX)
	set(LIB_TYPE "SHARED")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -std=c++0x")
	set(METASIM_LIB "${METASIM_LIB_DIR}/libMETASIM.so")
	
elseif(WIN32)
	set(LIB_TYPE "STATIC")
	if(EXISTS "${METASIM_LIB_DIR}/Debug/METASIM.lib")
		set(METASIM_LIB "${METASIM_LIB_DIR}/Debug/METASIM.lib")
	elseif(EXISTS "${METASIM_LIB_DIR}/Release/METASIM.lib")
		set(METASIM_LIB "${METASIM_LIB_DIR}/Release/METASIM.lib")
	endif()
endif()


message("Trovata METASIM/lib*.so in: ${METASIM_LIB}")

# Include dirs.
add_subdirectory (src)
add_subdirectory (examples)
add_subdirectory (test)

# Export.
export(TARGETS rtlib FILE "./rtlibConfig.cmake")
export(PACKAGE rtlib)
