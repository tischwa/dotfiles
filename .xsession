#!/bin/sh
setxkbmap -option caps:super
urxvtd -q -f -o
xset dpms 1800 3600 5400 
xset r rate 250 30
xset s off
xsetroot -solid black
awesome

