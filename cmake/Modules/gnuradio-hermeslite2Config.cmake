find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_HERMESLITE2 gnuradio-hermeslite2)

FIND_PATH(
    GR_HERMESLITE2_INCLUDE_DIRS
    NAMES hermeslite2/api.h
    HINTS $ENV{HERMESLITE2_DIR}/include
        ${PC_HERMESLITE2_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_HERMESLITE2_LIBRARIES
    NAMES gnuradio-hermeslite2
    HINTS $ENV{HERMESLITE2_DIR}/lib
        ${PC_HERMESLITE2_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-hermeslite2Target.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_HERMESLITE2 DEFAULT_MSG GR_HERMESLITE2_LIBRARIES GR_HERMESLITE2_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_HERMESLITE2_LIBRARIES GR_HERMESLITE2_INCLUDE_DIRS)
