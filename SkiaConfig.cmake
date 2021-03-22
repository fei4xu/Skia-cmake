#[=======================================================================[
FindSkia
---------

Try to find Skia

Once done this will define:

  SKIA_FOUND        - system has Skia
  SKIA_INCLUDE_DIR  - include paths to use Skia
  SKIA_LIBRARIES    - Link these to use Skia
#]=======================================================================]

set(SKIA_FOUND 0)

find_path(SKIA_ROOT_INCLUDE_DIR Skia/include/c/sk_canvas.h)
set(SKIA_INCLUDE_DIR ${SKIA_ROOT_INCLUDE_DIR}/Skia) #/usr/local/include/Skia

find_library(SKIA_LIBRARIES skia)                   #/usr/local/lib

include(${CMAKE_ROOT}/Modules/FindPackageHandleStandardArgs.cmake)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Skia DEFAULT_MSG SKIA_LIBRARIES SKIA_INCLUDE_DIR)

mark_as_advanced(
  SKIA_INCLUDE_DIR
  SKIA_LIBRARIES
)
