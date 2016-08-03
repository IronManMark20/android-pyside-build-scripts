#!/bin/bash
echo "= preparing folder for PySide for Android build ="
echo "cloning Shiboken from Git"
git clone https://github.com/ethanhs/shiboken2-android.git
echo "switching to known-working commit"
cd android-shiboken2
#git checkout 
cd ..

echo "cloning PySide from Git"
git clone https://github.com/ethanhs/pyside2-android.git
echo "switching to known-working commit"
cd android-pyside2
#git checkout 6109db3afeea91c9404586607de86c670142a0d1
cd ..

echo "creating needed folders"
mkdir "stage"
mkdir "shiboken-build"
mkdir "pyside-build"
echo "folder prepared for build, continue with build.sh"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!! DONT FORGET TO SET THE PATH !!!"
echo "!!! TO NDK in env.sh BEFORE     !!!"
echo "!!! STARTING THE BUILD          !!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
