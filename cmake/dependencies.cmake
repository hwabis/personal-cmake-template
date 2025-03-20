include(FetchContent)

# todo: SDL doesn't work out of the box (at runtime you have to manually copy SDL3.dll to every target that needs it)

FetchContent_Declare(
  SDL3
  GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
  GIT_TAG release-3.2.8
)
FetchContent_MakeAvailable(SDL3)
