#Note: I am trying to update this for the new PySide2. This is an experiment. You keep the shiny pieces when it breaks.

##ignore everything below here, I will update this if/when I have something working.
A scripts for building PySide for Android
=========================================

prepare.sh - downloads shiboken & pyside sources modified to work on Android
env.sh - sets environmental variables for the build
build_shiboken - erases old Shiboken & Pyside builds and re/builds Shiboken
build_pyside - erases the old PySide build and re/builds PySide
build_all.sh - erases all previous builds and builds Shiboken followed by PySide

Prerequisites
=============
* Android SDK, NDK
* system-wide installed Shiboken2
* system-wide installed Python 3.5
* Python 3.5 compiled for Android (use the Python-3.5.1 branch of [this](https://github.com/GRRedWings/python3-android)

Tested prerequisites
====================

I've successfully built this on:
* 64-bit Ubuntu 16.04
* Android Studio 2.1
* Qt 5.5.1

What to run
===========
First create some empty directory, then the prepare.sh script.
It downloads Shiboken & PySide source code with Android modifications
and creates all folders needed for the build.

Then in env.sh fill in a correct path to the Android NDK folders

then you are ready to run build.sh, which first builds Shiboken2
and then PySide2.

Of course, you can also run the build_shiboken.sh and build_pyside.sh scripts
manually, just always make sure to run the Shiboken one first and then
the PySide one.

Results
=======
The resulting PySide2 libraries are in the stage folder. Enjoy ! :)
Use with [this project template](https://github.com/ethanhs/android-pyside-example-project) to start with your new project.
