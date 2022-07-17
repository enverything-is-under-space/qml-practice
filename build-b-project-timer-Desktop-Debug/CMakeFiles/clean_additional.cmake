# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/b-project-timer_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/b-project-timer_autogen.dir/ParseCache.txt"
  "b-project-timer_autogen"
  )
endif()
