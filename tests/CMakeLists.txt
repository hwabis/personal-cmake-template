# todo: in MSVC gtest is compiling with warnings, in the test projects themselves.
# you'll just have to ignore those warnings ☹️

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG v1.16.0
)

FetchContent_MakeAvailable(googletest)

add_subdirectory(game_lib)
