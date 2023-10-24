FROM ubuntu:focal
RUN apt-get update

# Install wget
RUN apt-get -y install wget

# Get Ptolemy II sources
RUN wget https://ptolemy.berkeley.edu/ptolemyII/ptII11.0/ptII11.0.1.src.tar.gz
RUN tar xvfz ptII11.0.1.src.tar.gz

##############################################################################
#                Install needed packages to install Ptolemy II               #
##############################################################################

# Install jdk8
RUN apt-get -y install openjdk-8-jdk

# Prepare to install Cmake
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install build-essential

# Install Cmake 3.37.7
RUN apt-get -y install pip
RUN pip install cmake

##############################################################################
#                Install Ptolemy II               #
##############################################################################
# configure and build with ant
RUN cd ptII11.0.1;export PTII=`pwd`;./configure;$PTII/bin/ant
# launch the Ptolemy GUI: Vergil
CMD cd ptII11.0.1;export PTII=`pwd`;./bin/vergil
