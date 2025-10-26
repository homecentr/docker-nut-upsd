#!/usr/bin/env ash

echo 0 > /var/run/nut/upsd.pid

/usr/sbin/upsdrvctl start
upsd -F