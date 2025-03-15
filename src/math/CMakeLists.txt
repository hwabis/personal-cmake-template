include(${CMAKE_SOURCE_DIR}/cmake/SetTargetDefaults.cmake)

add_library(math
  adder.cc
)

target_include_directories(math PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
)

set_target_defaults(math)
