cmake_minimum_required(VERSION 3.25.1)

project(
  opengl_sandbox
  VERSION 1.0.0
  LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(cmake/CPM.cmake)
include(cmake/Packages.cmake)

add_subdirectory(external)
add_subdirectory(src)
add_subdirectory(app)
add_subdirectory(tests)
