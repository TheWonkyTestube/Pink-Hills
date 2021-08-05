#!/bin/sh
open=$(~/eww/target/release/eww windows | awk '{print $1}')
barOpen=$(echo ${open:0:3})

if [ $barOpen != "bar" ];
then
  ~/eww/target/release/eww close barLeft
  ~/eww/target/release/eww close barRight
  ~/eww/target/release/eww close barMiddle
fi

if [ $barOpen == "bar" ];
then
  ~/eww/target/release/eww open barLeft
  ~/eww/target/release/eww open barRight
  ~/eww/target/release/eww open barMiddle
fi
