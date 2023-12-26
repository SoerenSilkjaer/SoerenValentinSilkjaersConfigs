#!/bin/bash

ffmpeg -framerate 30 -f video4linux2 -pix_fmt h264 -input_format h264 -video_size 1920x1080 -i /dev/video0 -f alsa -ac 2 -ar 44100 -itsoffset 0.557 -i sysdefault:CARD=CODEC -vcodec copy -acodec libfdk_aac -f flv <RTMP URL> -acodec libfdk_aac -vn -async 2 /usr/output/eurolife_`date +%Y-%m-%d_%H:%M:%S`.aac
