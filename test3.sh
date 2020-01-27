#!/bin/bash
echo
echo please chose one of the options below
echo
echo 'a = display Date and Time'
echo 'b = list file and dir'
echo 'c = list users logged in'
echo 'd = check system uptime'
echo


         read choices

         case $choices in

a) date;;
b) ls;;
c) who;;
d) uptime;;
*) echo Invalid choice - Bye
