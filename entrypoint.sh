#!/bin/bash
mkdir -p /root/.vnc/ && \
echo $VNCPWD | vncpasswd -f > /root/.vnc/passwd && \
chmod 600 /root/.vnc/passwd

# Start the VNC server.
export USER=root
vncserver -kill :1
vncserver -nevershared -geometry $VNCRESOLUTION > /var/log/vncserver.log 2>&1 &

# Keep the container running by tailing a log file.
tail -f /dev/null