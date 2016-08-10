# - Try to find METASIM
# Once done, this will define
#
#  METASIM_FOUND - system has METASIM
#  METASIM_INCLUDE_DIRS - the METASIM include directories
#  METASIM_LIBRARIES - link these to use METASIM

set(METASIM_ROOT_PATHS)

# Include dir
find_path(METASIM_INCLUDE_DIR
  NAMES simul.hpp
  PATHS "C:/Program Files/METASIM/include"
  "C:/Program Files (x86)/METASIM/include"
  )

# Finally the library itself
find_library(METASIM_LIB
  NAMES METASIM_STATIC METASIM
  PATHS "${METASIM_INCLUDE_DIR}/../lib/static")

get_filename_component(METASIM_DIR ${METASIM_INCLUDE_DIR} DIRECTORY)