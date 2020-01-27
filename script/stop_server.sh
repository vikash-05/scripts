#!/bin/bash
status="$(systemctl status httpd | awk 'NR==3{print $2}')"
if [ "${status}" == "active" ]
then
sudo systemctl stop httpd
fi
