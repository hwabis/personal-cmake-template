function(set_target_defaults target)
  set_target_properties(${target} PROPERTIES
    LINKER_LANGUAGE CXX
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
    COMPILE_WARNING_AS_ERROR ON
  )
  if (MSVC)
    target_compile_options(${target} PRIVATE
      /W4
      /permissive-
    )
  endif()
endfunction()
