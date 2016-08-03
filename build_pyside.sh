#!/bin/bash

echo "= PySide Android build script ="

# source the needed environmental variables
source env.sh

# cleanup from any previous build
echo "* cleaning up previous PySide build *"
rm -rf pyside-build/*
rm -f stage/libpyside.so

cd pyside-build

#SHIBOKEN_LIBRARIES_PATH="${ANDROID_DIR}/stage/lib"
SHIBOKEN_LIB_PATH="${BUILD_DIR}/stage/lib/libshiboken.so"
SHIBOKEN_INCLUDES_PATH="${BUILD_DIR}/stage/include/shiboken"

# add the shiboken lib directory & link manually against libshiboken to get rid of the absolute paths in the resulting DSOs
# and do the same for QtCore
export LDFLAGS="${LDFLAGS} -L${SHIBOKEN_LIB_PATH} -lshiboken -lQtCore"

echo "* Important variables & paths: *"
echo "* LDFLAGS: ${LDFLAGS}"
echo "#####"
echo "* CXXFLAGS: ${CXXFLAGS}"
echo "* Python dir: ${PYTHON_DIR}"

echo "* configuring PySide for build *"
cmake ../pyside-android -DCMAKE_INSTALL_PREFIX=../stage -DCMAKE_BUILD_TYPE=MinSizeRel -DENABLE_ICECC=0 -DCMAKE_SYSTEM_NAME="android" -DCMAKE_SYSTEM_PROCESSOR="arm-eabi" -DBUILD_TESTS=false -DCMAKE_INSTALL_PREFIX=../stage -Dandroid="true" -DSHIBOKEN_INCLUDE_DIR="${SHIBOKEN_INCLUDES_PATH}" -DSHIBOKEN_LIBRARY="${SHIBOKEN_LIB_PATH}" -DSHIBOKEN_PYTHON_LIBRARIES="${PYTHON_LIBRARY}"

# fix PySide paths
#
# Due to missing SONAME in the Necessitas Qt libraries, CMAKE hardcodes the full
# local path to the libraries to the build files, which results in PySide libraries
# containing absolute paths that don't work once deployed to an Android device
# I haven't found any other way how to solve this than to just split the paths
# in the CMAKE generated build files with sed before starting the build

cd ..
#bash fix_pyside_cmake_paths.sh
cd pyside-build

read -p "* Press any key to start the PySide build *" -n1 -s

make -j${BUILD_THREAD_COUNT}
# build debugging:
#make VERBOSE=1 &> ../pyside_build_verbose.txt

# install to the ../stage prefix
make install
