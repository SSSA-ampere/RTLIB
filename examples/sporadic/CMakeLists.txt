project(SPORADIC)

# Create the executable.
add_executable(spsl spsl.cpp)
add_executable(sprunt_example1 sprunt_example1.cpp)

# Indicate that the executable needs metasim and rtlib library.
target_link_libraries(spsl ${RTLIB_LIB} ${METASIM_LIB})
target_link_libraries(sprunt_example1 ${RTLIB_LIB} ${METASIM_LIB})
