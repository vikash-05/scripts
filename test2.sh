#!/bin/bash
echo
echo "What is your name?"
echo
read a
echo
echo Hello $a sir
echo
echo "Do you like working in IT? (y/n)"
read Like
echo
if ["$Like" == y ]
  then
     echo you are cool

else ["$Like" ==n ]
    echo you should try IT, it's a good field
echo
fi
