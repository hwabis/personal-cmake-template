function(set_target_defaults target)
  set_target_properties(${target} PROPERTIES
    LINKER_LANGUAGE CXX
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
  )

  if (MSVC)
    target_compile_options(${target} PRIVATE
      /Wall
      /analyze
      /external:anglebrackets
      /external:W0
    )

    # Thanks https://discourse.cmake.org/t/cmake-cxx-clang-tidy-in-msvc/890/4
      set_target_properties(${target} PROPERTIES
      VS_GLOBAL_EnableMicrosoftCodeAnalysis true
      VS_GLOBAL_CodeAnalysisRuleSet ${CMAKE_CURRENT_SOURCE_DIR}/${target}.ruleset
      VS_GLOBAL_EnableClangTidyCodeAnalysis true
      VS_GLOBAL_ClangTidyChecks -checks=-*,modernize-*,-modernize-use-trailing-return-type
    )
  endif()
  # todo: g++ and stuff with clang-tidy and cppcheck
endfunction()
