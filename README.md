# Docker-Application-Base
Creates a Docker base image with the required gui and audio packages that can be used to build other images off of for graphical docker images

# To build
docker build -t applicationbase:{Version Number You Want} {Path of the Docker File} --no-cache

*The Dockerfile and the install.sh files need to be in the same folder

# To use with other images
To run other docker images after building off this image add the following line to either the run command or dockercompose.yml:

    --env PULSE_SERVER=unix:/tmp/pulseaudio.socket \
    --env PULSE_COOKIE=/tmp/pulseaudio.cookie \
    --volume /tmp/pulseaudio.socket:/tmp/pulseaudio.socket \
    --volume /tmp/pulseaudio.client.conf:/etc/pulse/client.conf \
    -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  \

# To expand the base packages
Add the related OS commands(s) to the install.sh file

Add the related Docker commands to the Dockerfile

# Notes:
The update(S) will NOT update to all containers built before the update(s)
