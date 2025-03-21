include(${CMAKE_SOURCE_DIR}/cmake/SetTargetDefaults.cmake)

function(add_test_executable target test_lib)
  add_executable(${target} ${ARGN})

  set_target_defaults(${target})

  target_include_directories(${target} SYSTEM PRIVATE
    "${googletest_SOURCE_DIR}/include"
  )
  
  target_link_libraries(${target} PRIVATE
    ${test_lib}
    GTest::gtest_main
  )
endfunction()
