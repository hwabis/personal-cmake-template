include(FetchContent)

# SDL doesn't work out of the box (at runtime you have to manually copy SDL3.dll to the executable folder)
# but this file is still provided as a template for adding more dependencies.

FetchContent_Declare(
  SDL3
  GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
  GIT_TAG release-3.2.8
)

FetchContent_MakeAvailable(SDL3)
