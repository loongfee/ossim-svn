# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vipul/ossim-svn/src/ossim_package_support/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vipul/ossim-svn/src/ossim_package_support/cmake/build

# Include any dependencies generated for this target.
include ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/depend.make

# Include the progress variables for this target.
include ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/progress.make

# Include the compile flags for this target's objects.
include ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/flags.make

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o: ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/flags.make
ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o: /home/vipul/ossim-svn/src/ossim/src/test/ossim-mask-filter-test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o -c /home/vipul/ossim-svn/src/ossim/src/test/ossim-mask-filter-test.cpp

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.i"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vipul/ossim-svn/src/ossim/src/test/ossim-mask-filter-test.cpp > CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.i

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.s"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vipul/ossim-svn/src/ossim/src/test/ossim-mask-filter-test.cpp -o CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.s

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.requires:
.PHONY : ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.requires

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.provides: ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.requires
	$(MAKE) -f ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/build.make ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.provides.build
.PHONY : ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.provides

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.provides.build: ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o

# Object files for target ossim-mask-filter-test
ossim__mask__filter__test_OBJECTS = \
"CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o"

# External object files for target ossim-mask-filter-test
ossim__mask__filter__test_EXTERNAL_OBJECTS =

bin/ossim-mask-filter-test: ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o
bin/ossim-mask-filter-test: lib/libossim.so.1.8.12
bin/ossim-mask-filter-test: /usr/lib/libOpenThreads.so
bin/ossim-mask-filter-test: /usr/lib/libjpeg.so
bin/ossim-mask-filter-test: /usr/lib/libtiff.so
bin/ossim-mask-filter-test: /usr/lib/libgeotiff.so
bin/ossim-mask-filter-test: /usr/lib/libOpenThreads.so
bin/ossim-mask-filter-test: /usr/lib/libfreetype.so
bin/ossim-mask-filter-test: /usr/lib64/openmpi/lib/libmpi.so
bin/ossim-mask-filter-test: /usr/lib/libz.so
bin/ossim-mask-filter-test: /usr/lib/libdl.so
bin/ossim-mask-filter-test: ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/build.make
bin/ossim-mask-filter-test: ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/ossim-mask-filter-test"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ossim-mask-filter-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/build: bin/ossim-mask-filter-test
.PHONY : ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/build

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/requires: ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/ossim-mask-filter-test.cpp.o.requires
.PHONY : ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/requires

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/clean:
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/test && $(CMAKE_COMMAND) -P CMakeFiles/ossim-mask-filter-test.dir/cmake_clean.cmake
.PHONY : ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/clean

ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/depend:
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vipul/ossim-svn/src/ossim_package_support/cmake /home/vipul/ossim-svn/src/ossim/src/test /home/vipul/ossim-svn/src/ossim_package_support/cmake/build /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/test /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ossim/src/test/CMakeFiles/ossim-mask-filter-test.dir/depend
