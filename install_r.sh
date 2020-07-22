#!/bin/bash

# Script to install the R programming language

#To install the latest version of R and RStudio, go to https://cran.rstudio.com/bin/linux/ubuntu/README.html
#and add the following entries to the end of your etc/apt/sources.list file, 
#depending on your version of Ubuntu:

#For Ubuntu 16.04, deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran40/
#For Ubuntu 18.04, deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/
#For Ubuntu 20.04, deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/

#If you use Debian instead, go to https://cran.rstudio.com/bin/linux/debian/ to get the appropriate package
#for your version of Debian

#After following the above steps, run this script 

# Update package list
sudo apt-get update

# GNU R statistical computation and graphics system
sudo apt-get install r-base

# GNU R core of statistical computation and graphics system
sudo apt-get install r-base-core

# GNU R debug symbols for statistical comp. language and environment
sudo apt-get install r-base-core-dbg

# GNU R html docs for statistical computing system functions
sudo apt-get install r-base-html

# GNU R package for date handling
sudo apt-get install r-cran-date

# GNU R methods that apply to rows and columns of a matrix
sudo apt-get install r-cran-matrixstats

