add_library(bench
	bench/instrumentation.cpp
	bench/scope_timer.cpp
)

target_include_directories(bench PUBLIC bench)
