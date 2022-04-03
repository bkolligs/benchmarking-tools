find_package(GTest REQUIRED)

add_executable(test_timer test_timer.cpp)
target_link_libraries(test_timer bench ${GTEST_LIBRARIES} pthread)

gtest_discover_tests(test_timer)