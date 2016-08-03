# Include dirs.
include_directories(.)
include_directories("${PROJECT_SOURCE_DIR}/include")
include_directories(${METASIM_INCLUDE_DIRS})

# Create the executable.
add_executable(tests test_main.cpp cbs.cpp test_task.cpp test_mrt.cpp test_AVR.cpp)

# Indicate that rtlib need rtlib library.
target_link_libraries(tests rtlib ${METASIM_LIB})