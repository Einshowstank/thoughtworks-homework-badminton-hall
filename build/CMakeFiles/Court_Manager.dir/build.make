# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.22

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Jupyter\c++_coding\yumaoqiu02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Jupyter\c++_coding\yumaoqiu02\build

# Include any dependencies generated for this target.
include CMakeFiles/Court_Manager.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Court_Manager.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Court_Manager.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Court_Manager.dir/flags.make

CMakeFiles/Court_Manager.dir/main.cpp.obj: CMakeFiles/Court_Manager.dir/flags.make
CMakeFiles/Court_Manager.dir/main.cpp.obj: CMakeFiles/Court_Manager.dir/includes_CXX.rsp
CMakeFiles/Court_Manager.dir/main.cpp.obj: ../main.cpp
CMakeFiles/Court_Manager.dir/main.cpp.obj: CMakeFiles/Court_Manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Court_Manager.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Court_Manager.dir/main.cpp.obj -MF CMakeFiles\Court_Manager.dir\main.cpp.obj.d -o CMakeFiles\Court_Manager.dir\main.cpp.obj -c D:\Jupyter\c++_coding\yumaoqiu02\main.cpp

CMakeFiles/Court_Manager.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Court_Manager.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Jupyter\c++_coding\yumaoqiu02\main.cpp > CMakeFiles\Court_Manager.dir\main.cpp.i

CMakeFiles/Court_Manager.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Court_Manager.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Jupyter\c++_coding\yumaoqiu02\main.cpp -o CMakeFiles\Court_Manager.dir\main.cpp.s

# Object files for target Court_Manager
Court_Manager_OBJECTS = \
"CMakeFiles/Court_Manager.dir/main.cpp.obj"

# External object files for target Court_Manager
Court_Manager_EXTERNAL_OBJECTS =

Court_Manager.exe: CMakeFiles/Court_Manager.dir/main.cpp.obj
Court_Manager.exe: CMakeFiles/Court_Manager.dir/build.make
Court_Manager.exe: func/libMyFunc.a
Court_Manager.exe: CMakeFiles/Court_Manager.dir/linklibs.rsp
Court_Manager.exe: CMakeFiles/Court_Manager.dir/objects1.rsp
Court_Manager.exe: CMakeFiles/Court_Manager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Court_Manager.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Court_Manager.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Court_Manager.dir/build: Court_Manager.exe
.PHONY : CMakeFiles/Court_Manager.dir/build

CMakeFiles/Court_Manager.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Court_Manager.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Court_Manager.dir/clean

CMakeFiles/Court_Manager.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Jupyter\c++_coding\yumaoqiu02 D:\Jupyter\c++_coding\yumaoqiu02 D:\Jupyter\c++_coding\yumaoqiu02\build D:\Jupyter\c++_coding\yumaoqiu02\build D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles\Court_Manager.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Court_Manager.dir/depend
