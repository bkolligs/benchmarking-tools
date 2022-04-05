find_package(GTest REQUIRED)

add_executable(test_timer test_timer.cpp)
target_link_libraries(test_timer bench ${GTEST_LIBRARIES} pthread)
target_compile_definitions(test_timer PUBLIC LOG_DIR="${CMAKE_CURRENT_SOURCE_DIR}/logs")

add_executable(test_instrumentor test_instrumentor.cpp)
target_link_libraries(test_instrumentor bench ${GTEST_LIBRARIES} pthread)

gtest_discover_tests(test_timer)
gtest_discover_tests(test_instrumentor)