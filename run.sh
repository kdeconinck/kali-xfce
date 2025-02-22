#!/bin/bash
export USER=root
vncserver -kill :1
rm -rf /tmp/.X1-lock /tmp/.X11-unix/X1
vncserver -nevershared -geometry $VNCRESOLUTION > /var/log/vncserver.log 2>&1