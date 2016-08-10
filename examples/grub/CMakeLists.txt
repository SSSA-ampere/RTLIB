project(GRUB)

# Create the executable.
add_executable(${PROJECT_NAME} grub.cpp)

# Indicate that the executable needs metasim and rtlib library.
target_link_libraries(${PROJECT_NAME} ${RTLIB_LIB} ${METASIM_LIB})
