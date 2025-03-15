include(${CMAKE_SOURCE_DIR}/cmake/SetTargetDefaults.cmake)

add_executable(game
  main.cc
  printer.cc
)

target_include_directories(game PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(game
  PRIVATE math
)

set_target_defaults(game)
