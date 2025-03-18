function(set_target_defaults target)
  set_target_properties(${target} PROPERTIES
    LINKER_LANGUAGE CXX
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
    COMPILE_WARNING_AS_ERROR ON
  )

  # cppcheck and clang-tidy don't automatically integrate into visual studio ❓🤔❓

  if (MSVC)
    target_compile_options(${target} PRIVATE
      /W4
      /permissive-
    )
  endif()
  # todo: gcc, etc.
endfunction()
