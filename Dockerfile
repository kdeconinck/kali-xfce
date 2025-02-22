# The image is based on Kali's official Docker image.
FROM kalilinux/kali-rolling:latest

# Define the environment variables that can be used in the Docker image.
# VNCPWD: The password that will be used by VNC.
# VNCRESOLUTION: The resolution to use for the VNC server.
ENV VNCPWD=changeme
ENV VNCRESOLUTION=1920x1080

# Install the required packages.
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y kali-desktop-xfce tightvncserver

# Set the password of the VNC server.
RUN mkdir -p /root/.vnc/ && \
    echo $VNCPWD | vncpasswd -f > /root/.vnc/passwd && \
    chmod 600 /root/.vnc/passwd

# Copy the file to start a VNC server and make it executable.
COPY run.sh ./run.sh
RUN chmod +x ./run.sh

# Copy the "endpoint.sh" script and execute it.
CMD ["sleep", "infinity"]