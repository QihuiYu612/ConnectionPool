# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yuqihui/CommonConnectionPool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuqihui/CommonConnectionPool/build

# Include any dependencies generated for this target.
include src/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/main.dir/flags.make

src/CMakeFiles/main.dir/main.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/main.cpp.o: ../src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuqihui/CommonConnectionPool/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/main.dir/main.cpp.o"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cpp.o -c /home/yuqihui/CommonConnectionPool/src/main.cpp

src/CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuqihui/CommonConnectionPool/src/main.cpp > CMakeFiles/main.dir/main.cpp.i

src/CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuqihui/CommonConnectionPool/src/main.cpp -o CMakeFiles/main.dir/main.cpp.s

src/CMakeFiles/main.dir/main.cpp.o.requires:
.PHONY : src/CMakeFiles/main.dir/main.cpp.o.requires

src/CMakeFiles/main.dir/main.cpp.o.provides: src/CMakeFiles/main.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/main.dir/build.make src/CMakeFiles/main.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/main.dir/main.cpp.o.provides

src/CMakeFiles/main.dir/main.cpp.o.provides.build: src/CMakeFiles/main.dir/main.cpp.o

src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o: ../src/CommonConnectionPool.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuqihui/CommonConnectionPool/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/CommonConnectionPool.cpp.o -c /home/yuqihui/CommonConnectionPool/src/CommonConnectionPool.cpp

src/CMakeFiles/main.dir/CommonConnectionPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/CommonConnectionPool.cpp.i"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuqihui/CommonConnectionPool/src/CommonConnectionPool.cpp > CMakeFiles/main.dir/CommonConnectionPool.cpp.i

src/CMakeFiles/main.dir/CommonConnectionPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/CommonConnectionPool.cpp.s"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuqihui/CommonConnectionPool/src/CommonConnectionPool.cpp -o CMakeFiles/main.dir/CommonConnectionPool.cpp.s

src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.requires:
.PHONY : src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.requires

src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.provides: src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/main.dir/build.make src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.provides.build
.PHONY : src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.provides

src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.provides.build: src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o

src/CMakeFiles/main.dir/Connection.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Connection.cpp.o: ../src/Connection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuqihui/CommonConnectionPool/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/main.dir/Connection.cpp.o"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Connection.cpp.o -c /home/yuqihui/CommonConnectionPool/src/Connection.cpp

src/CMakeFiles/main.dir/Connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Connection.cpp.i"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuqihui/CommonConnectionPool/src/Connection.cpp > CMakeFiles/main.dir/Connection.cpp.i

src/CMakeFiles/main.dir/Connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Connection.cpp.s"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuqihui/CommonConnectionPool/src/Connection.cpp -o CMakeFiles/main.dir/Connection.cpp.s

src/CMakeFiles/main.dir/Connection.cpp.o.requires:
.PHONY : src/CMakeFiles/main.dir/Connection.cpp.o.requires

src/CMakeFiles/main.dir/Connection.cpp.o.provides: src/CMakeFiles/main.dir/Connection.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/main.dir/build.make src/CMakeFiles/main.dir/Connection.cpp.o.provides.build
.PHONY : src/CMakeFiles/main.dir/Connection.cpp.o.provides

src/CMakeFiles/main.dir/Connection.cpp.o.provides.build: src/CMakeFiles/main.dir/Connection.cpp.o

src/CMakeFiles/main.dir/pch.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/pch.cpp.o: ../src/pch.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuqihui/CommonConnectionPool/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/main.dir/pch.cpp.o"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/pch.cpp.o -c /home/yuqihui/CommonConnectionPool/src/pch.cpp

src/CMakeFiles/main.dir/pch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/pch.cpp.i"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuqihui/CommonConnectionPool/src/pch.cpp > CMakeFiles/main.dir/pch.cpp.i

src/CMakeFiles/main.dir/pch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/pch.cpp.s"
	cd /home/yuqihui/CommonConnectionPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuqihui/CommonConnectionPool/src/pch.cpp -o CMakeFiles/main.dir/pch.cpp.s

src/CMakeFiles/main.dir/pch.cpp.o.requires:
.PHONY : src/CMakeFiles/main.dir/pch.cpp.o.requires

src/CMakeFiles/main.dir/pch.cpp.o.provides: src/CMakeFiles/main.dir/pch.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/main.dir/build.make src/CMakeFiles/main.dir/pch.cpp.o.provides.build
.PHONY : src/CMakeFiles/main.dir/pch.cpp.o.provides

src/CMakeFiles/main.dir/pch.cpp.o.provides.build: src/CMakeFiles/main.dir/pch.cpp.o

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o" \
"CMakeFiles/main.dir/CommonConnectionPool.cpp.o" \
"CMakeFiles/main.dir/Connection.cpp.o" \
"CMakeFiles/main.dir/pch.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

../bin/main: src/CMakeFiles/main.dir/main.cpp.o
../bin/main: src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o
../bin/main: src/CMakeFiles/main.dir/Connection.cpp.o
../bin/main: src/CMakeFiles/main.dir/pch.cpp.o
../bin/main: src/CMakeFiles/main.dir/build.make
../bin/main: src/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/main"
	cd /home/yuqihui/CommonConnectionPool/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/main.dir/build: ../bin/main
.PHONY : src/CMakeFiles/main.dir/build

src/CMakeFiles/main.dir/requires: src/CMakeFiles/main.dir/main.cpp.o.requires
src/CMakeFiles/main.dir/requires: src/CMakeFiles/main.dir/CommonConnectionPool.cpp.o.requires
src/CMakeFiles/main.dir/requires: src/CMakeFiles/main.dir/Connection.cpp.o.requires
src/CMakeFiles/main.dir/requires: src/CMakeFiles/main.dir/pch.cpp.o.requires
.PHONY : src/CMakeFiles/main.dir/requires

src/CMakeFiles/main.dir/clean:
	cd /home/yuqihui/CommonConnectionPool/build/src && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/main.dir/clean

src/CMakeFiles/main.dir/depend:
	cd /home/yuqihui/CommonConnectionPool/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuqihui/CommonConnectionPool /home/yuqihui/CommonConnectionPool/src /home/yuqihui/CommonConnectionPool/build /home/yuqihui/CommonConnectionPool/build/src /home/yuqihui/CommonConnectionPool/build/src/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/main.dir/depend

