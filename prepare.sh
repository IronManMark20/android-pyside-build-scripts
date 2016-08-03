#!/bin/bash
echo "= preparing folder for PySide2 for Android build ="
echo "cloning Shiboken from Git"
git clone https://github.com/ethanhs/shiboken2-android.git
echo "switching to known-working commit"
cd android-shiboken2
git checkout 476549cbcc9afaf769f8701c48c666b0946dc741
cd ..

echo "cloning PySide from Git"
git clone https://github.com/ethanhs/pyside2-android.git
echo "switching to known-working commit"
cd android-pyside2
git checkout 1bf68166c2881183fa0ee864679e26684fdd9967
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
