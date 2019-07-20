#!/bin/bash

// stop all the regular startup!  gotta get control of the networking!!
sudo python ledon.py
sudo systemctl stop raspap.service
sudo systemctl stop hostapd.service
sudo systemctl stop dnsmasq.service
sudo systemctl stop dhcpcd.service
sudo python ledoff.py

# the AP will try to auto start so just keep killing it for now
#sudo /sbin/ip link set wlan0 down
#/bin/sleep 20
#sudo /sbin/ip link set wlan0 down
#/bin/sleep 20
#sudo /sbin/ip link set wlan0 down
#/bin/sleep 20
#sudo /sbin/ip link set wlan0 down
#/bin/sleep 20

/bin/sleep 20

# ok in theory the network AP will be up now so we can start
# stuff that we want to run on the AP IP address !!

# messy but restart the networking in good order!
sudo /etc/raspap/hostapd/servicestart.sh --seconds 2
sudo systemctl restart smbd.service

# start kodi
/usr/bin/kodi &

/bin/sleep 10
sudo python ledon.py
