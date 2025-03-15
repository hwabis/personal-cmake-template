# todo: gtest itself is compiling with warnings

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG v1.16.0
)

FetchContent_MakeAvailable(googletest)

add_executable(tests
  test_adder.cc
  test_printer.cc
)

set_target_defaults(tests)

target_link_libraries(tests PRIVATE
  game_lib
  GTest::gtest_main
)

add_test(NAME AdderTest COMMAND tests)
add_test(NAME PrinterTest COMMAND tests)
