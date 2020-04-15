#!/bin/bash

# General Setup
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install python3-pip
sudo apt-get search <package_name>

# Utility to search for a file within packages
sudo apt install apt-file 
sudo apt-file update
# To clear the apt-file cache
sudo apt-file purge

# Remove any previous installations of x264</h3>
sudo apt-get remove x264 libx264-dev
 
# Install dependencies now
sudo apt-get install build-essential checkinstall cmake pkg-config yasm
sudo apt-get install gfortran
sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev
 
# If you are using Ubuntu 16.04
sudo apt-get install libtiff5-dev
 
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt-get install libxine2-dev libv4l-dev
sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
sudo apt-get install qt5-default libgtk2.0-dev libtbb-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install libfaac-dev libmp3lame-dev libtheora-dev
sudo apt-get install libvorbis-dev libxvidcore-dev
sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev
sudo apt-get install x264 v4l-utils
 
# Optional dependencies
sudo apt-get install libprotobuf-dev protobuf-compiler
sudo apt-get install libgoogle-glog-dev libgflags-dev
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen
sudo apt-get install python-dev

# Python Modules
# --no-cache-dir is used to prevent pip3 from looking into its cache

# Upgrade pip and pip3
pip3 install --no-cache-dir --upgrade setuptools
pip3 install --no-cache-dir --upgrade pip
 
pip3 install numpy --no-cache-dir --user
pip3 install python-opencv --no-cache-dir --user
pip3 install --user python2-secrets
pip3 install matplotlib --no-cache-dir --user

# Install C++ Libraries
sudo apt-get install libboost-dev-all
sudo apt-get install libbotan-1.10-1

# Install Mono and Monodevelop IDE for C#
sudo apt-get install mono-devel
sudo apt-get install monodevelop
sudo apt-get install chicken-bin

# Locate a particular library or directory
whereis <directory_name>
locate  <directory-name>


# NOTE:- To install matplotlib 3.0 or higer, you need to have pip version >=9.01 installed


