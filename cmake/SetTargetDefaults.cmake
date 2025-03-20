function(set_target_defaults target)
  set_target_properties(${target} PROPERTIES
    LINKER_LANGUAGE CXX
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
  )

  if (MSVC)
    target_compile_options(${target} PRIVATE
      # todo: in visual studio you still have to manually set project properties:
      # code analysis and clang-tidy on
      /Wall
      /analyze
      /external:anglebrackets
      /external:W0
    )
  endif()
  # todo: g++ and stuff with clang-tidy
endfunction()
