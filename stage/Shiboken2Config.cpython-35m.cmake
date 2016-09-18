#  SHIBOKEN_INCLUDE_DIR        - Directories to include to use SHIBOKEN
#  SHIBOKEN_LIBRARY            - Files to link against to use SHIBOKEN
#  SHIBOKEN_BINARY             - Executable name
#  SHIBOKEN_BUILD_TYPE         - Tells if Shiboken was compiled in Release or Debug mode.
#  SHIBOKEN_PYTHON_INTERPRETER - Python interpreter (regular or debug) to be used with the bindings.
#  SHIBOKEN_PYTHON_LIBRARIES   - Python libraries (regular or debug) Shiboken is linked against.

SET(SHIBOKEN_INCLUDE_DIR ${SHIBOKEN_INCLUDES_PATH})
SET(SHIBOKEN_LIBRARY ${SHIBOKEN_LIB_PATH})

SET(SHIBOKEN_PYTHON_INCLUDE_DIR ${PYTHON_INCLUDE_DIRS})
SET(SHIBOKEN_PYTHON_INTERPRETER "${PYTHON_DIR}/build/12-21-arm-linux-androideabi-4.9/bin/python3")
SET(SHIBOKEN_PYTHON_VERSION_MAJOR "3")
SET(SHIBOKEN_PYTHON_VERSION_MINOR "5")
SET(SHIBOKEN_PYTHON_VERSION_PATCH "2")
SET(SHIBOKEN_PYTHON_LIBRARIES ${PYTHON_LIBRARIES})
SET(SHIBOKEN_PYTHON_EXTENSION_SUFFIX ".cpython-35m")
message(STATUS "libshiboken built for Debug")


set(SHIBOKEN_BINARY "/home/ethanhs/pyside-setup/pyside_install/py3.5-qt5.6.0-64bit-release/bin/shiboken2")
