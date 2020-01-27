#! /bin/bash
#find /root/script -mtime +90 -exec ls -l {} \;
find /root/script -mtime +90 -exec rm -rf {} \;
find /root/script -mtime +90 -exec mv {} {}.old \;
