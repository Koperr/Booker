# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/beza/Desktop/Booker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/beza/Desktop/Booker/build

# Include any dependencies generated for this target.
include CMakeFiles/RestLearn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RestLearn.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RestLearn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RestLearn.dir/flags.make

CMakeFiles/RestLearn.dir/src/Booker.cpp.o: CMakeFiles/RestLearn.dir/flags.make
CMakeFiles/RestLearn.dir/src/Booker.cpp.o: /Users/beza/Desktop/Booker/src/Booker.cpp
CMakeFiles/RestLearn.dir/src/Booker.cpp.o: CMakeFiles/RestLearn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/beza/Desktop/Booker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RestLearn.dir/src/Booker.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RestLearn.dir/src/Booker.cpp.o -MF CMakeFiles/RestLearn.dir/src/Booker.cpp.o.d -o CMakeFiles/RestLearn.dir/src/Booker.cpp.o -c /Users/beza/Desktop/Booker/src/Booker.cpp

CMakeFiles/RestLearn.dir/src/Booker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RestLearn.dir/src/Booker.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beza/Desktop/Booker/src/Booker.cpp > CMakeFiles/RestLearn.dir/src/Booker.cpp.i

CMakeFiles/RestLearn.dir/src/Booker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RestLearn.dir/src/Booker.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beza/Desktop/Booker/src/Booker.cpp -o CMakeFiles/RestLearn.dir/src/Booker.cpp.s

CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o: CMakeFiles/RestLearn.dir/flags.make
CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o: /Users/beza/Desktop/Booker/src/BookerHandler.cpp
CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o: CMakeFiles/RestLearn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/beza/Desktop/Booker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o -MF CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o.d -o CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o -c /Users/beza/Desktop/Booker/src/BookerHandler.cpp

CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beza/Desktop/Booker/src/BookerHandler.cpp > CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.i

CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beza/Desktop/Booker/src/BookerHandler.cpp -o CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.s

CMakeFiles/RestLearn.dir/src/main.cpp.o: CMakeFiles/RestLearn.dir/flags.make
CMakeFiles/RestLearn.dir/src/main.cpp.o: /Users/beza/Desktop/Booker/src/main.cpp
CMakeFiles/RestLearn.dir/src/main.cpp.o: CMakeFiles/RestLearn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/beza/Desktop/Booker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/RestLearn.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RestLearn.dir/src/main.cpp.o -MF CMakeFiles/RestLearn.dir/src/main.cpp.o.d -o CMakeFiles/RestLearn.dir/src/main.cpp.o -c /Users/beza/Desktop/Booker/src/main.cpp

CMakeFiles/RestLearn.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RestLearn.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beza/Desktop/Booker/src/main.cpp > CMakeFiles/RestLearn.dir/src/main.cpp.i

CMakeFiles/RestLearn.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RestLearn.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beza/Desktop/Booker/src/main.cpp -o CMakeFiles/RestLearn.dir/src/main.cpp.s

# Object files for target RestLearn
RestLearn_OBJECTS = \
"CMakeFiles/RestLearn.dir/src/Booker.cpp.o" \
"CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o" \
"CMakeFiles/RestLearn.dir/src/main.cpp.o"

# External object files for target RestLearn
RestLearn_EXTERNAL_OBJECTS =

/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: CMakeFiles/RestLearn.dir/src/Booker.cpp.o
/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: CMakeFiles/RestLearn.dir/src/BookerHandler.cpp.o
/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: CMakeFiles/RestLearn.dir/src/main.cpp.o
/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: CMakeFiles/RestLearn.dir/build.make
/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: /opt/homebrew/lib/libhttpserver.a
/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: /System/Volumes/Data/opt/homebrew/lib/libmicrohttpd.a
/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: /opt/homebrew/Cellar/gnutls/3.8.4/lib/libgnutls.dylib
/Users/beza/Desktop/Booker/bin/Darwin/RestLearn: CMakeFiles/RestLearn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/beza/Desktop/Booker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable /Users/beza/Desktop/Booker/bin/Darwin/RestLearn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RestLearn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RestLearn.dir/build: /Users/beza/Desktop/Booker/bin/Darwin/RestLearn
.PHONY : CMakeFiles/RestLearn.dir/build

CMakeFiles/RestLearn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RestLearn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RestLearn.dir/clean

CMakeFiles/RestLearn.dir/depend:
	cd /Users/beza/Desktop/Booker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/beza/Desktop/Booker /Users/beza/Desktop/Booker /Users/beza/Desktop/Booker/build /Users/beza/Desktop/Booker/build /Users/beza/Desktop/Booker/build/CMakeFiles/RestLearn.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/RestLearn.dir/depend

