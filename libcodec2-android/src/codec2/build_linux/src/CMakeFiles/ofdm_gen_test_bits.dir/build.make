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
include src/CMakeFiles/ofdm_gen_test_bits.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/ofdm_gen_test_bits.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/ofdm_gen_test_bits.dir/flags.make

src/CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.o: src/CMakeFiles/ofdm_gen_test_bits.dir/flags.make
src/CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.o: ../src/ofdm_gen_test_bits.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.o"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.o   -c /home/sh/Downloads/hackrf/codec2/src/ofdm_gen_test_bits.c

src/CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.i"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sh/Downloads/hackrf/codec2/src/ofdm_gen_test_bits.c > CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.i

src/CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.s"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sh/Downloads/hackrf/codec2/src/ofdm_gen_test_bits.c -o CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.s

# Object files for target ofdm_gen_test_bits
ofdm_gen_test_bits_OBJECTS = \
"CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.o"

# External object files for target ofdm_gen_test_bits
ofdm_gen_test_bits_EXTERNAL_OBJECTS =

src/ofdm_gen_test_bits: src/CMakeFiles/ofdm_gen_test_bits.dir/ofdm_gen_test_bits.c.o
src/ofdm_gen_test_bits: src/CMakeFiles/ofdm_gen_test_bits.dir/build.make
src/ofdm_gen_test_bits: src/libcodec2.so.0.9
src/ofdm_gen_test_bits: src/CMakeFiles/ofdm_gen_test_bits.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ofdm_gen_test_bits"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ofdm_gen_test_bits.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/ofdm_gen_test_bits.dir/build: src/ofdm_gen_test_bits

.PHONY : src/CMakeFiles/ofdm_gen_test_bits.dir/build

src/CMakeFiles/ofdm_gen_test_bits.dir/clean:
	cd /home/sh/Downloads/hackrf/codec2/build_linux/src && $(CMAKE_COMMAND) -P CMakeFiles/ofdm_gen_test_bits.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ofdm_gen_test_bits.dir/clean

src/CMakeFiles/ofdm_gen_test_bits.dir/depend:
	cd /home/sh/Downloads/hackrf/codec2/build_linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sh/Downloads/hackrf/codec2 /home/sh/Downloads/hackrf/codec2/src /home/sh/Downloads/hackrf/codec2/build_linux /home/sh/Downloads/hackrf/codec2/build_linux/src /home/sh/Downloads/hackrf/codec2/build_linux/src/CMakeFiles/ofdm_gen_test_bits.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/ofdm_gen_test_bits.dir/depend

