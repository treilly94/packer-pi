#!/bin/sh
cpu=$(cat /sys/class/thermal/thermal_zone0/temp)
echo $((cpu/1000))
