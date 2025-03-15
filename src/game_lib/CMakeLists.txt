include(${CMAKE_SOURCE_DIR}/cmake/SetTargetDefaults.cmake)

add_library(game_lib
  adder.cc
  printer.cc
)

set_target_defaults(game_lib)

target_include_directories(game_lib PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${SDL3_SOURCE_DIR}/include
)

target_link_libraries(game_lib PRIVATE
  SDL3::SDL3
)
