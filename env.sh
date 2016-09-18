#!/bin/bash


export BUILD_THREAD_COUNT=7
# how many threads to use for the build
# if you get this error:
# "arm-linux-androideabi-g++: Internal error: Killed (program cc1plus)"
# try to set BUILD_THREAD_COUNT to 1



export ANDROID_NDK="${HOME}/python3-android/sdk/android-ndk-r12"
#With Qt5, all of the needed Android related 
export QT_DIR="${HOME}/Qt5.6.0/5.6/android_armv7"

export ANDROID_API_LEVEL="21"
# this specifies the Android API level, 21 corresponds to Android 5.x
# * android API levels are forward compatible
#-> program using API level 21 will work on device running Android with API level >21
#-> program using API level >21 will probably not work on device running Android API level <=21
# for the mapping of Android API levels to version, see:
# http://developer.android.com/guide/topics/manifest/uses-sdk-element.html#ApiLevels

export ANDROID_ARCH="arm"
export ANDROID_PLATFORM_PATH="${ANDROID_NDK}/platforms/android-${ANDROID_API_LEVEL}/arch-${ANDROID_ARCH}"
export BUILD_DIR=`pwd`

# Path to Python compiled for Android
# NOTE: modify this if want to use custom a Python build
export PYTHON_DIR="${HOME}/python3-android/build/12-21-arm-linux-androideabi-4.9"
PYTHON_INCLUDES="-I${PYTHON_DIR}/include/python3.5m"
PYTHON_LIBS="-L${PYTHON_DIR}/lib"
PYTHON_LIBRARY="-l${PYTHON_DIR}/lib/libpython3.5m.so"

# add the stage libs, so that when building PySide, it can find the shiboken library
STAGE_LIBS="-L${BUILD_DIR}/stage/lib"
export PYSIDE2_INCLUDES="-I${BUILD_DIR}/pyside2-android/libpyside"
# add the Android STL to the build parameters
STL_TYPE="gnu-libstdc++" # are the other STL types even usable ?
STL_PATH="${ANDROID_NDK}/sources/cxx-stl/${STL_TYPE}"
STL_INCLUDES="-I${STL_PATH}/4.9/include -I${STL_PATH}/4.9/libs/armeabi/include"
STL_RAW_INCLUDES="${STL_PATH}/4.9/include:${STL_PATH}/4.9/libs/armeabi/include"
STL_LIBS="-L${STL_PATH}/4.9/libs/armeabi"

# make sure ctypes are included
CTYPE_INCLUDES="-I${ANDROID_PLATFORM_PATH}/usr/include"
CTYPE_INCLUDES_RAW="${ANDROID_PLATFORM_PATH}/usr/include"
ANDROID_INCLUDES="${ANDROID_PLATFORM_PATH}/usr/include:${STL_RAW_INCLUDES}"
ANDROID_SYSROOT="${ANDROID_PLATFORM_PATH}"

export MAKEFLAGS="-I${ANDROID_INCLUDES}"
export INCLUDE="-I${ANDROID_NDK}/platforms/android-21/arch-arm/usr/include"
export C_INCLUDE_PATH=${ANDROID_INCLUDES}
export CPLUS_INCLUDE_PATH=${ANDROID_INCLUDES}

ANDROID_BIN="${ANDROID_NDK}/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin"

export PATH="${ANDROID_BIN}:${ANDROID_NDK}:${ANDROID_NDK}/tools:$PATH"
export PATH="${QT_DIR}/bin:$PATH"
export ARCH="armeabi"
export CFLAGS="-DANDROID -mandroid -fomit-frame-pointer -pipe --sysroot ${ANDROID_SYSROOT}"
SHIBOKEN_INCLUDE="-I${BUILD_DIR}/stage/include/shiboken"
export CXXFLAGS="${CTYPE_INCLUDES} ${CFLAGS} ${STL_LIBS} ${STL_INCLUDES} ${CTYPE_INCLUDES} ${SHIBOKEN_INCLUDE} ${PYTHON_INCLUDES} ${STAGE_LIBS} ${INCLUDE} ${PYSIDE2_INCLUDES} -fPIC -fvisibility=hidden -Wno-strict-aliasing -rdynamic"

export ANDROID_LIB="-L${ANDROID_NDK}/platforms/android-21/arch-arm/usr/lib"f

#add paths to various tools used, and 
export LDFLAGS="${PYTHON_LIBS} -shared -Wno-strict-aliasing -Wl,-O1 -Wl,-z,noexecstack -Wl,-shared,-Bsymbolic -Wl,--no-whole-archive -L${QT_DIR}/lib -lQt5Core -lpython3.5m -lstdc++ -lsupc++ -lgcc -llog -lz -lm -ldl -lc --sysroot ${ANDROID_SYSROOT}"
export CC="${ANDROID_BIN}/arm-linux-androideabi-gcc"
export CXX="${ANDROID_BIN}/arm-linux-androideabi-g++"
export AR="${ANDROID_BIN}/arm-linux-androideabi-ar"
export RANLIB="${ANDROID_BIN}/arm-linux-androideabi-ranlib"
export LD="${ANDROID_BIN}/arm-linux-androideabi-ld"
export STRIP="${ANDROID_BIN}/arm-linux-androideabi-strip --strip-unneeded"
echo ${PYTHON_LIBS}
#unset CPLUS_INCLUDE_PATH
#unset C_INCLUDE_PATH
