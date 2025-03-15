include(${CMAKE_SOURCE_DIR}/cmake/SetTargetDefaults.cmake)

add_executable(game
  main.cc
)

target_link_libraries(game PRIVATE
  game_lib
)

set_target_defaults(game)
