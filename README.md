# rpi-media-server

helper files to get the media server up and running properly

# Base Install

Latest Raspbian Image

sudo apt-get update

sudo apt-get dist-upgrade

sudo apt-get upgrade

# Kodi
sudo apt-get install kodi

# RaspAP
https://github.com/sunnybank101/raspap-webgui/tree/sunnybank101-multiinterfaces

# FanShim
https://github.com/pimoroni/fanshim-python

# Samba
sudo apt-get install -y samba samba-common

sudo geany /etc/samba/smb.conf    <see the smb.conf file>

# default drive mount setup
mkdir /mnt/MEDIA
chmod 777 /mnt/MEDIA

add the following line to /etc/fstab<br> sudo geany /etc/fstab<br>
LABEL=MEDIA      /mnt/MEDIA ntfs-3g    permissions,defaults,nofail,x-systemd.device-timeout=30        0       2

The main media drive must be labeled "MEDIA" and formatted NTFS<br>
- movies<br>
- music<br>
- pictures<br>
- shared-disk<br>
