add_executable(game_lib_tests
  test_adder.cc
  test_printer.cc
)

set_target_defaults(game_lib_tests)

target_link_libraries(game_lib_tests PRIVATE
  game_lib
  GTest::gtest_main
)

add_test(NAME AdderTest COMMAND game_lib_tests)
add_test(NAME PrinterTest COMMAND game_lib_tests)
