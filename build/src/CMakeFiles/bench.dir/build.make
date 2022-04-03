# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/benjamin/packages_and_libraries/benchmarking-tools

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benjamin/packages_and_libraries/benchmarking-tools/build

# Include any dependencies generated for this target.
include src/CMakeFiles/bench.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/bench.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/bench.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/bench.dir/flags.make

src/CMakeFiles/bench.dir/bench/instrumentation.cpp.o: src/CMakeFiles/bench.dir/flags.make
src/CMakeFiles/bench.dir/bench/instrumentation.cpp.o: ../src/bench/instrumentation.cpp
src/CMakeFiles/bench.dir/bench/instrumentation.cpp.o: src/CMakeFiles/bench.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/packages_and_libraries/benchmarking-tools/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/bench.dir/bench/instrumentation.cpp.o"
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/bench.dir/bench/instrumentation.cpp.o -MF CMakeFiles/bench.dir/bench/instrumentation.cpp.o.d -o CMakeFiles/bench.dir/bench/instrumentation.cpp.o -c /home/benjamin/packages_and_libraries/benchmarking-tools/src/bench/instrumentation.cpp

src/CMakeFiles/bench.dir/bench/instrumentation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench.dir/bench/instrumentation.cpp.i"
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benjamin/packages_and_libraries/benchmarking-tools/src/bench/instrumentation.cpp > CMakeFiles/bench.dir/bench/instrumentation.cpp.i

src/CMakeFiles/bench.dir/bench/instrumentation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench.dir/bench/instrumentation.cpp.s"
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benjamin/packages_and_libraries/benchmarking-tools/src/bench/instrumentation.cpp -o CMakeFiles/bench.dir/bench/instrumentation.cpp.s

src/CMakeFiles/bench.dir/bench/scope_timer.cpp.o: src/CMakeFiles/bench.dir/flags.make
src/CMakeFiles/bench.dir/bench/scope_timer.cpp.o: ../src/bench/scope_timer.cpp
src/CMakeFiles/bench.dir/bench/scope_timer.cpp.o: src/CMakeFiles/bench.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/packages_and_libraries/benchmarking-tools/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/bench.dir/bench/scope_timer.cpp.o"
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/bench.dir/bench/scope_timer.cpp.o -MF CMakeFiles/bench.dir/bench/scope_timer.cpp.o.d -o CMakeFiles/bench.dir/bench/scope_timer.cpp.o -c /home/benjamin/packages_and_libraries/benchmarking-tools/src/bench/scope_timer.cpp

src/CMakeFiles/bench.dir/bench/scope_timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench.dir/bench/scope_timer.cpp.i"
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benjamin/packages_and_libraries/benchmarking-tools/src/bench/scope_timer.cpp > CMakeFiles/bench.dir/bench/scope_timer.cpp.i

src/CMakeFiles/bench.dir/bench/scope_timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench.dir/bench/scope_timer.cpp.s"
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benjamin/packages_and_libraries/benchmarking-tools/src/bench/scope_timer.cpp -o CMakeFiles/bench.dir/bench/scope_timer.cpp.s

# Object files for target bench
bench_OBJECTS = \
"CMakeFiles/bench.dir/bench/instrumentation.cpp.o" \
"CMakeFiles/bench.dir/bench/scope_timer.cpp.o"

# External object files for target bench
bench_EXTERNAL_OBJECTS =

src/libbench.a: src/CMakeFiles/bench.dir/bench/instrumentation.cpp.o
src/libbench.a: src/CMakeFiles/bench.dir/bench/scope_timer.cpp.o
src/libbench.a: src/CMakeFiles/bench.dir/build.make
src/libbench.a: src/CMakeFiles/bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benjamin/packages_and_libraries/benchmarking-tools/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libbench.a"
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && $(CMAKE_COMMAND) -P CMakeFiles/bench.dir/cmake_clean_target.cmake
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/bench.dir/build: src/libbench.a
.PHONY : src/CMakeFiles/bench.dir/build

src/CMakeFiles/bench.dir/clean:
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build/src && $(CMAKE_COMMAND) -P CMakeFiles/bench.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/bench.dir/clean

src/CMakeFiles/bench.dir/depend:
	cd /home/benjamin/packages_and_libraries/benchmarking-tools/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benjamin/packages_and_libraries/benchmarking-tools /home/benjamin/packages_and_libraries/benchmarking-tools/src /home/benjamin/packages_and_libraries/benchmarking-tools/build /home/benjamin/packages_and_libraries/benchmarking-tools/build/src /home/benjamin/packages_and_libraries/benchmarking-tools/build/src/CMakeFiles/bench.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/bench.dir/depend
