function(set_target_defaults target)
  set_target_properties(${target} PROPERTIES
    LINKER_LANGUAGE CXX
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
  )

  if (MSVC)
    target_compile_options(${target} PRIVATE
      /std:c++20
      /Wall
      /analyze
      /external:anglebrackets
      /external:W0

      /wd26440 # Do not litter noexcept everywhere
    )

    # Thanks https://discourse.cmake.org/t/cmake-cxx-clang-tidy-in-msvc/890/4
    set_target_properties(${target} PROPERTIES
      VS_GLOBAL_EnableMicrosoftCodeAnalysis true
      VS_GLOBAL_CodeAnalysisRuleSet ${CMAKE_CURRENT_SOURCE_DIR}/${target}.ruleset
      VS_GLOBAL_EnableClangTidyCodeAnalysis true
    )
  endif()
  # todo: g++ and stuff with cppcheck and clang-tidy
endfunction()
