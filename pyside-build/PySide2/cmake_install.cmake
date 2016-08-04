# Install script for directory: /home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2

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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/__init__.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2" TYPE FILE FILES "/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2/_utils.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ethanhs/android-pyside-build-scripts/pyside2-android/pyside2_build_android/PySide2" TYPE FILE FILES "/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/_utils.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/PySide2/typesystems" TYPE FILE FILES "/home/ethanhs/android-pyside-build-scripts/pyside2-android/PySide2/typesystem_templates.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PySide2" TYPE FILE FILES "/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/pyside2_global.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtCore/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtConcurrent/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtGui/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtWidgets/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtPrintSupport/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtSvg/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtSql/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtNetwork/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtXml/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtXmlPatterns/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtTest/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtScript/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtScriptTools/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtQuick/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtQml/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtQuickWidgets/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtWebChannel/cmake_install.cmake")
  include("/home/ethanhs/android-pyside-build-scripts/pyside-build/PySide2/QtWebSockets/cmake_install.cmake")

endif()

