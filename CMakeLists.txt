cmake_minimum_required(VERSION 3.10)

set( CMAKE_C_COMPILER "C:/MinGW/bin/gcc.exe" )
set( CMAKE_CXX_COMPILER "C:/MinGW/bin/g++.exe" )

# 设置项目名
project(Court_Manager)

# 设置版本号
set (Court_Manager_VERSION_MAJOR 1)
set (Court_Manager_VERSION_MINOR 0)

# 支持中文格式输出
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -fexec-charset=GBK")

# 指定c++标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# 加入一个配置头文件，用于处理 CMake 对源码的设置
configure_file (
  "${PROJECT_SOURCE_DIR}/config.h.in"
  "${PROJECT_BINARY_DIR}/config.h"
  )

aux_source_directory(. DIR_SRCS)

# 添加  子目录
include_directories ("${PROJECT_SOURCE_DIR}/func")
add_subdirectory(func)
set (EXTRA_LIBS ${EXTRA_LIBS} MyFunc)

# 添加可执行目标
# add_executable(Court_Manager ${DIR_SRCS})
add_executable(Court_Manager main.cpp)
add_executable(demo demo.cpp)

# 添加链接库
target_link_libraries(Court_Manager ${EXTRA_LIBS})
target_link_libraries(demo ${EXTRA_LIBS})

