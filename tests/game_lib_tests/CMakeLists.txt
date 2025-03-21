include(${CMAKE_SOURCE_DIR}/cmake/AddTestExecutable.cmake)

add_test_executable(game_lib_tests game_lib
  test_adder.cc
  test_printer.cc
)

add_test(NAME AdderTest COMMAND game_lib_tests)
add_test(NAME PrinterTest COMMAND game_lib_tests)
