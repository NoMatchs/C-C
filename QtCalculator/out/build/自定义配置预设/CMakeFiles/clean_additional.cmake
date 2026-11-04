# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  [[CMakeFiles\QtCalculator_autogen.dir\AutogenUsed.txt]]
  [[CMakeFiles\QtCalculator_autogen.dir\ParseCache.txt]]
  "QtCalculator_autogen"
  )
endif()
