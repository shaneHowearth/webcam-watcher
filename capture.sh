#!/bin/bash
now=$(date +"%Y-%d-%m-%H-%M-%S")
mypic="snapshot-$now.jpg"
ffmpeg -f video4linux2 -s 640x480 -i /dev/video0 -ss 0:0:2 -frames 1 $mypic
scp $mypic shanehowearth.com:~/perth
rm $mypic
