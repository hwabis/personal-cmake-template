# todo: there are still gtest warnings in the test projects you will just need to ignore :(

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG v1.16.0
)

FetchContent_MakeAvailable(googletest)

add_subdirectory(game_lib_tests)
