# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/felix/dev/cpp/DSA-2024-25/p11

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/felix/dev/cpp/DSA-2024-25/p11/build

# Include any dependencies generated for this target.
include CMakeFiles/Fliesenleger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Fliesenleger.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Fliesenleger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Fliesenleger.dir/flags.make

CMakeFiles/Fliesenleger.dir/codegen:
.PHONY : CMakeFiles/Fliesenleger.dir/codegen

CMakeFiles/Fliesenleger.dir/main.cpp.o: CMakeFiles/Fliesenleger.dir/flags.make
CMakeFiles/Fliesenleger.dir/main.cpp.o: /home/felix/dev/cpp/DSA-2024-25/p11/main.cpp
CMakeFiles/Fliesenleger.dir/main.cpp.o: CMakeFiles/Fliesenleger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/felix/dev/cpp/DSA-2024-25/p11/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Fliesenleger.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Fliesenleger.dir/main.cpp.o -MF CMakeFiles/Fliesenleger.dir/main.cpp.o.d -o CMakeFiles/Fliesenleger.dir/main.cpp.o -c /home/felix/dev/cpp/DSA-2024-25/p11/main.cpp

CMakeFiles/Fliesenleger.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Fliesenleger.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/felix/dev/cpp/DSA-2024-25/p11/main.cpp > CMakeFiles/Fliesenleger.dir/main.cpp.i

CMakeFiles/Fliesenleger.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Fliesenleger.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/felix/dev/cpp/DSA-2024-25/p11/main.cpp -o CMakeFiles/Fliesenleger.dir/main.cpp.s

# Object files for target Fliesenleger
Fliesenleger_OBJECTS = \
"CMakeFiles/Fliesenleger.dir/main.cpp.o"

# External object files for target Fliesenleger
Fliesenleger_EXTERNAL_OBJECTS =

Fliesenleger: CMakeFiles/Fliesenleger.dir/main.cpp.o
Fliesenleger: CMakeFiles/Fliesenleger.dir/build.make
Fliesenleger: CMakeFiles/Fliesenleger.dir/compiler_depend.ts
Fliesenleger: CMakeFiles/Fliesenleger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/felix/dev/cpp/DSA-2024-25/p11/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Fliesenleger"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Fliesenleger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Fliesenleger.dir/build: Fliesenleger
.PHONY : CMakeFiles/Fliesenleger.dir/build

CMakeFiles/Fliesenleger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Fliesenleger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Fliesenleger.dir/clean

CMakeFiles/Fliesenleger.dir/depend:
	cd /home/felix/dev/cpp/DSA-2024-25/p11/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/felix/dev/cpp/DSA-2024-25/p11 /home/felix/dev/cpp/DSA-2024-25/p11 /home/felix/dev/cpp/DSA-2024-25/p11/build /home/felix/dev/cpp/DSA-2024-25/p11/build /home/felix/dev/cpp/DSA-2024-25/p11/build/CMakeFiles/Fliesenleger.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Fliesenleger.dir/depend

