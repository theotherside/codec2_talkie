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
include unittest/CMakeFiles/tfsk_llr.dir/depend.make

# Include the progress variables for this target.
include unittest/CMakeFiles/tfsk_llr.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/CMakeFiles/tfsk_llr.dir/flags.make

unittest/CMakeFiles/tfsk_llr.dir/tfsk_llr.c.o: unittest/CMakeFiles/tfsk_llr.dir/flags.make
unittest/CMakeFiles/tfsk_llr.dir/tfsk_llr.c.o: ../unittest/tfsk_llr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/CMakeFiles/tfsk_llr.dir/tfsk_llr.c.o"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/unittest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tfsk_llr.dir/tfsk_llr.c.o   -c /home/sh/Downloads/hackrf/codec2/unittest/tfsk_llr.c

unittest/CMakeFiles/tfsk_llr.dir/tfsk_llr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tfsk_llr.dir/tfsk_llr.c.i"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/unittest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sh/Downloads/hackrf/codec2/unittest/tfsk_llr.c > CMakeFiles/tfsk_llr.dir/tfsk_llr.c.i

unittest/CMakeFiles/tfsk_llr.dir/tfsk_llr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tfsk_llr.dir/tfsk_llr.c.s"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/unittest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sh/Downloads/hackrf/codec2/unittest/tfsk_llr.c -o CMakeFiles/tfsk_llr.dir/tfsk_llr.c.s

# Object files for target tfsk_llr
tfsk_llr_OBJECTS = \
"CMakeFiles/tfsk_llr.dir/tfsk_llr.c.o"

# External object files for target tfsk_llr
tfsk_llr_EXTERNAL_OBJECTS =

unittest/tfsk_llr: unittest/CMakeFiles/tfsk_llr.dir/tfsk_llr.c.o
unittest/tfsk_llr: unittest/CMakeFiles/tfsk_llr.dir/build.make
unittest/tfsk_llr: src/libcodec2.so.0.9
unittest/tfsk_llr: unittest/CMakeFiles/tfsk_llr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tfsk_llr"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/unittest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tfsk_llr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/CMakeFiles/tfsk_llr.dir/build: unittest/tfsk_llr

.PHONY : unittest/CMakeFiles/tfsk_llr.dir/build

unittest/CMakeFiles/tfsk_llr.dir/clean:
	cd /home/sh/Downloads/hackrf/codec2/build_linux/unittest && $(CMAKE_COMMAND) -P CMakeFiles/tfsk_llr.dir/cmake_clean.cmake
.PHONY : unittest/CMakeFiles/tfsk_llr.dir/clean

unittest/CMakeFiles/tfsk_llr.dir/depend:
	cd /home/sh/Downloads/hackrf/codec2/build_linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sh/Downloads/hackrf/codec2 /home/sh/Downloads/hackrf/codec2/unittest /home/sh/Downloads/hackrf/codec2/build_linux /home/sh/Downloads/hackrf/codec2/build_linux/unittest /home/sh/Downloads/hackrf/codec2/build_linux/unittest/CMakeFiles/tfsk_llr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/CMakeFiles/tfsk_llr.dir/depend

