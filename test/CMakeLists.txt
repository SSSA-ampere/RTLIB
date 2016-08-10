project(TESTS)

include_directories(".")

# Create the executable.
add_executable(${PROJECT_NAME}
	test_main.cpp cbs.cpp test_task.cpp test_mrt.cpp test_AVR.cpp)

# Indicate that rtlib need metasim library.
target_link_libraries(${PROJECT_NAME} ${RTLIB_LIB} ${METASIM_LIB})