include(${CMAKE_SOURCE_DIR}/cmake/SetTargetDefaults.cmake)

add_library(game_lib
  adder.cc
  printer.cc
)

target_include_directories(game_lib PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
)

set_target_defaults(game_lib)
