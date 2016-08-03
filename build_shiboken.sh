#!/bin/bash

echo "= PySide android build script ="

# source the needed environmental variables
source env.sh

# cleanup from any previous build (both Shiboken & PySide)
echo "* cleaning up previous build (both Shiboken & PySide) *"
rm -rf shiboken-build/*
rm -rf pyside-build/*
rm -rf stage/*

PYTHON_INCLUDE_DIRS="${PYTHON_DIR}/include/python3.5m"
PYTHON_LIBRARIES="${PYTHON_DIR}/lib"

echo "* Important paths: *"
echo "* Python dir: ${PYTHON_DIR}"
echo "* Python include dirs: ${PYTHON_INCLUDE_DIRS}"
echo "* Python libraries: ${PYTHON_LIBRARIES}"
cd shiboken-build

echo "* configuring Shiboken for build *"
cmake ../shiboken-android -DCMAKE_INSTALL_PREFIX=../stage -DLIB_INSTALL_DIR=../stage -DCMAKE_SYSTEM_PROCESSOR="arm-eabi" -DPYTHON_INCLUDE_DIRS=${PYTHON_INCLUDE_DIRS} -DPYTHON_LIBRARIES= -DBUILD_TESTS="false" -Dandroid="true" -DCMAKE_SYSTEM_NAME="android" -DDISABLE_DOCSTRINGS=1 -DCMAKE_AR=${AR} -DCMAKE_RANLIB=${RANLIB} -DCMAKE_LINKER=${LD}

read -p "* Press any key to start the Shiboken build *" -n1 -s

# build debugging:
#make VERBOSE=1 &> ../shiboken_build_verbose.txt
make -j${BUILD_THREAD_COUNT}
make install
