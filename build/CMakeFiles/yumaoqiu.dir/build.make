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
include CMakeFiles/yumaoqiu.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/yumaoqiu.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/yumaoqiu.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yumaoqiu.dir/flags.make

CMakeFiles/yumaoqiu.dir/main.cpp.obj: CMakeFiles/yumaoqiu.dir/flags.make
CMakeFiles/yumaoqiu.dir/main.cpp.obj: CMakeFiles/yumaoqiu.dir/includes_CXX.rsp
CMakeFiles/yumaoqiu.dir/main.cpp.obj: ../main.cpp
CMakeFiles/yumaoqiu.dir/main.cpp.obj: CMakeFiles/yumaoqiu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/yumaoqiu.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/yumaoqiu.dir/main.cpp.obj -MF CMakeFiles\yumaoqiu.dir\main.cpp.obj.d -o CMakeFiles\yumaoqiu.dir\main.cpp.obj -c D:\Jupyter\c++_coding\yumaoqiu02\main.cpp

CMakeFiles/yumaoqiu.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yumaoqiu.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Jupyter\c++_coding\yumaoqiu02\main.cpp > CMakeFiles\yumaoqiu.dir\main.cpp.i

CMakeFiles/yumaoqiu.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yumaoqiu.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Jupyter\c++_coding\yumaoqiu02\main.cpp -o CMakeFiles\yumaoqiu.dir\main.cpp.s

# Object files for target yumaoqiu
yumaoqiu_OBJECTS = \
"CMakeFiles/yumaoqiu.dir/main.cpp.obj"

# External object files for target yumaoqiu
yumaoqiu_EXTERNAL_OBJECTS =

yumaoqiu.exe: CMakeFiles/yumaoqiu.dir/main.cpp.obj
yumaoqiu.exe: CMakeFiles/yumaoqiu.dir/build.make
yumaoqiu.exe: func/libMyFunc.a
yumaoqiu.exe: CMakeFiles/yumaoqiu.dir/linklibs.rsp
yumaoqiu.exe: CMakeFiles/yumaoqiu.dir/objects1.rsp
yumaoqiu.exe: CMakeFiles/yumaoqiu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable yumaoqiu.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\yumaoqiu.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yumaoqiu.dir/build: yumaoqiu.exe
.PHONY : CMakeFiles/yumaoqiu.dir/build

CMakeFiles/yumaoqiu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\yumaoqiu.dir\cmake_clean.cmake
.PHONY : CMakeFiles/yumaoqiu.dir/clean

CMakeFiles/yumaoqiu.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Jupyter\c++_coding\yumaoqiu02 D:\Jupyter\c++_coding\yumaoqiu02 D:\Jupyter\c++_coding\yumaoqiu02\build D:\Jupyter\c++_coding\yumaoqiu02\build D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles\yumaoqiu.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yumaoqiu.dir/depend
