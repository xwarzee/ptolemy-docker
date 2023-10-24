# ptolemy-docker
Ptolemy II from UC Berkeley, https://ptolemy.berkeley.edu,  as a Docker Image published on the Docker Hub.

Usage:

Host machine:

* get your IP address
* authorize to use your screen : xhost +$IP
* launch the following docker command : docker run  -e DISPLAY=$IP:0 -e XAUTHORITY=/.Xauthority --net host -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/.Xauthority:/.Xauthority **xwarzee/ptolemy-docker:latest**
