#!/bin/bash

# Stop all the regular network startup - trust me it'll make a mess of it!
sudo python ledon.py
sudo systemctl stop raspap.service
sudo systemctl stop hostapd.service
sudo systemctl stop dnsmasq.service
sudo systemctl stop dhcpcd.service
sudo python ledoff.py

# Hang around for a while to allow everything to stabilize
/bin/sleep 20

# Restart the networking in good order!
sudo /etc/raspap/hostapd/servicestart.sh --seconds 2

# Now the AP is up properly - attatch everthing to the AP IP address

# Start the Samba shares 
sudo systemctl restart smbd.service

# Start kodi
/usr/bin/kodi &

# Done - turn the status led on
/bin/sleep 10
sudo python ledon.py
