#!/bin/bash
# vikas
# Description Backup /var filesystem


tar cvf /tmp/backup.tar /etc

gzip /tmp/backup.tar

find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
         then
         echo backup was created
         echo
         echo Archiving Backup
         #scp /tmp/backup.tar.gz root/192.168.0.1"/path
         else
         echo backup failed
fi
