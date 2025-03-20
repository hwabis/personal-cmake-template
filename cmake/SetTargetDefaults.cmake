function(set_target_defaults target)
  set_target_properties(${target} PROPERTIES
    LINKER_LANGUAGE CXX
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
    COMPILE_WARNING_AS_ERROR ON
  )

  if (MSVC)
    target_compile_options(${target} PRIVATE
      /Wall
      /analyze
      /external:anglebrackets
      /external:W0
    )
  endif()
  # todo: g++ and stuff with clang-tidy
endfunction()
