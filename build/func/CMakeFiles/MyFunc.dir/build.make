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
include func/CMakeFiles/MyFunc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include func/CMakeFiles/MyFunc.dir/compiler_depend.make

# Include the progress variables for this target.
include func/CMakeFiles/MyFunc.dir/progress.make

# Include the compile flags for this target's objects.
include func/CMakeFiles/MyFunc.dir/flags.make

func/CMakeFiles/MyFunc.dir/Court.cpp.obj: func/CMakeFiles/MyFunc.dir/flags.make
func/CMakeFiles/MyFunc.dir/Court.cpp.obj: func/CMakeFiles/MyFunc.dir/includes_CXX.rsp
func/CMakeFiles/MyFunc.dir/Court.cpp.obj: ../func/Court.cpp
func/CMakeFiles/MyFunc.dir/Court.cpp.obj: func/CMakeFiles/MyFunc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object func/CMakeFiles/MyFunc.dir/Court.cpp.obj"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT func/CMakeFiles/MyFunc.dir/Court.cpp.obj -MF CMakeFiles\MyFunc.dir\Court.cpp.obj.d -o CMakeFiles\MyFunc.dir\Court.cpp.obj -c D:\Jupyter\c++_coding\yumaoqiu02\func\Court.cpp

func/CMakeFiles/MyFunc.dir/Court.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyFunc.dir/Court.cpp.i"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Jupyter\c++_coding\yumaoqiu02\func\Court.cpp > CMakeFiles\MyFunc.dir\Court.cpp.i

func/CMakeFiles/MyFunc.dir/Court.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyFunc.dir/Court.cpp.s"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Jupyter\c++_coding\yumaoqiu02\func\Court.cpp -o CMakeFiles\MyFunc.dir\Court.cpp.s

func/CMakeFiles/MyFunc.dir/Order.cpp.obj: func/CMakeFiles/MyFunc.dir/flags.make
func/CMakeFiles/MyFunc.dir/Order.cpp.obj: func/CMakeFiles/MyFunc.dir/includes_CXX.rsp
func/CMakeFiles/MyFunc.dir/Order.cpp.obj: ../func/Order.cpp
func/CMakeFiles/MyFunc.dir/Order.cpp.obj: func/CMakeFiles/MyFunc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object func/CMakeFiles/MyFunc.dir/Order.cpp.obj"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT func/CMakeFiles/MyFunc.dir/Order.cpp.obj -MF CMakeFiles\MyFunc.dir\Order.cpp.obj.d -o CMakeFiles\MyFunc.dir\Order.cpp.obj -c D:\Jupyter\c++_coding\yumaoqiu02\func\Order.cpp

func/CMakeFiles/MyFunc.dir/Order.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyFunc.dir/Order.cpp.i"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Jupyter\c++_coding\yumaoqiu02\func\Order.cpp > CMakeFiles\MyFunc.dir\Order.cpp.i

func/CMakeFiles/MyFunc.dir/Order.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyFunc.dir/Order.cpp.s"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Jupyter\c++_coding\yumaoqiu02\func\Order.cpp -o CMakeFiles\MyFunc.dir\Order.cpp.s

func/CMakeFiles/MyFunc.dir/generateSummary.cpp.obj: func/CMakeFiles/MyFunc.dir/flags.make
func/CMakeFiles/MyFunc.dir/generateSummary.cpp.obj: func/CMakeFiles/MyFunc.dir/includes_CXX.rsp
func/CMakeFiles/MyFunc.dir/generateSummary.cpp.obj: ../func/generateSummary.cpp
func/CMakeFiles/MyFunc.dir/generateSummary.cpp.obj: func/CMakeFiles/MyFunc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object func/CMakeFiles/MyFunc.dir/generateSummary.cpp.obj"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT func/CMakeFiles/MyFunc.dir/generateSummary.cpp.obj -MF CMakeFiles\MyFunc.dir\generateSummary.cpp.obj.d -o CMakeFiles\MyFunc.dir\generateSummary.cpp.obj -c D:\Jupyter\c++_coding\yumaoqiu02\func\generateSummary.cpp

func/CMakeFiles/MyFunc.dir/generateSummary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyFunc.dir/generateSummary.cpp.i"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Jupyter\c++_coding\yumaoqiu02\func\generateSummary.cpp > CMakeFiles\MyFunc.dir\generateSummary.cpp.i

func/CMakeFiles/MyFunc.dir/generateSummary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyFunc.dir/generateSummary.cpp.s"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Jupyter\c++_coding\yumaoqiu02\func\generateSummary.cpp -o CMakeFiles\MyFunc.dir\generateSummary.cpp.s

# Object files for target MyFunc
MyFunc_OBJECTS = \
"CMakeFiles/MyFunc.dir/Court.cpp.obj" \
"CMakeFiles/MyFunc.dir/Order.cpp.obj" \
"CMakeFiles/MyFunc.dir/generateSummary.cpp.obj"

# External object files for target MyFunc
MyFunc_EXTERNAL_OBJECTS =

func/libMyFunc.a: func/CMakeFiles/MyFunc.dir/Court.cpp.obj
func/libMyFunc.a: func/CMakeFiles/MyFunc.dir/Order.cpp.obj
func/libMyFunc.a: func/CMakeFiles/MyFunc.dir/generateSummary.cpp.obj
func/libMyFunc.a: func/CMakeFiles/MyFunc.dir/build.make
func/libMyFunc.a: func/CMakeFiles/MyFunc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Jupyter\c++_coding\yumaoqiu02\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libMyFunc.a"
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && $(CMAKE_COMMAND) -P CMakeFiles\MyFunc.dir\cmake_clean_target.cmake
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MyFunc.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
func/CMakeFiles/MyFunc.dir/build: func/libMyFunc.a
.PHONY : func/CMakeFiles/MyFunc.dir/build

func/CMakeFiles/MyFunc.dir/clean:
	cd /d D:\Jupyter\c++_coding\yumaoqiu02\build\func && $(CMAKE_COMMAND) -P CMakeFiles\MyFunc.dir\cmake_clean.cmake
.PHONY : func/CMakeFiles/MyFunc.dir/clean

func/CMakeFiles/MyFunc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Jupyter\c++_coding\yumaoqiu02 D:\Jupyter\c++_coding\yumaoqiu02\func D:\Jupyter\c++_coding\yumaoqiu02\build D:\Jupyter\c++_coding\yumaoqiu02\build\func D:\Jupyter\c++_coding\yumaoqiu02\build\func\CMakeFiles\MyFunc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : func/CMakeFiles/MyFunc.dir/depend
