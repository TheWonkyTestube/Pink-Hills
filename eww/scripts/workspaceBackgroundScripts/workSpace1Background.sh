#!/bin/sh
desktops=$(wmctrl -d | awk '{print $2}')
thisDesktopLong=$(echo ${desktops:0:1})
thisDesktop=$(echo ${thisDesktopLong:0:1})
if [ $thisDesktop != "-" ];
then
  echo "#e6cbcd"
fi
