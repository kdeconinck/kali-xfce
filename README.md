# Dockerfile for Kali with XFCE Desktop with VNC support

This repository includes a Dockerfile that creates an image based on **kalilinux/kali-rolling**. The image installs the **XFCE** desktop environment and sets up the **TightVNC Server** for remote desktop access.

## Customization

You can customize the behavior of the VNC server using the following environment variables:
- **VNCPWD**: Set the password for VNC access. *Default value: changeme*
- **VNCRESOLUTION**: Define the resolution for the VNC server. *Default value: 1920x1080*

## Example command

```
docker run --rm -it -p 1000:5901 -d -e VNCRESOLUTION=3440x1440 kali-xfce
```