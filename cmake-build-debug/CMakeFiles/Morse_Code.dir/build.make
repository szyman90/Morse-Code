# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Stary komputer\Morse_Code"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Stary komputer\Morse_Code\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Morse_Code.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Morse_Code.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Morse_Code.dir/flags.make

CMakeFiles/Morse_Code.dir/main.c.obj: CMakeFiles/Morse_Code.dir/flags.make
CMakeFiles/Morse_Code.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Stary komputer\Morse_Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Morse_Code.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Morse_Code.dir\main.c.obj   -c "D:\Stary komputer\Morse_Code\main.c"

CMakeFiles/Morse_Code.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Morse_Code.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Stary komputer\Morse_Code\main.c" > CMakeFiles\Morse_Code.dir\main.c.i

CMakeFiles/Morse_Code.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Morse_Code.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Stary komputer\Morse_Code\main.c" -o CMakeFiles\Morse_Code.dir\main.c.s

# Object files for target Morse_Code
Morse_Code_OBJECTS = \
"CMakeFiles/Morse_Code.dir/main.c.obj"

# External object files for target Morse_Code
Morse_Code_EXTERNAL_OBJECTS =

Morse_Code.exe: CMakeFiles/Morse_Code.dir/main.c.obj
Morse_Code.exe: CMakeFiles/Morse_Code.dir/build.make
Morse_Code.exe: CMakeFiles/Morse_Code.dir/linklibs.rsp
Morse_Code.exe: CMakeFiles/Morse_Code.dir/objects1.rsp
Morse_Code.exe: CMakeFiles/Morse_Code.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Stary komputer\Morse_Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Morse_Code.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Morse_Code.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Morse_Code.dir/build: Morse_Code.exe

.PHONY : CMakeFiles/Morse_Code.dir/build

CMakeFiles/Morse_Code.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Morse_Code.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Morse_Code.dir/clean

CMakeFiles/Morse_Code.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Stary komputer\Morse_Code" "D:\Stary komputer\Morse_Code" "D:\Stary komputer\Morse_Code\cmake-build-debug" "D:\Stary komputer\Morse_Code\cmake-build-debug" "D:\Stary komputer\Morse_Code\cmake-build-debug\CMakeFiles\Morse_Code.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Morse_Code.dir/depend

