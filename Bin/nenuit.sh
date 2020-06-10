#!/bin/bash
#set -xv

case $1 in
    matin)
        xrandr --output DP-2-1 --gamma 0.7:0.6:0.7 --brightness 0.5 --output DP-2-2 --gamma 0.7:0.6:0.7 --brightness 0.5 --output DP-2-3 --gamma 0.7:0.6:0.7 --brightness 0.5
        ;;
    nuit)
        xrandr --output DP-2-1 --gamma 0.6:0.5:0.6 --brightness 0.4 --output DP-2-2 --gamma 0.6:0.5:0.6 --brightness 0.4 --output DP-2-3 --gamma 0.6:0.5:0.6 --brightness 0.4
        ;;
    day)
        xrandr --output DP-2-1 --brightness 1 --output DP-2-2 --brightness 1 --output DP-2-3 --brightness 1
        ;;
esac  
