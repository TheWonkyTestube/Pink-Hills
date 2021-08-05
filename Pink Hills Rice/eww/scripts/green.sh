#!/bin/sh

usage=$(printf "%.0f\n" $(free -m | grep Mem | awk '{print ($3/$2)}'))
green=$(echo $usage | awk '{out=(255*$1)} END {print out}')
printf -v greenInt %.0f "$green"
echo  $greenInt
