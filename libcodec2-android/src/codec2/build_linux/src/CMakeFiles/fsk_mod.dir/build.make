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
include src/CMakeFiles/fsk_mod.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/fsk_mod.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/fsk_mod.dir/flags.make

src/CMakeFiles/fsk_mod.dir/fsk_mod.c.o: src/CMakeFiles/fsk_mod.dir/flags.make
src/CMakeFiles/fsk_mod.dir/fsk_mod.c.o: ../src/fsk_mod.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/fsk_mod.dir/fsk_mod.c.o"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fsk_mod.dir/fsk_mod.c.o   -c /home/sh/Downloads/hackrf/codec2/src/fsk_mod.c

src/CMakeFiles/fsk_mod.dir/fsk_mod.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fsk_mod.dir/fsk_mod.c.i"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sh/Downloads/hackrf/codec2/src/fsk_mod.c > CMakeFiles/fsk_mod.dir/fsk_mod.c.i

src/CMakeFiles/fsk_mod.dir/fsk_mod.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fsk_mod.dir/fsk_mod.c.s"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sh/Downloads/hackrf/codec2/src/fsk_mod.c -o CMakeFiles/fsk_mod.dir/fsk_mod.c.s

# Object files for target fsk_mod
fsk_mod_OBJECTS = \
"CMakeFiles/fsk_mod.dir/fsk_mod.c.o"

# External object files for target fsk_mod
fsk_mod_EXTERNAL_OBJECTS =

src/fsk_mod: src/CMakeFiles/fsk_mod.dir/fsk_mod.c.o
src/fsk_mod: src/CMakeFiles/fsk_mod.dir/build.make
src/fsk_mod: src/libcodec2.so.0.9
src/fsk_mod: src/CMakeFiles/fsk_mod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable fsk_mod"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fsk_mod.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/fsk_mod.dir/build: src/fsk_mod

.PHONY : src/CMakeFiles/fsk_mod.dir/build

src/CMakeFiles/fsk_mod.dir/clean:
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && $(CMAKE_COMMAND) -P CMakeFiles/fsk_mod.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/fsk_mod.dir/clean

src/CMakeFiles/fsk_mod.dir/depend:
	cd /home/sh/Downloads/hackrf/codec2/build_linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sh/Downloads/hackrf/codec2 /home/sh/Downloads/hackrf/codec2/src /home/sh/Downloads/hackrf/codec2/build_linux /home/sh/Downloads/hackrf/codec2/build_linux/src /home/sh/Downloads/hackrf/codec2/build_linux/src/CMakeFiles/fsk_mod.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/fsk_mod.dir/depend

