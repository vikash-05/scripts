#! /bin/bash

ping -c2 10.0.0.9
        if [ $? -eq 0 ]
        then
        echo ok
        else
        echo Not ok
        fi

------------------------------------------------------------------------

#! /bin/bash

host=/root/script/hosts
for  ip in $(cat $host)

do
ping -c2 $ip &> /dev/null
        if [ $? -eq 0 ]
        then
        echo $ip is ok
        else
        echo $ip is Not ok
        fi
done

----------------------------------------------------------------------
old file check command (90 days)
find /root/script -mtime +90 -exec ls -l {} \;

create file on old days command
touch -d "Mon, 1 march 2019 12:30:00" a      
