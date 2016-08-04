# Install script for directory: /home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2/QtWidgets

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
    set(CMAKE_INSTALL_CONFIG_NAME "MinSizeRel")
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
  if(EXISTS "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/QtWidgets.x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/QtWidgets.x86_64-linux-gnu.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/QtWidgets.x86_64-linux-gnu.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/QtWidgets.x86_64-linux-gnu.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2" TYPE MODULE FILES "/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtWidgets.x86_64-linux-gnu.so")
  if(EXISTS "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/QtWidgets.x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/QtWidgets.x86_64-linux-gnu.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/QtWidgets.x86_64-linux-gnu.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PySide2/QtWidgets" TYPE FILE FILES "/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtWidgets/PySide2/QtWidgets/pyside2_qtwidgets_python.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/PySide2/typesystems" TYPE FILE FILES
    "/home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2/QtWidgets/typesystem_widgets_win.xml"
    "/home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2/QtWidgets/typesystem_widgets_mac.xml"
    "/home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2/QtWidgets/typesystem_widgets_x11.xml"
    "/home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2/QtWidgets/typesystem_widgets_common.xml"
    "/home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2/QtWidgets/typesystem_widgets_android.xml"
    "/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtWidgets/typesystem_widgets.xml"
    )
endif()

