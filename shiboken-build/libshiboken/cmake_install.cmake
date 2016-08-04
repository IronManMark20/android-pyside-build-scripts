# Install script for directory: /home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ethanhs/android-pyside-build-scripts/stage")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/shiboken2" TYPE FILE FILES
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/autodecref.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/basewrapper.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/bindingmanager.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/conversions.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/gilstate.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/helper.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/sbkconverter.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/sbkenum.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/sbkmodule.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/python25compat.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/sbkdbg.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/sbkstring.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/shiboken.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/shibokenmacros.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/threadstatesaver.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/typeresolver.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/shibokenbuffer.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken2-android/libshiboken/sbkpython.h"
    "/home/ethanhs/android-pyside-build-scripts/shiboken-build/libshiboken/sbkversion.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ethanhs/android-pyside-build-scripts/stage/lib/libshiboken2.cpython-35m.so.2.0.0;/home/ethanhs/android-pyside-build-scripts/stage/lib/libshiboken2.cpython-35m.so.2.0;/home/ethanhs/android-pyside-build-scripts/stage/lib/libshiboken2.cpython-35m.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ethanhs/android-pyside-build-scripts/stage/lib" TYPE SHARED_LIBRARY FILES
    "/home/ethanhs/android-pyside-build-scripts/shiboken-build/libshiboken/CMakeFiles/CMakeRelink.dir/libshiboken2.cpython-35m.so.2.0.0"
    "/home/ethanhs/android-pyside-build-scripts/shiboken-build/libshiboken/CMakeFiles/CMakeRelink.dir/libshiboken2.cpython-35m.so.2.0"
    "/home/ethanhs/android-pyside-build-scripts/shiboken-build/libshiboken/CMakeFiles/CMakeRelink.dir/libshiboken2.cpython-35m.so"
    )
  foreach(file
      "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/stage/lib/libshiboken2.cpython-35m.so.2.0.0"
      "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/stage/lib/libshiboken2.cpython-35m.so.2.0"
      "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/stage/lib/libshiboken2.cpython-35m.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

