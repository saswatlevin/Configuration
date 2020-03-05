#Developer's tools
!apt-get -y install yasm

#Image I/O Libs

#To install libjasper-dev
#echo "deb http://us.archive.ubuntu.com/ubuntu/ yakkety universe" | sudo tee -a /etc/apt/sources.list
!sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
!sudo apt-get update
!sudo apt-get install libjasper1
!sudo apt-get install libjasper-dev
#NOTE:- libjasper1 isn't mentioned in the github page

!sudo apt-get install -y libpng12-dev

#Video Libs - FFMPEG, GSTREAMER, x264 and so on.
!sudo apt-get install libgstreamer1.0-dev
!sudo apt-get install libgstreamer-plugins-base1.0-dev
!sudo apt-get install libxvidcore-dev x264
!sudo apt-get install libx264-dev
!sudo apt-get install libfaac-dev
!sudo apt-get install libmp3lame-dev
!sudo apt-get install libtheora-dev
#NOTE:- For the libgstreamer and libgstreamer-plugins-base packkages, version 1.0 instead of version 0.10 as mentioned on github page 

#Cameras programming interface libs
!sudo apt-get install libxine2-dev
#NOTE:-libxine2-dev is being instead of libxine-dev as mentioned in the github page
!sudo apt-get install libv4l-dev
!sudo apt-get install v4l-utils

#GTK lib for the graphical user functionalites coming from OpenCV highghui module
!sudo apt-get install libgtk-3-dev

#Python libraries for python2 and python3:
!sudo apt-get install python-pip
!sudo apt-get install python3-pip
!sudo -H pip2 install -U pip numpy
#NOTE:- pip2 numpy is already installed, but if the above command is run, it will be supplanted by a newer version
!sudo -H pip3 install -U pip numpy
#NOTE:- pip3 numpy is already installed, but if the above command is run, it will be supplanted by a newer version

#Parallelism library C++ for CPU
!sudo apt-get install libtbb-dev

#Optional libraries:
!sudo apt-get install libprotobuf-dev
!sudo apt-get install libgoogle-glog-dev
!sudo apt-get install libgphoto2-dev
!sudo apt-get install libeigen3-dev
!sudo apt-get install doxygen

#We will now proceed with the installation (see the Qt flag that is disabled to do not have conflicts with Qt5.0).
!git clone https://github.com/opencv/opencv.git
cd opencv
!git checkout 3.4.1
cd ..
!git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
!git checkout 3.4.1
cd ..
cd opencv
!mkdir build
cd build
!cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D WITH_CUDA=ON -D WITH_TBB=ON -D ENABLE_FAST_MATH=1 -D CUDA_FAST_MATH=1 -D WITH_CUBLAS=1 -D WITH_QT=OFF  -DBUILD_opencv_cudacodec=OFF -DENABLE_PRECOMPILED_HEADERS=OFF ..
!make -j 2 
!sudo make install 
