#!/bin/env bash

pgrep -x "wf-recorder" && pkill -INT -x wf-recorder && notify-send -e -h string:x-canonical-private-synchronous:record -t 7000 "Screencast" "Stopped casting. Stored at\n~/Videos/$(ls -t ~/Videos | head -1)"  && exit 0

dateTime=$(date +%m-%d-%Y-%H:%M:%S)
notify-send -e -h string:x-canonical-private-synchronous:record -t 2500 "Screencast" "Started casting at\n$dateTime" 
wf-recorder --audio=alsa_output.pci-0000_00_1f.3.analog-stereo.monitor -c h264_vaapi -d /dev/dri/renderD128 -f $HOME/Videos/$dateTime.mp4 

