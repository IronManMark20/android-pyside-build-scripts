#!/bin/bash

echo "= PySide Android build script ="

# source the needed environmental variables
source env.sh

# cleanup from any previous build
echo "* cleaning up previous PySide build *"
rm -rf pyside-build/*
#rm -f stage/libpyside.so

cd pyside-build
export LDFLAGS="-L${BUILD_DIR}/stage/lib -L${ANDROID_NDK}/sources/cxx-stl/gnu-libstdc++/4.9/libs/armeabi ${LDFLAGS}"

#SHIBOKEN_LIBRARIES_PATH="${ANDROID_DIR}/stage/lib"
SHIBOKEN_LIB_PATH="${BUILD_DIR}/stage/lib/libshiboken2.cpython-35m.so"
SHIBOKEN_INCLUDES_PATH="${BUILD_DIR}/stage/include/shiboken2"

PYTHON_INCLUDE_DIRS="${PYTHON_DIR}/include/python3.5m"
PYTHON_LIBRARIES="${PYTHON_DIR}/lib"

# add the shiboken lib directory & link manually against libshiboken to get rid of the absolute paths in the resulting DSOs
# and do the same for QtCore
export LDFLAGS="${LDFLAGS} -L${SHIBOKEN_LIB_PATH} -lshiboken2.cpython-35m -lQt5Core"

echo "* Important variables & paths: *"
echo "* LDFLAGS: ${LDFLAGS}"
echo "#####"
echo "* CXXFLAGS: ${CXXFLAGS}"
echo "* Python dir: ${PYTHON_DIR}"

echo "* configuring PySide for build *"
cmake ../pyside2-android -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=../stage -DCMAKE_BUILD_TYPE=MinSizeRel -DENABLE_ICECC=0 -DCMAKE_SYSTEM_PROCESSOR="arm-eabi" -DBUILD_TESTS=false -DCMAKE_INSTALL_PREFIX=../stage -Dandroid="true" -DSHIBOKEN_INCLUDE_DIR="${SHIBOKEN_INCLUDES_PATH}" -DCMAKE_CXX_COMPILER=${CXX} -DCMAKE_C_COMPILER=${CC} -DSHIBOKEN_LIBRARY="${SHIBOKEN_LIB_PATH}" -DPYTHON_INCLUDE_DIRS=${PYTHON_INCLUDE_DIRS} -DCMAKE_CXX_COMPILER=${CXX} -DCMAKE_C_COMPILER=${CC} -DPYTHON_VERSION_MAJOR=3 -DPYTHON_VERSION_MINOR=5 -DPYTHON_VERSION_PATCH=1 -DPYTHONINTERP_FOUND=TRUE -DPYTHON_EXECUTABLE=${PYTHON_DIR}/build/12-21-arm-linux-androideabi-4.9/bin/python3 -DSHIBOKEN_PYTHON_LIBRARIES="${PYTHON_LIBRARY}" -DCMAKE_PREFIX_PATH="${HOME}/Qt5.6.0/5.6/android_armv7/:${BUILD_DIR}"


read -p "* Press any key to start the PySide build *" -n1 -s

make -j${BUILD_THREAD_COUNT}
# build debugging:
#make VERBOSE=1 &> ../pyside_build_verbose.txt

# install to the ../stage prefix
make install
