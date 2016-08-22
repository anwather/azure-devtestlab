#!/bin/bash
#Get OS release if the distribution is Ubuntu
OS=$(lsb_release -si)
ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
VER=$(lsb_release -sr)
if [ $VER = 15.10 ]
        then
            #Use Waagent 2.0 for Ubuntu 15.10 
             nohup sh -c 'sleep 15 && /usr/sbin/waagent2.0 -force -deprovision+user' > /dev/null &
        else 
            nohup sh -c 'sleep 15 && /usr/sbin/waagent -force -deprovision+user' > /dev/null  &
fi
exit 0


