# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sh/Downloads/hackrf/codec2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sh/Downloads/hackrf/codec2/build_linux

# Include any dependencies generated for this target.
include src/CMakeFiles/freedv_rx.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/freedv_rx.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/freedv_rx.dir/flags.make

src/CMakeFiles/freedv_rx.dir/freedv_rx.c.o: src/CMakeFiles/freedv_rx.dir/flags.make
src/CMakeFiles/freedv_rx.dir/freedv_rx.c.o: ../src/freedv_rx.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/freedv_rx.dir/freedv_rx.c.o"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/freedv_rx.dir/freedv_rx.c.o   -c /home/sh/Downloads/hackrf/codec2/src/freedv_rx.c

src/CMakeFiles/freedv_rx.dir/freedv_rx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freedv_rx.dir/freedv_rx.c.i"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sh/Downloads/hackrf/codec2/src/freedv_rx.c > CMakeFiles/freedv_rx.dir/freedv_rx.c.i

src/CMakeFiles/freedv_rx.dir/freedv_rx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freedv_rx.dir/freedv_rx.c.s"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sh/Downloads/hackrf/codec2/src/freedv_rx.c -o CMakeFiles/freedv_rx.dir/freedv_rx.c.s

# Object files for target freedv_rx
freedv_rx_OBJECTS = \
"CMakeFiles/freedv_rx.dir/freedv_rx.c.o"

# External object files for target freedv_rx
freedv_rx_EXTERNAL_OBJECTS =

src/freedv_rx: src/CMakeFiles/freedv_rx.dir/freedv_rx.c.o
src/freedv_rx: src/CMakeFiles/freedv_rx.dir/build.make
src/freedv_rx: src/libcodec2.so.0.9
src/freedv_rx: src/CMakeFiles/freedv_rx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable freedv_rx"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freedv_rx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/freedv_rx.dir/build: src/freedv_rx

.PHONY : src/CMakeFiles/freedv_rx.dir/build

src/CMakeFiles/freedv_rx.dir/clean:
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && $(CMAKE_COMMAND) -P CMakeFiles/freedv_rx.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/freedv_rx.dir/clean

src/CMakeFiles/freedv_rx.dir/depend:
	cd /home/sh/Downloads/hackrf/codec2/build_linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sh/Downloads/hackrf/codec2 /home/sh/Downloads/hackrf/codec2/src /home/sh/Downloads/hackrf/codec2/build_linux /home/sh/Downloads/hackrf/codec2/build_linux/src /home/sh/Downloads/hackrf/codec2/build_linux/src/CMakeFiles/freedv_rx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/freedv_rx.dir/depend

