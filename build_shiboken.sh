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
cmake ../shiboken2-android -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=../stage -DLIB_INSTALL_DIR=../stage -DCMAKE_SYSTEM_PROCESSOR="arm-eabi" -DPYTHON_INCLUDE_DIRS=${PYTHON_INCLUDE_DIRS} -DPYTHON_LIBRARIES=${PYTHON_LIBRARIES} -DBUILD_TESTS="false" -Dandroid="true" -DDISABLE_DOCSTRINGS=1 -DCMAKE_AR=${AR} -DCMAKE_RANLIB=${RANLIB} -DCMAKE_LINKER=${LD} -DCMAKE_CXX_COMPILER=${CXX} -DCMAKE_C_COMPILER=${CC} -DPYTHON_VERSION_MAJOR=3 -DPYTHON_VERSION_MINOR=5 -DPYTHON_VERSION_PATCH=1 -DPYTHONINTERP_FOUND=TRUE -DPYTHON_EXECUTABLE=${PYTHON_DIR}/build/12-21-arm-linux-androideabi-4.9/bin/python3

read -p "* Press any key to start the Shiboken build *" -n1 -s

# build debugging:
#make VERBOSE=1 &> ../shiboken_build_verbose.txt
make -j${BUILD_THREAD_COUNT}
make install
